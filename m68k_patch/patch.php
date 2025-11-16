<?php

if ($argc < 2) die("where is the dumped tbxi you are patching?\n");

// nk v1
$filename = sprintf("%s%sMacROM.src%sMac68KROM.src%sMainCode",
	$argv[1], DIRECTORY_SEPARATOR, DIRECTORY_SEPARATOR, DIRECTORY_SEPARATOR
);

if (!file_exists($filename)) {
	// nk v2
	$filename = sprintf("%s%sParcels.src%sMacROM.src%sMac68KROM.src%sMainCode",
		$argv[1], DIRECTORY_SEPARATOR, DIRECTORY_SEPARATOR, DIRECTORY_SEPARATOR, DIRECTORY_SEPARATOR
	);
	if (!file_exists($filename)) die("where is the dumped tbxi you are patching?\n");
}

$maincode = file_get_contents($filename);
if (strlen($maincode) == 0) die("could not get main 68k part\n");

// get the syscall table offset
$table = @end(unpack('N', substr($maincode, 0x22, 4)));
$type = 0;
$ppcTrap = @end(unpack('N', substr($maincode, $table + (0x400 + 0xdd) * 4, 4)));
if ($ppcTrap != 0) die("no patches needed\n");
$sndDisposeChannel = @end(unpack('N', substr($maincode, $table + 4, 4)));
if ($sndDisposeChannel == 0) {
	$pack15 = @end(unpack('N', substr($maincode, $table + (0x30 * 4), 4)));
	if ($pack15 != 0) $type = 1;
	else $type = 2;
}
printf("using type %d patches\n", $type);
if ($type == 0) $asmFile = "patch.asm";
else $asmFile = sprintf("patch%d.asm", $type + 1);
file_put_contents("org.asm", sprintf("\torg $%08x\n", 0xffc00000 + strlen($maincode)));
$vasm = glob("vasmm68k_mot*");
if (count($vasm) == 0) die("could not find vasmm68k_mot_*\n");
$vasm = @end($vasm);
$vasm = sprintf(".%s%s", DIRECTORY_SEPARATOR, $vasm);
system(sprintf("%s -Fbin -m68040 -o patch.bin %s", $vasm, $asmFile));


$ppc = file_get_contents("patch.bin");
$offset = substr($ppc, -4);
$ppc = substr($ppc, 0, -4);

// get the syscall table offset
$table = @end(unpack('N', substr($maincode, 0x22, 4)));
// replace the traps with our code
{
	$trapOffs = [
		$table + (0x400 + 0xdd) * 4, // program-to-program communications
		$table + (0x2b) * 4, // Pack9 (PPC browser)
		// -- type0-1 cutoff --
		$table + (1) * 4, // SndDisposeChannel
		$table + (2) * 4, // SndAddModifier
		$table + (3) * 4, // SndDoCommand
		$table + (4) * 4, // SndDoImmediate
		$table + (5) * 4, // SndPlay
		$table + (6) * 4, // SndControl
		$table + (7) * 4, // SndNewChannel
		$table + (0x1c8) * 4, // SysBeep
		$table + (0x400 + 0xb8) * 4, // vSoundDead
		$table + (0x400 + 0x8b) * 4, // CommToolboxDispatch
		$table + (0x16) * 4, // Pack8
		// -- type1-2 cutoff --
		$table + (0x30) * 4, // Pack15
		$table + (0x254) * 4, // TextServicesDispatch
		$table + (0x3c9) * 4, // IconDispatch
		$table + (0x400 + 0x53) * 4, // ClkNoMem
	];
	
	$ourOffs = [];
	$offset = @end(unpack('N', $offset));
	$offset /= 4;
	$offsets = substr($ppc, -($offset * 4));
	$ppc = substr($ppc, 0, -($offset * 4));
	for ($i = 0; $i < $offset; $i++) {
		$thisOff = substr($offsets, $i * 4, 4);
		if (strlen($thisOff) < 4) die("wtf");
		$maincode =
			substr($maincode, 0, $trapOffs[$i]) .
			$thisOff .
			substr($maincode, $trapOffs[$i] + 4);
	}
}
if ($type != 0) {
	// next set: patches in a single function table
	// last u32 is count;
	// preceded by count entries of u16 table_addr ; char offset[2] ; u32 addr
	$offset = substr($ppc, -4);
	$ppc = substr($ppc, 0, -4);
	$offset = @end(unpack('N', $offset));
	$offsets = substr($ppc, -($offset * 8));
	$ppc = substr($ppc, 0, -($offset * 8));
	for ($i = 0; $i < $offset; $i++) {
		$entry = substr($offsets, $i * 8, 8);
		$addr = substr($entry, 0, 2);
		$tableOff = hexdec(substr($entry, 2, 2));
		$funcPtr = substr($entry, 4, 4);
		// find the code setting the table
		$tableSet = strpos($maincode, "\x21\xc8" . $addr . "\x4e\x75");
		if ($tableSet === false) {
			$addr = @end(unpack('n', $addr));
			die(sprintf("could not find tableset func for %04x\n", $addr));
		}
		$tableSet -= 2;
		$tableOffsetFromSet = @end(unpack('n', substr($maincode, $tableSet, 2)));
		$tableSet += $tableOffsetFromSet;
		$tableSet += $tableOff;
		$maincode =
			substr($maincode, 0, $tableSet) .
			$funcPtr .
			substr($maincode, $tableSet + 4);
	}
	
	// next set: relocation of tables with functions removed
	//printf("%08x\n", strlen($ppc));
	$offset = substr($ppc, -4);
	$ppc = substr($ppc, 0, -4);
	$offset = @end(unpack('N', $offset));
	if ($offset > 0) {
		$offsets = substr($ppc, -($offset * 8));
		$ppc = substr($ppc, 0, -($offset * 8));
	}
	for ($i = 0; $i < $offset; $i++) {
		$entry = substr($offsets, $i * 8, 8);
		$addr = substr($entry, 0, 2);
		$tableLen = substr($entry, 2, 2);
		$tableLen = @end(unpack('n', $tableLen));
		$tablePtr = substr($entry, 4, 4);
		$tablePtrI = @end(unpack('N', $tablePtr));
		//printf("%08x\n", $tablePtrI);
		$tablePtrO = $tablePtrI - 0xffc00000 - strlen($maincode);
		//printf("%08x\n", $tablePtrO);
		// find the code setting the table
		$tableSet = strpos($maincode, "\x21\xc8" . $addr . "\x4e\x75");
		if ($tableSet === false) {
			$addr = @end(unpack('n', $addr));
			die(sprintf("could not find tableset func for %04x\n", $addr));
		}
		$tableOffsetFromSet = @end(unpack('n', substr($maincode, $tableSet - 2, 2)));
		$tableOffset = $tableOffsetFromSet + $tableSet - 2;
		// copy whole existing part of table over ours
		$ppc = substr($ppc, 0, $tablePtrO) .
			substr($maincode, $tableOffset, $tableLen) .
			substr($ppc, $tablePtrO + $tableLen);
		// get the difference between the two tables
		$tableOffDiff = ($tablePtrI - 0xffc00000) - $tableOffset;
		$tblO2NB = pack('N', $tableOffDiff);
		$tableSettingCode = 
			"\xd1\xfc" . $tblO2NB . // add.l diff, a0
			"\x21\xc8" . $addr . 	// move.l a0,(imm)
			"\x4e\x75"; 		// rts
		// write it in
		$maincode =
			substr($maincode, 0, $tableSet) .
			$tableSettingCode .
			substr($maincode, $tableSet + strlen($tableSettingCode));
	}
	
	// last set: unusual patches needing ther own handling
	// hook to bring back a removed ptr-init function
	//printf("%08x\n", strlen($ppc));
	$offset = substr($ppc, -4);
	$ppc = substr($ppc, 0, -4);
	$offset = @end(unpack('N', $offset));
	{
		// find the place to patch
		$patchLoc = strpos($maincode,
			"\x20\x78\x02\xa6\x20\x50\xd1\xfc\x00\x02\x00\x00\xa0\x57"
		);
		if ($patchLoc === false) die("could not find hookloc1 to patch\n");
		$patchLoc -= 4;
		// get the original func offset
		$origFunc = @end(unpack('N', substr($maincode, $patchLoc, 4)));
		$origFunc += $patchLoc;

		// patch our code to call it
		$ourOff = $offset - 0xffc00000;
		$ourOffPart = $ourOff - strlen($maincode);
		$jumpOff = $origFunc - ($ourOff + 2);
		$jumpOff &= 0xFFFFFFFF;
		//printf("%08x %08x %08x %08x\n", $offset, $origFunc, $ourOff, $jumpOff);
		$ppc =
			substr($ppc, 0, $ourOffPart + 2) .
			pack("N", $jumpOff) .
			substr($ppc, $ourOffPart + 6);
		// type 2 needs an extra patch to fix up the tables
/*
		if ($type == 2) {
			// find the function that writes out all the tables
			$offTbl = strpos($maincode, "\x41\xF8\x01\x00\x43\xF8\x28\x00");
			if ($offTbl === false) die("could not find pattern\n");
			$offTbl += 8 + 4 + 2;
			$call = @end(unpack('N', substr($maincode, $offTbl, 4)));
			$offTbl += $call;
			$ourOffPart += 6;
			$jumpOff = $offTbl - ($ourOff + 2 + 6);
			$jumpOff &= 0xFFFFFFFF;
			$ppc =
				substr($ppc, 0, $ourOffPart + 2) .
				pack("N", $jumpOff) .
				substr($ppc, $ourOffPart + 6);
		}
*/
		// patch the existing jump to call our code
		$jumpOff = $ourOff - $patchLoc;
		$jumpOff &= 0xFFFFFFFF;
		//printf("%08x %08x %08x\n", $ourOff, $patchLoc, $jumpOff);
		$maincode =
			substr($maincode, 0, $patchLoc) .
			pack("N", $jumpOff) .
			substr($maincode, $patchLoc + 4);
	}
/*
	// type2: hooking the interrupt handler code
	if ($type == 2) {
		$offset = substr($ppc, -4);
		$ppc = substr($ppc, 0, -4);
		$offset = @end(unpack('N', $offset));
		
		// find the place to patch
		$patchLoc = strpos($maincode,
			"\x23\x80\x3d\x20\x20\x08"
		);
		if ($patchLoc === false) die("could not find hookloc2 to patch\n");
		
		$ourOff = $offset - 0xffc00000;
		$ourOffPart = $ourOff - strlen($maincode);
		
		// find the function that writes out table 0x44
		//$offTbl = strpos($maincode, "\x41\xF8\x01\x00\x43\xF8\x28\x00");
		$offTbl = strpos($maincode, "\x21\xc8\x20\x44\x4e\x75");
		if ($offTbl === false) die("could not find pattern\n");
		//$offTbl += 8 + 4 + 2;
		$offTbl -= 4;
		//$call = @end(unpack('N', substr($maincode, $offTbl, 4)));
		//$offTbl += $call;
		// patch our code to call it
		$jumpOff = $offTbl - ($ourOff + 2);
		$jumpOff &= 0xFFFFFFFF;
		$ppc =
			substr($ppc, 0, $ourOffPart + 2) .
			pack("N", $jumpOff) .
			substr($ppc, $ourOffPart + 6);
		// patch our code to jump to next insn
		$jumpOff = ($patchLoc + 6) - ($ourOff + 6 + 6 + 2);
		$jumpOff &= 0xFFFFFFFF;
		$ppc =
			substr($ppc, 0, $ourOffPart + 6 + 6 + 2) .
			pack("N", $jumpOff) .
			substr($ppc, $ourOffPart + 6 + 6 + 6);
		// patch the existing jump to call our code
		$ourOff = $offset - 0xffc00000;
		$ourOffPart = $ourOff - strlen($maincode);
		$jumpOff = $ourOff - ($patchLoc + 2);
		$jumpOff &= 0xFFFFFFFF;
		$maincode =
			substr($maincode, 0, $patchLoc) .
			"\x60\xff" . pack("N", $jumpOff) .
			substr($maincode, $patchLoc + 6);
	}
*/
}
// add our code onto the end
$ourOff = strlen($maincode);
$maincode .= $ppc;
// find the function that writes out all the tables
$offset = strpos($maincode, "\x41\xF8\x01\x00\x43\xF8\x28\x00");
if ($offset === false) die("could not find pattern\n");
$offset += 8 + 4 + 2;
$call = @end(unpack('N', substr($maincode, $offset, 4)));
$offset += $call;
// find the next return
$offset2 = strpos($maincode, "\x4e\x75", $offset);
if ($offset2 === false) die("could not find return\n");
$next32 = @end(unpack('N', substr($maincode, $offset2 + 2, 4)));
if ($next32 != 0) die("table init function has no space after return\n");
// calculate the jump offset
$jumpOff = $ourOff - ($offset2 + 2);
// write out the jump
$jump = "\x60\xff" . pack('N', $jumpOff);
$maincode =
	substr($maincode, 0, $offset2) .
	$jump .
	substr($maincode, $offset2 + strlen($jump));
// write it out
file_put_contents($filename, $maincode);