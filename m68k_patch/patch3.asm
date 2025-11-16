	; This patchset is for the last tbxi image.
	; Additional stuff removed:
	; 2010->6c (was no-op,  now bad trap)
	; table 2034
	; table 2038
	; table 2078
	; traps removed:
	; toolbox: 30, 254, 3c9
	; os: 53
	include "org.asm"
	
	include "traps.asm"

set_tables:
	bsr set_table_1c
	bsr set_table_34
	bsr set_table_38
	bsr set_ppc_table ; table 50
	bsr set_table_5c
	bsr set_table_70
	bra set_table_78
dummy_rts_for_no_op:
	rts

	include "table_1c/set_table.asm"
	include "table_34/set_table.asm"
	include "table_38/set_table.asm"
	include "set_ppc_table.asm"
	include "table_5c/set_table.asm"
	include "table_70/set_table.asm"
	include "table_78/set_table.asm"

	; inlining this here (it's a no-op impl, return addr in a5)
loc_FFC0A78C:
	jmp (a5)
	nop ; for alignment


	include "table_70/sub_ffc0a8c0.asm"
	include "table_extras/code.asm" ; ffc13090-ffc1336c
	include "table_5c/code.asm" ; ffc20090-ffc2043c
	include "table_extras/AEInstallCoercionHandler.asm" ; ffc388b0
	include "table_1c/code.asm" ; ffc3ed40-ffc3f380
	include "ppc_modules.asm" ; ffc3fa90-ffc36d5a
	include "table_34/code.asm" ; ffc5b760-ffc5bb40
	include "table_70/code.asm" ; ffc5bb50-ffc627d0
	include "table_38/code.asm" ; ffc638f0-ffc665d0
	include "table_78/code2.asm"; ffc679d0-ffc679e6
	include "table_44/code.asm" ; ffc79750-ffc7a0e0
	include "table_78/code.asm" ; ffcafe80-ffcb3a04

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
	include "table_34/table.asm"
	include "table_38/table.asm"
	include "table_44/table.asm"
	include "ppc_table.asm"
	include "table_5c/table.asm"
	include "table_70/table.asm"
	include "table_78/table.asm"

unk_FFCC9C0E:           dc.b 4,'.MPP', 0           ; DATA XREF: sub_FFCC9D00+2C↓o
	dc.b 0,0

	include "table_1c/table_version.asm"
	include "table_34/table_version.asm"
	include "table_38/table_version.asm"
	include "ppc_table_version.asm"
	include "table_5c/table_version.asm"
	include "table_70/table_version.asm"
	include "table_78/table_version.asm"

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
	dc.w $2010
	dc.b '6c'
	dc.l dummy_rts_for_no_op
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
; table_34
	dc.l loc_FFC5B7B0-$FFC00000 ; Pack15 30
; table 78
	dc.l loc_FFCAFE80-$FFC00000 ; TextServicesDispatch 254
; table 38
	dc.l loc_FFC638F0-$FFC00000 ; IconDispatch 3c9
; no-op
	dc.l loc_FFC0A78C-$FFC00000 ; ClkNoMem os 53
trap_entry_end:
	dc.l trap_entry_end-trap_entry_start ; length
