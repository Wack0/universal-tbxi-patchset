	; This patchset is for the first NKv2 tbxi images.
	; Stuff removed from last NKv1 (1.7.1):
	; table 201c
	; table 205c
	; table 2070
	; table 2080
	
	; table 2010 func +cc
	; table 2044 had funcs removed from the end
	
	; traps removed:
	; 1-7, 16, 1c8
	; os: 58-5a, 8b, 93, b8
	
	; 2080 / traps 58-5a/os93 are time manager - this got reimplemented ppc...

	include "org.asm"
	
	include "traps.asm"

set_tables:
	bsr set_table_1c
	bsr set_ppc_table
	bsr set_table_5c
	bra set_table_70


	include "table_1c/set_table.asm"
	include "set_ppc_table.asm"
	include "table_5c/set_table.asm"
	include "table_70/set_table.asm"

	include "table_70/sub_ffc0a8c0.asm"
	include "table_extras/code.asm" ; ffc13090-ffc1336c
	include "table_5c/code.asm" ; ffc20090-ffc2043c
	include "table_extras/AEInstallCoercionHandler.asm" ; ffc388b0
	include "table_1c/code.asm" ; ffc3ed40-ffc3f380
	include "ppc_modules.asm" ; ffc3fa90-ffc36d5a
	include "table_70/code.asm" ; ffc5bb50-ffc627d0
	include "table_44/code.asm" ; ffc79750-ffc7a0e0

	include "get_handle_size.asm" ; ffcc9520
	include "open_something.asm" ; ffcc9530
	include "case_sensitive_equal_string.asm" ; ffcc95a0
	include "hand_to_hand.asm" ; ffcc97b0
	include "get_string_resource.asm" ; ffcc9880
	include "copy_something.asm" ; ffcc9af0
	include "MPPCtlCall.asm" ; ffcc99ae
	include "open_from_c_maybe.asm" ; ffcc9cb0
	include "get_b9e.asm" ; ffcc9dd0
	include "ppc0d.asm" ; ffcc9de0
	include "comm_toolbox_dispatch.asm" ; ffcc9df0
	include "c2pstr.asm" ; ffcc9ec0
	include "memcmp.asm" ; ffcc9f20
	include "memset.asm" ; ffcc9fc0
	include "pack_4.asm" ; ffcca1b0

	include "table_1c/table.asm"
	include "table_44/table.asm"
	include "ppc_table.asm"
	include "table_5c/table.asm"
	include "table_70/table.asm"

unk_FFCC9C0E:           dc.b 4,'.MPP', 0           ; DATA XREF: sub_FFCC9D00+2C↓o
	dc.b 0,0

	include "table_1c/table_version.asm"
	include "ppc_table_version.asm"
	include "table_5c/table_version.asm"
	include "table_70/table_version.asm"

	; Additional weirdness (comes last in the footer when reading backwards)
	dc.l sub_FFC79750 ; 2b6->240 init function removed between 9.0 and 9.0.4
	; Existing table relocation patches
table_reloc_start:
	dc.w $2044, $80
	dc.l table_44
table_reloc_end:
	dc.l (table_reloc_end-table_reloc_start)/8 ; count
	; Existing table single function patches
single_function_start:
	dc.w $2010
	dc.b 'cc'
	dc.l sub_FFC13090
single_function_end:
	dc.l (single_function_end-single_function_start)/8 ; count
	; Placeholder trap entry point.
trap_entry_start:
	dc.l sub_FFC2FF80-$FFC00000 ; PPC trap
	dc.l loc_FFC35EA0-$FFC00000 ; _Pack9 (PPC browser) 2b
; sound traps
	dc.l sub_FFC5C0FC-$FFC00000 ; SndDisposeChannel 1
	dc.l sub_FFC5C15A-$FFC00000 ; SndAddModifier 2
	dc.l sub_FFC5C2E0-$FFC00000 ; SndDoCommand 3
	dc.l sub_FFC5C338-$FFC00000 ; SndDoImmediate 4
	dc.l sub_FFC5C276-$FFC00000 ; SndPlay 5
	dc.l sub_FFC5C3EC-$FFC00000 ; SndControl 6
	dc.l sub_FFC5BF94-$FFC00000 ; SndNewChannel 7
	dc.l sub_FFC5BD4E-$FFC00000 ; SysBeep 1c8
	dc.l sub_FFC5C48C-$FFC00000 ; vSoundDead os b8
; serial traps
	dc.l sub_FFC3ED40-$FFC00000 ; CommToolboxDispatch os 8b
; table_extras
	dc.l loc_FFC388B0-$FFC00000 ; Pack8 16
trap_entry_end:
	dc.l trap_entry_end-trap_entry_start ; length
