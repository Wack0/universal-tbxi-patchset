; =============== S U B R O U T I N E =======================================


sub_FFC2FA90:                           ; DATA XREF: ROM:FFC06D84↑o
                jsr     sub_FFC30098
                lea     sub_FFC309A8(pc),a0
                move.l  #'ppc ',d0
                _NewGestalt
                pea     sub_FFC30A8A(pc)
                move.w  #1,-(sp)
                move.w  #3,-(sp)
                _ShutDown
                rts
; End of function sub_FFC2FA90

; ---------------------------------------------------------------------------
                movea.l ($2050).w,a1
                movea.l $154(a1),a1
                jmp     (a1)
; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================


sub_FFC2FAC0:                           ; DATA XREF: ROM:FFC06D88↑o

arg_0           =  4

                movea.l ($2B6).w,a1
                moveq   #$18,d0
                _NewPtrSysClear
                move.l  a0,$148(a1)
                move.l  arg_0(sp),d0
                _NewPtrSysClear
                move.l  a0,$7C(a1)
                move.l  a0,d0
                rts
; End of function sub_FFC2FAC0


; =============== S U B R O U T I N E =======================================


sub_FFC2FADA:                           ; CODE XREF: sub_FFC30000+C↓p
                movea.l ($2050).w,a1
                movea.l $158(a1),a1
                jmp     (a1)
; End of function sub_FFC2FADA

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC2FAF0:                           ; DATA XREF: ROM:FFC06EF8↑o

var_4           = -4
arg_0           =  8
arg_4           =  $C

                link    a6,#0
                move.l  d3,-(sp)
                move.l  arg_0(a6),d0
                cmp.l   arg_4(a6),d0
                seq     d3
                neg.b   d3
                move.b  d3,d0
                move.l  var_4(a6),d3
                unlk    a6
                rts
; End of function sub_FFC2FAF0


; =============== S U B R O U T I N E =======================================


sub_FFC2FB0C:                           ; DATA XREF: sub_FFC32240+12↓o
                                        ; sub_FFC32870+16↓o ...
                movea.l ($2050).w,a1
                movea.l $2C8(a1),a1
                jmp     (a1)
; End of function sub_FFC2FB0C

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC2FB20:                           ; DATA XREF: ROM:FFC06EFC↑o

var_12          = -$12
var_E           = -$E
var_C           = -$C
arg_0           =  8
arg_4           =  $C

                link    a6,#0
                movem.l d7/a3-a4,-(sp)
                movea.l arg_0(a6),a3
                movea.l arg_4(a6),a4
                pea     ($2500).w
                move    sr,d0
                move    $10+var_E(sp),sr
                move.w  d0,d7
                moveq   #0,d0
                move.l  d0,(a3)
                tst.l   8(a4)
                beq.s   loc_FFC2FB52
                movea.l 4(a4),a0
                move.l  a3,(a0)
                move.l  a3,4(a4)
                bra.s   loc_FFC2FB58
; ---------------------------------------------------------------------------

loc_FFC2FB52:                           ; CODE XREF: sub_FFC2FB20+24↑j
                move.l  a3,(a4)
                move.l  a3,4(a4)

loc_FFC2FB58:                           ; CODE XREF: sub_FFC2FB20+30↑j
                addq.l  #1,8(a4)
                ext.l   d7
                move.l  d7,-(sp)
                move    sr,d0
                move    $14+var_12(sp),sr
                movem.l var_C(a6),d7/a3-a4
                unlk    a6
                rts
; End of function sub_FFC2FB20


; =============== S U B R O U T I N E =======================================


sub_FFC2FB70:                           ; CODE XREF: sub_FFC2FCD0+38↓p
                                        ; sub_FFC2FD70+28↓p ...
                movea.l ($2050).w,a1
                movea.l $2CC(a1),a1
                jmp     (a1)
; End of function sub_FFC2FB70

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC2FB80:                           ; DATA XREF: ROM:FFC06F00↑o

var_12          = -$12
var_E           = -$E
var_C           = -$C
arg_0           =  8

                link    a6,#0
                movem.l d7/a3-a4,-(sp)
                movea.l arg_0(a6),a4
                pea     ($2500).w
                move    sr,d0
                move    $10+var_E(sp),sr
                move.w  d0,d7
                tst.l   8(a4)
                beq.s   loc_FFC2FBA8
                movea.l (a4),a3
                move.l  (a3),(a4)
                subq.l  #1,8(a4)
                bra.s   loc_FFC2FBAC
; ---------------------------------------------------------------------------

loc_FFC2FBA8:                           ; CODE XREF: sub_FFC2FB80+1C↑j
                moveq   #0,d0
                movea.l d0,a3

loc_FFC2FBAC:                           ; CODE XREF: sub_FFC2FB80+26↑j
                ext.l   d7
                move.l  d7,-(sp)
                move    sr,d0
                move    $14+var_12(sp),sr
                move.l  a3,d0
                movem.l var_C(a6),d7/a3-a4
                unlk    a6
                rts
; End of function sub_FFC2FB80


; =============== S U B R O U T I N E =======================================


sub_FFC2FBC2:                           ; CODE XREF: sub_FFC2FCD0+18↓p
                                        ; sub_FFC2FDC0+14↓p ...
                movea.l ($2050).w,a1
                movea.l $2D0(a1),a1
                jmp     (a1)
; End of function sub_FFC2FBC2

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC2FBD0:                           ; DATA XREF: ROM:FFC06F04↑o

var_1A          = -$1A
var_18          = -$18
arg_0           =  8
arg_4           =  $C
arg_8           =  $10
arg_C           =  $14

                link    a6,#0
                movem.l d4-d7/a3-a4,-(sp)
                move.l  arg_4(a6),d5
                movea.l arg_0(a6),a3
                move.l  arg_C(a6),d6
                pea     ($2500).w
                move    sr,d0
                move    $1C+var_1A(sp),sr
                move.w  d0,d4
                movea.l (a3),a4
                moveq   #0,d7
                addq.w  #4,sp
                bra.s   loc_FFC2FC14
; ---------------------------------------------------------------------------

loc_FFC2FBF8:                           ; CODE XREF: sub_FFC2FBD0+48↓j
                move.l  d5,-(sp)
                move.l  a4,-(sp)
                movea.l arg_8(a6),a0
                jsr     (a0)
                tst.b   d0
                addq.w  #8,sp
                beq.s   loc_FFC2FC0E
                subq.l  #1,d6
                tst.l   d6
                beq.s   loc_FFC2FC1E

loc_FFC2FC0E:                           ; CODE XREF: sub_FFC2FBD0+36↑j
                movea.l (a4),a4
                move.l  d7,d0
                addq.l  #1,d7

loc_FFC2FC14:                           ; CODE XREF: sub_FFC2FBD0+26↑j
                cmp.l   8(a3),d7
                blt.s   loc_FFC2FBF8
                moveq   #0,d0
                movea.l d0,a4

loc_FFC2FC1E:                           ; CODE XREF: sub_FFC2FBD0+3C↑j
                moveq   #0,d0
                move.w  d4,d0
                move.l  d0,-(sp)
                move    sr,d0
                move    $1C+var_1A(sp),sr
                move.l  a4,d0
                addq.w  #4,sp
                movem.l var_18(a6),d4-d7/a3-a4
                unlk    a6
                rts
; End of function sub_FFC2FBD0


; =============== S U B R O U T I N E =======================================


sub_FFC2FC38:                           ; CODE XREF: sub_FFC320C0+1C↓p
                                        ; sub_FFC32540+2E↓p
                movea.l ($2050).w,a1
                movea.l $2D4(a1),a1
                jmp     (a1)
; End of function sub_FFC2FC38

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC2FC50:                           ; DATA XREF: ROM:FFC06F08↑o

var_1E          = -$1E
var_1C          = -$1C
arg_0           =  8
arg_4           =  $C
arg_8           =  $10

                link    a6,#-4
                movem.l d5-d7/a2-a4,-(sp)
                move.l  arg_4(a6),d6
                movea.l arg_0(a6),a3
                pea     ($2500).w
                move    sr,d0
                move    $20+var_1E(sp),sr
                move.w  d0,d5
                moveq   #0,d0
                movea.l d0,a2
                lea     (a3),a4
                moveq   #0,d7
                addq.w  #4,sp
                bra.s   loc_FFC2FCA4
; ---------------------------------------------------------------------------

loc_FFC2FC78:                           ; CODE XREF: sub_FFC2FC50+58↓j
                move.l  d6,-(sp)
                move.l  (a4),-(sp)
                movea.l arg_8(a6),a0
                jsr     (a0)
                tst.b   d0
                addq.w  #8,sp
                beq.s   loc_FFC2FC9E
                movea.l (a4),a2
                movea.l a2,a0
                move.l  (a0),(a4)
                cmpa.l  4(a3),a2
                bne.s   loc_FFC2FC98
                move.l  a4,4(a3)

loc_FFC2FC98:                           ; CODE XREF: sub_FFC2FC50+42↑j
                subq.l  #1,8(a3)
                bra.s   loc_FFC2FCAA
; ---------------------------------------------------------------------------

loc_FFC2FC9E:                           ; CODE XREF: sub_FFC2FC50+36↑j
                movea.l (a4),a4
                move.l  d7,d0
                addq.l  #1,d7

loc_FFC2FCA4:                           ; CODE XREF: sub_FFC2FC50+26↑j
                cmp.l   8(a3),d7
                blt.s   loc_FFC2FC78

loc_FFC2FCAA:                           ; CODE XREF: sub_FFC2FC50+4C↑j
                ext.l   d5
                move.l  d5,-(sp)
                move    sr,d0
                move    $20+var_1E(sp),sr
                move.l  a2,d0
                addq.w  #4,sp
                movem.l var_1C(a6),d5-d7/a2-a4
                unlk    a6
                rts
; End of function sub_FFC2FC50


; =============== S U B R O U T I N E =======================================


sub_FFC2FCC2:                           ; CODE XREF: sub_FFC32090+18↓p
                                        ; sub_FFC32240+1C↓p ...
                movea.l ($2050).w,a1
                movea.l $2D8(a1),a1
                jmp     (a1)
; End of function sub_FFC2FCC2

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC2FCD0:                           ; DATA XREF: ROM:FFC06F0C↑o

var_10          = -$10
arg_0           =  8
arg_4           =  $C
arg_8           =  $10

                link    a6,#0
                movem.l d6-d7/a3-a4,-(sp)
                move.l  arg_4(a6),d6
                movea.l arg_0(a6),a4
                move.l  8(a4),d7
                bra.s   loc_FFC2FD12
; ---------------------------------------------------------------------------

loc_FFC2FCE6:                           ; CODE XREF: sub_FFC2FCD0+44↓j
                move.l  a4,-(sp)
                jsr     sub_FFC2FBC2
                movea.l d0,a3
                move.l  a3,d0
                addq.w  #4,sp
                beq.s   loc_FFC2FD0E
                move.l  d6,-(sp)
                move.l  a3,-(sp)
                movea.l arg_8(a6),a0
                jsr     (a0)
                tst.b   d0
                addq.w  #8,sp
                bne.s   loc_FFC2FD0E
                move.l  a4,-(sp)
                move.l  a3,-(sp)
                jsr     sub_FFC2FB70
                addq.w  #8,sp

loc_FFC2FD0E:                           ; CODE XREF: sub_FFC2FCD0+22↑j
                                        ; sub_FFC2FCD0+32↑j
                move.l  d7,d0
                subq.l  #1,d7

loc_FFC2FD12:                           ; CODE XREF: sub_FFC2FCD0+14↑j
                tst.l   d7
                bne.s   loc_FFC2FCE6
                movem.l var_10(a6),d6-d7/a3-a4
                unlk    a6
                rts
; End of function sub_FFC2FCD0


; =============== S U B R O U T I N E =======================================


sub_FFC2FD20:                           ; CODE XREF: sub_FFC30850+30↓p
                movea.l ($2050).w,a1
                movea.l $2DC(a1),a1
                jmp     (a1)
; End of function sub_FFC2FD20

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC2FD30:                           ; DATA XREF: ROM:FFC06F10↑o

arg_0           =  8

                link    a6,#0
                move.l  arg_0(a6),d0
                _NewPtrSysClear
                move.l  a0,d0
                unlk    a6
                rts
; End of function sub_FFC2FD30


; =============== S U B R O U T I N E =======================================


sub_FFC2FD40:                           ; CODE XREF: sub_FFC2FD70+18↓p
                                        ; sub_FFC35660+12↓p
                movea.l ($2050).w,a1
                movea.l $2E0(a1),a1
                jmp     (a1)
; End of function sub_FFC2FD40

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC2FD50:                           ; DATA XREF: ROM:FFC06F14↑o

arg_0           =  8

                link    a6,#0
                movea.l arg_0(a6),a0
                _DisposePtr
                unlk    a6
                rts
; End of function sub_FFC2FD50


; =============== S U B R O U T I N E =======================================


sub_FFC2FD5E:                           ; CODE XREF: sub_FFC2FDC0+22↓p
                                        ; sub_FFC30BB0+82↓p ...
                movea.l ($2050).w,a1
                movea.l $2E4(a1),a1
                jmp     (a1)
; End of function sub_FFC2FD5E

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC2FD70:                           ; DATA XREF: ROM:FFC06F18↑o

var_10          = -$10
arg_0           =  8
arg_4           =  $C
arg_8           =  $10

                link    a6,#0
                movem.l d6-d7/a3-a4,-(sp)
                move.l  arg_8(a6),d6
                move.l  arg_4(a6),d7
                movea.l arg_0(a6),a3
                bra.s   loc_FFC2FD9E
; ---------------------------------------------------------------------------

loc_FFC2FD86:                           ; CODE XREF: sub_FFC2FD70+34↓j
                move.l  d6,-(sp)
                jsr     sub_FFC2FD40
                movea.l d0,a4
                move.l  a4,d0
                addq.w  #4,sp
                beq.s   loc_FFC2FDA6
                move.l  a3,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC2FB70
                addq.w  #8,sp

loc_FFC2FD9E:                           ; CODE XREF: sub_FFC2FD70+14↑j
                move.l  d7,d0
                subq.l  #1,d7
                tst.l   d0
                bne.s   loc_FFC2FD86

loc_FFC2FDA6:                           ; CODE XREF: sub_FFC2FD70+22↑j
                movem.l var_10(a6),d6-d7/a3-a4
                unlk    a6
                rts
; End of function sub_FFC2FD70


; =============== S U B R O U T I N E =======================================


sub_FFC2FDB0:                           ; CODE XREF: sub_FFC2FE10+2A↓p
                                        ; sub_FFC2FE10+52↓p ...
                movea.l ($2050).w,a1
                movea.l $2E8(a1),a1
                jmp     (a1)
; End of function sub_FFC2FDB0

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC2FDC0:                           ; DATA XREF: ROM:FFC06F1C↑o

var_C           = -$C
arg_0           =  8
arg_4           =  $C

                link    a6,#0
                movem.l d7/a3-a4,-(sp)
                move.l  arg_4(a6),d7
                movea.l arg_0(a6),a3
                bra.s   loc_FFC2FDE8
; ---------------------------------------------------------------------------

loc_FFC2FDD2:                           ; CODE XREF: sub_FFC2FDC0+2E↓j
                move.l  a3,-(sp)
                jsr     sub_FFC2FBC2
                movea.l d0,a4
                move.l  a4,d0
                addq.w  #4,sp
                beq.s   loc_FFC2FDF0
                move.l  a4,-(sp)
                jsr     sub_FFC2FD5E
                addq.w  #4,sp

loc_FFC2FDE8:                           ; CODE XREF: sub_FFC2FDC0+10↑j
                move.l  d7,d0
                subq.l  #1,d7
                tst.l   d0
                bne.s   loc_FFC2FDD2

loc_FFC2FDF0:                           ; CODE XREF: sub_FFC2FDC0+1E↑j
                movem.l var_C(a6),d7/a3-a4
                unlk    a6
                rts
; End of function sub_FFC2FDC0


; =============== S U B R O U T I N E =======================================


sub_FFC2FDFA:                           ; CODE XREF: sub_FFC2FED0+28↓p
                                        ; sub_FFC2FED0+4C↓p ...
                movea.l ($2050).w,a1
                movea.l $2EC(a1),a1
                jmp     (a1)
; End of function sub_FFC2FDFA

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC2FE10:                           ; CODE XREF: sub_FFC30000+82↓p
                                        ; sub_FFC30AA0+18↓p ...

var_4           = -4
arg_0           =  8

                link    a6,#0
                move.l  a4,-(sp)
                movea.l arg_0(a6),a4
                moveq   #0,d0
                move.b  $CC(a4),d0
                cmp.l   $2C(a4),d0
                ble.s   loc_FFC2FE42
                moveq   #$68,d0 ; 'h'
                move.l  d0,-(sp)
                moveq   #0,d1
                move.b  $CC(a4),d1
                sub.l   $2C(a4),d1
                move.l  d1,-(sp)
                pea     $24(a4)
                jsr     sub_FFC2FDB0
                lea     $C(sp),sp

loc_FFC2FE42:                           ; CODE XREF: sub_FFC2FE10+14↑j
                moveq   #0,d0
                move.b  $CC(a4),d0
                cmp.l   $38(a4),d0
                ble.s   loc_FFC2FE6A
                pea     ($BE).w
                moveq   #0,d0
                move.b  $CC(a4),d0
                sub.l   $38(a4),d0
                move.l  d0,-(sp)
                pea     $30(a4)
                jsr     sub_FFC2FDB0
                lea     $C(sp),sp

loc_FFC2FE6A:                           ; CODE XREF: sub_FFC2FE10+3C↑j
                moveq   #0,d0
                move.b  $CE(a4),d0
                cmp.l   $44(a4),d0
                ble.s   loc_FFC2FE92
                moveq   #$3E,d0 ; '>'
                move.l  d0,-(sp)
                moveq   #0,d1
                move.b  $CE(a4),d1
                sub.l   $44(a4),d1
                move.l  d1,-(sp)
                pea     $3C(a4)
                jsr     sub_FFC2FDB0
                lea     $C(sp),sp

loc_FFC2FE92:                           ; CODE XREF: sub_FFC2FE10+64↑j
                moveq   #0,d0
                move.b  $D0(a4),d0
                cmp.l   $50(a4),d0
                ble.s   loc_FFC2FEBA
                pea     ($10CA).w
                moveq   #0,d0
                move.b  $D0(a4),d0
                sub.l   $50(a4),d0
                move.l  d0,-(sp)
                pea     $48(a4)
                jsr     sub_FFC2FDB0
                lea     $C(sp),sp

loc_FFC2FEBA:                           ; CODE XREF: sub_FFC2FE10+8C↑j
                movea.l var_4(a6),a4
                unlk    a6
                rts
; End of function sub_FFC2FE10

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC2FED0:                           ; CODE XREF: sub_FFC30AA0+1E↓p
                                        ; sub_FFC30BB0+13C↓p

var_4           = -4
arg_0           =  8

                link    a6,#0
                move.l  a4,-(sp)
                movea.l arg_0(a6),a4
                moveq   #0,d0
                move.b  $CD(a4),d0
                cmp.l   $2C(a4),d0
                bge.s   loc_FFC2FEFE
                moveq   #0,d0
                move.b  $CD(a4),d0
                move.l  $2C(a4),d1
                sub.l   d0,d1
                move.l  d1,-(sp)
                pea     $24(a4)
                jsr     sub_FFC2FDFA
                addq.w  #8,sp

loc_FFC2FEFE:                           ; CODE XREF: sub_FFC2FED0+14↑j
                moveq   #0,d0
                move.b  $CD(a4),d0
                cmp.l   $38(a4),d0
                bge.s   loc_FFC2FF22
                moveq   #0,d0
                move.b  $CD(a4),d0
                move.l  $38(a4),d1
                sub.l   d0,d1
                move.l  d1,-(sp)
                pea     $30(a4)
                jsr     sub_FFC2FDFA
                addq.w  #8,sp

loc_FFC2FF22:                           ; CODE XREF: sub_FFC2FED0+38↑j
                moveq   #0,d0
                move.b  $CF(a4),d0
                cmp.l   $44(a4),d0
                bge.s   loc_FFC2FF46
                moveq   #0,d0
                move.b  $CF(a4),d0
                move.l  $44(a4),d1
                sub.l   d0,d1
                move.l  d1,-(sp)
                pea     $3C(a4)
                jsr     sub_FFC2FDFA
                addq.w  #8,sp

loc_FFC2FF46:                           ; CODE XREF: sub_FFC2FED0+5C↑j
                moveq   #0,d0
                move.b  $D1(a4),d0
                cmp.l   $50(a4),d0
                bge.s   loc_FFC2FF6A
                moveq   #0,d0
                move.b  $D1(a4),d0
                move.l  $50(a4),d1
                sub.l   d0,d1
                move.l  d1,-(sp)
                pea     $48(a4)
                jsr     sub_FFC2FDFA
                addq.w  #8,sp

loc_FFC2FF6A:                           ; CODE XREF: sub_FFC2FED0+80↑j
                movea.l var_4(a6),a4
                unlk    a6
                rts
; End of function sub_FFC2FED0

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================


sub_FFC2FF80:                           ; DATA XREF: ROM:FFC06CA4↑o
                cmpi.b  #$F9,d0
                blt.s   loc_FFC2FFA0
                cmpi.b  #$E,d0
                bgt.s   loc_FFC2FFA0
                ext.w   d0
                asl.w   #1,d0
                move.w  off_FFC2FFB8(pc,d0.w),d0
                lea     off_FFC2FFB8(pc,d0.w),a1
                move.l  a0,-(sp)
                jsr     (a1)
                movea.l (sp)+,a0
                rts
; ---------------------------------------------------------------------------

loc_FFC2FFA0:                           ; CODE XREF: sub_FFC2FF80+4↑j
                                        ; sub_FFC2FF80+A↑j
                move.w  #$FFCE,d0
                lea     $1C(sp),sp
                rts
; End of function sub_FFC2FF80

; ---------------------------------------------------------------------------
                dc.w sub_FFC3093A-off_FFC2FFB8
                dc.w sub_FFC3089E-off_FFC2FFB8
                dc.w sub_FFC30926-off_FFC2FFB8
                dc.w sub_FFC30492-off_FFC2FFB8
                dc.w sub_FFC3043E-off_FFC2FFB8
                dc.w sub_FFC30AA0-off_FFC2FFB8
                dc.w sub_FFC30D06-off_FFC2FFB8
off_FFC2FFB8:   dc.w sub_FFC30200-*     ; DATA XREF: sub_FFC2FF80+10↑r
                                        ; sub_FFC2FF80+14↑o ...
                dc.w loc_FFC30FB0-off_FFC2FFB8
                dc.w sub_FFC31088-off_FFC2FFB8
                dc.w sub_FFC3110A-off_FFC2FFB8
                dc.w sub_FFC311F6-off_FFC2FFB8
                dc.w sub_FFC312D6-off_FFC2FFB8
                dc.w sub_FFC313BC-off_FFC2FFB8
                dc.w sub_FFC314AC-off_FFC2FFB8
                dc.w sub_FFC3159A-off_FFC2FFB8
                dc.w sub_FFC31620-off_FFC2FFB8
                dc.w sub_FFC316B4-off_FFC2FFB8
                dc.w sub_FFC2FFEA-off_FFC2FFB8
                dc.w sub_FFC35464-off_FFC2FFB8
                dc.w sub_FFC3555E-off_FFC2FFB8
                dc.w sub_FFC352A0-off_FFC2FFB8
; ---------------------------------------------------------------------------
                move.l  ([$2050],$74),-(sp)
                rts

; =============== S U B R O U T I N E =======================================


sub_FFC2FFE0:                           ; DATA XREF: ROM:FFC06CA8↑o
                move.w  #$FFCE,d0
                lea     $1C(sp),sp
                rts
; End of function sub_FFC2FFE0


; =============== S U B R O U T I N E =======================================


sub_FFC2FFEA:                           ; DATA XREF: ROM:FFC2FFCE↑o
                move.l  ([$2050],$78),-(sp)
                rts
; End of function sub_FFC2FFEA

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC30000:                           ; DATA XREF: ROM:FFC06D8C↑o

var_10          = -$10
var_4           = -4

                link    a6,#-4
                movem.l a2-a4,-(sp)
                pea     ($66C).w
                jsr     sub_FFC2FADA
                movea.l d0,a4
                move.l  a4,d0
                addq.w  #4,sp
                beq.s   loc_FFC3008E
                pea     ($66C).w
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC300B0
                moveq   #1,d0
                move.b  d0,-(sp)
                moveq   #$FFFFFFFF,d0
                tst.b   (sp)+
                sne     d0
                move.w  d0,($B9E).w
                subq.l  #4,sp
                move.l  #'ppci',-(sp)
                move.w  #$BFE7,-(sp)
                _GetResource
                move.l  (sp)+,var_4(a6)
                lea     $C(sp),sp
                beq.s   loc_FFC3008E
                movea.l var_4(a6),a0
                movea.l (a0),a3
                move.b  2(a3),d0
                lsl.b   #1,d0
                move.b  d0,2(a3)
                move.b  3(a3),d0
                lsl.b   #1,d0
                move.b  d0,3(a3)
                movea.l a3,a0
                lea     $CC(a4),a2
                movea.l a2,a1
                moveq   #$2E,d0 ; '.'
                _BlockMove
                move.l  var_4(a6),-(sp)
                _ReleaseResource
                clr.b   $B(a4)
                clr.b   7(a4)
                move.l  a4,-(sp)
                jsr     sub_FFC2FE10
                move.l  a4,-(sp)
                jsr     sub_FFC300E8
                addq.w  #8,sp

loc_FFC3008E:                           ; CODE XREF: sub_FFC30000+16↑j
                                        ; sub_FFC30000+4A↑j
                movem.l var_10(a6),a2-a4
                unlk    a6
                rts
; End of function sub_FFC30000


; =============== S U B R O U T I N E =======================================


sub_FFC30098:                           ; CODE XREF: sub_FFC2FA90↑p
                movea.l ($2050).w,a1
                movea.l $15C(a1),a1
                jmp     (a1)
; End of function sub_FFC30098

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: thunk

sub_FFC300B0:                           ; CODE XREF: sub_FFC30000+22↑p
                                        ; sub_FFC30BB0+136↓p ...
                bra.l   sub_FFCC9FC0
; End of function sub_FFC300B0

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC300C0:                           ; DATA XREF: ROM:FFC06D90↑o

var_8           = -8
var_4           = -4
arg_0           =  8

                link    a6,#-4
                move.l  a4,-(sp)
                movea.l arg_0(a6),a4
                lea     var_4(a6),a1
                movea.l a1,a0
                move.l  ($20C).w,(a0)
                move.l  var_4(a6),$C8(a4)
                bne.s   loc_FFC300E0
                addq.l  #1,$C8(a4)

loc_FFC300E0:                           ; CODE XREF: sub_FFC300C0+1A↑j
                movea.l var_8(a6),a4
                unlk    a6
                rts
; End of function sub_FFC300C0


; =============== S U B R O U T I N E =======================================


sub_FFC300E8:                           ; CODE XREF: sub_FFC30000+88↑p
                movea.l ($2050).w,a1
                movea.l $160(a1),a1
                jmp     (a1)
; End of function sub_FFC300E8

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC30100:                           ; DATA XREF: ROM:FFC06D2C↑o

var_10          = -$10
var_4           = -4

                link    a6,#-4
                movem.l a2-a4,-(sp)
                jsr     sub_FFC30D10
                movea.l d0,a4
                move.l  a4,d0
                bne.s   loc_FFC3011A
                move.w  #$FC78,d0
                bra.w   loc_FFC301F6
; ---------------------------------------------------------------------------

loc_FFC3011A:                           ; CODE XREF: sub_FFC30100+10↑j
                tst.b   $B(a4)
                bne.w   loc_FFC301F4
                move.b  #1,4(a4)
                lea     $CC(a4),a3
                move.w  #1,$C2(a4)
                moveq   #1,d0
                move.l  d0,$C4(a4)
                clr.w   $BE(a4)
                moveq   #0,d1
                move.l  d1,$B4(a4)
                move.l  a0,-(sp)
                subq.l  #4,sp
                move.l  #$53545220,-(sp)
                move.w  #$BFE3,-(sp)
                _GetResource
                move.l  (sp)+,d0
                movea.l (sp)+,a0
                movea.l d0,a1
                movea.l (a1),a0
                lea     $FA(a4),a2
                movea.l a2,a1
                moveq   #$21,d0 ; '!'
                _BlockMove
                subq.l  #2,sp
                jsr     sub_FFC30210
                tst.w   (sp)+
                bne.s   loc_FFC301A2
                move.b  #1,8(a4)
                move.b  #1,5(a4)
                pea     $BE(a4)
                jsr     sub_FFC3572E
                tst.w   d0
                addq.w  #4,sp
                beq.s   loc_FFC30192
                clr.w   $BE(a4)
                clr.b   5(a4)
                bra.s   loc_FFC301A2
; ---------------------------------------------------------------------------

loc_FFC30192:                           ; CODE XREF: sub_FFC30100+86↑j
                move.l  a4,-(sp)
                jsr     sub_FFC30A4A
                tst.b   d0
                addq.w  #4,sp
                beq.s   loc_FFC301A2
                jsr     sub_FFC3043E

loc_FFC301A2:                           ; CODE XREF: sub_FFC30100+6C↑j
                                        ; sub_FFC30100+90↑j ...
                lea     loc_FFC303A0(pc),a0
                move.l  a0,$5A2(a4)
                pea     $59C(a4)
                jsr     sub_FFC30D7E
                move.l  #$706F7772,d0
                lea     var_4(a6),a0
                movea.l a0,a1
                _Gestalt
                move.l  a0,(a1)
                tst.w   d0
                addq.w  #4,sp
                bne.s   loc_FFC301EE
                moveq   #1,d0
                and.l   var_4(a6),d0
                beq.s   loc_FFC301EE
                moveq   #2,d0
                and.l   var_4(a6),d0
                beq.s   loc_FFC301EE
                lea     sub_FFC30796(pc),a0
                move.l  a0,$5AC(a4)
                move.w  #$10,$5AA(a4)
                lea     $5A6(a4),a1
                movea.l a1,a0
                _SleepQInstall

loc_FFC301EE:                           ; CODE XREF: sub_FFC30100+C6↑j
                                        ; sub_FFC30100+CE↑j ...
                move.b  #1,$B(a4)

loc_FFC301F4:                           ; CODE XREF: sub_FFC30100+1E↑j
                moveq   #0,d0

loc_FFC301F6:                           ; CODE XREF: sub_FFC30100+16↑j
                movem.l var_10(a6),a2-a4
                unlk    a6
                rts
; End of function sub_FFC30100


; =============== S U B R O U T I N E =======================================


sub_FFC30200:                           ; DATA XREF: ROM:off_FFC2FFB8↑o
                movea.l ($2050).w,a1
                movea.l $FC(a1),a1
                jmp     (a1)
; End of function sub_FFC30200

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: thunk

sub_FFC30210:                           ; CODE XREF: sub_FFC30100+66↑p
                                        ; sub_FFC303B0+76↓p ...
                bra.l   sub_FFCC9D00
; End of function sub_FFC30210

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC30220:                           ; DATA XREF: ROM:FFC06D30↑o

var_40          = -$40
var_2C          = -$2C
arg_0           =  8
arg_8           =  $10

                link    a6,#-$2C
                movem.l d6-d7/a2-a4,-(sp)
                movea.l arg_8(a6),a3
                move.l  arg_0(a6),d7
                jsr     sub_FFC30D10
                movea.l d0,a4
                tst.l   d7
                bne.s   loc_FFC30278
                move.b  #1,8(a4)
                move.b  #1,5(a4)
                pea     $BE(a4)
                jsr     sub_FFC3572E
                tst.w   d0
                addq.w  #4,sp
                beq.s   loc_FFC30262
                clr.w   $BE(a4)
                clr.b   5(a4)
                moveq   #0,d0
                bra.w   loc_FFC30392
; ---------------------------------------------------------------------------

loc_FFC30262:                           ; CODE XREF: sub_FFC30220+32↑j
                move.l  a4,-(sp)
                jsr     sub_FFC30A4A
                tst.b   d0
                addq.w  #4,sp
                beq.w   loc_FFC30390
                jsr     sub_FFC3043E
                bra.w   loc_FFC30390
; ---------------------------------------------------------------------------

loc_FFC30278:                           ; CODE XREF: sub_FFC30220+18↑j
                moveq   #3,d0
                cmp.l   d7,d0
                bne.s   loc_FFC30290
                tst.l   $80(a4)
                beq.s   loc_FFC3028A
                moveq   #1,d0
                bra.w   loc_FFC30392
; ---------------------------------------------------------------------------

loc_FFC3028A:                           ; CODE XREF: sub_FFC30220+62↑j
                moveq   #0,d0
                bra.w   loc_FFC30392
; ---------------------------------------------------------------------------

loc_FFC30290:                           ; CODE XREF: sub_FFC30220+5C↑j
                moveq   #2,d0
                cmp.l   d7,d0
                bne.s   loc_FFC302B8
                tst.b   7(a4)
                beq.s   loc_FFC302A0
                jsr     sub_FFC30492

loc_FFC302A0:                           ; CODE XREF: sub_FFC30220+7A↑j
                move.l  a4,-(sp)
                jsr     sub_FFC307D4
                clr.b   8(a4)
                clr.b   5(a4)
                clr.w   $BE(a4)
                addq.w  #4,sp
                bra.w   loc_FFC30390
; ---------------------------------------------------------------------------

loc_FFC302B8:                           ; CODE XREF: sub_FFC30220+74↑j
                moveq   #6,d0
                cmp.l   d7,d0
                bne.s   loc_FFC302F6
                movea.l a3,a0
                lea     $FA(a4),a2
                movea.l a2,a1
                moveq   #$21,d0 ; '!'
                _BlockMove
                tst.b   7(a4)
                beq.w   loc_FFC30390
                move.l  a4,-(sp)
                jsr     sub_FFC30684
                eori.b  #1,$13C(a4)
                clr.b   $13D(a4)
                move.l  a4,-(sp)
                jsr     sub_FFC30B14
                move.l  a4,-(sp)
                jsr     sub_FFC30B82
                lea     $C(sp),sp
                bra.w   loc_FFC30390
; ---------------------------------------------------------------------------

loc_FFC302F6:                           ; CODE XREF: sub_FFC30220+9C↑j
                tst.b   7(a4)
                beq.w   loc_FFC30390
                moveq   #7,d0
                cmp.l   d7,d0
                bne.s   loc_FFC30352
                pea     var_2C(a6)
                moveq   #0,d0
                move.b  $13C(a4),d0
                moveq   #1,d1
                eor.b   d1,d0
                moveq   #0,d1
                move.b  d0,d1
                moveq   #$6C,d0 ; 'l'
                muls.l  d0,d1
                lea     $13E(a4),a0
                pea     (a0,d1.l)
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  d0,-(sp)
                moveq   #0,d1
                move.b  $C0(a4),d1
                move.l  d1,-(sp)
                pea     sub_FFC3039C(pc)
                pea     $D8(a4)
                move.l  a3,-(sp)
                jsr     sub_FFC35C0E
                move.w  d0,d6
                lea     $20(sp),sp
                bne.s   loc_FFC3034E
                move.b  #1,$13D(a4)

loc_FFC3034E:                           ; CODE XREF: sub_FFC30220+126↑j
                move.w  d6,d0
                bra.s   loc_FFC30392
; ---------------------------------------------------------------------------

loc_FFC30352:                           ; CODE XREF: sub_FFC30220+E2↑j
                moveq   #8,d0
                cmp.l   d7,d0
                bne.s   loc_FFC30390
                tst.b   $13D(a4)
                beq.s   loc_FFC30390
                pea     var_2C(a6)
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  d0,-(sp)
                moveq   #0,d1
                move.b  $13C(a4),d1
                moveq   #1,d2
                eor.b   d2,d1
                moveq   #0,d2
                move.b  d1,d2
                moveq   #$6C,d1 ; 'l'
                muls.l  d1,d2
                lea     $147(a4),a0
                pea     (a0,d2.l)
                jsr     sub_FFC35CF6
                clr.b   $13D(a4)
                lea     $10(sp),sp

loc_FFC30390:                           ; CODE XREF: sub_FFC30220+4C↑j
                                        ; sub_FFC30220+54↑j ...
                moveq   #0,d0

loc_FFC30392:                           ; CODE XREF: sub_FFC30220+3E↑j
                                        ; sub_FFC30220+66↑j ...
                movem.l var_40(a6),d6-d7/a2-a4
                unlk    a6
                rts
; End of function sub_FFC30220


; =============== S U B R O U T I N E =======================================


sub_FFC3039C:                           ; DATA XREF: sub_FFC30220+112↑o
                btst    d0,0(a2)

loc_FFC303A0:                           ; DATA XREF: sub_FFC30100:loc_FFC301A2↑o
                movea.l ($2050).w,a1
                movea.l $100(a1),a1
                jmp     (a1)
; End of function sub_FFC3039C

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC303B0:                           ; DATA XREF: ROM:FFC06D34↑o

var_8           = -8

                link    a6,#0
                movem.l d7/a4,-(sp)
                jsr     sub_FFC30D10
                movea.l d0,a4
                move.l  a4,d0
                beq.s   loc_FFC30430
                tst.b   7(a4)
                beq.s   loc_FFC303CC
                moveq   #0,d0
                bra.s   loc_FFC30434
; ---------------------------------------------------------------------------

loc_FFC303CC:                           ; CODE XREF: sub_FFC303B0+16↑j
                tst.b   8(a4)
                beq.s   loc_FFC30424
                pea     $5B2(a4)
                jsr     sub_FFC30536
                tst.w   $5B2(a4)
                addq.w  #4,sp
                beq.s   loc_FFC3041A
                move.l  a4,-(sp)
                jsr     sub_FFC3071A
                move.w  d0,d7
                addq.w  #4,sp
                beq.s   loc_FFC303F6
                jsr     sub_FFC30492
                move.w  d7,d0
                bra.s   loc_FFC30434
; ---------------------------------------------------------------------------

loc_FFC303F6:                           ; CODE XREF: sub_FFC303B0+3C↑j
                move.l  a4,-(sp)
                jsr     sub_FFC30644
                move.w  d0,d7
                addq.w  #4,sp
                beq.s   loc_FFC3040A
                jsr     sub_FFC30492
                move.w  d7,d0
                bra.s   loc_FFC30434
; ---------------------------------------------------------------------------

loc_FFC3040A:                           ; CODE XREF: sub_FFC303B0+50↑j
                move.b  #1,7(a4)
                move.l  a4,-(sp)
                jsr     sub_FFC30B82
                addq.w  #4,sp
                bra.s   loc_FFC3042C
; ---------------------------------------------------------------------------

loc_FFC3041A:                           ; CODE XREF: sub_FFC303B0+30↑j
                jsr     sub_FFC30492
                move.w  #$FC7B,d0
                bra.s   loc_FFC30434
; ---------------------------------------------------------------------------

loc_FFC30424:                           ; CODE XREF: sub_FFC303B0+20↑j
                subq.l  #2,sp
                jsr     sub_FFC30210
                move.w  (sp)+,d7

loc_FFC3042C:                           ; CODE XREF: sub_FFC303B0+68↑j
                move.w  d7,d0
                bra.s   loc_FFC30434
; ---------------------------------------------------------------------------

loc_FFC30430:                           ; CODE XREF: sub_FFC303B0+10↑j
                move.w  #$FC78,d0

loc_FFC30434:                           ; CODE XREF: sub_FFC303B0+1A↑j
                                        ; sub_FFC303B0+44↑j ...
                movem.l var_8(a6),d7/a4
                unlk    a6
                rts
; End of function sub_FFC303B0


; =============== S U B R O U T I N E =======================================


sub_FFC3043E:                           ; CODE XREF: sub_FFC30100+9E↑p
                                        ; sub_FFC30220+50↑p
                                        ; DATA XREF: ...
                movea.l ($2050).w,a1
                movea.l $104(a1),a1
                jmp     (a1)
; End of function sub_FFC3043E

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC30450:                           ; DATA XREF: ROM:FFC06D38↑o

var_4           = -4

                link    a6,#0
                move.l  a4,-(sp)
                jsr     sub_FFC30D10
                movea.l d0,a4
                move.l  a4,d0
                beq.s   loc_FFC30486
                clr.b   7(a4)
                move.l  a4,-(sp)
                jsr     sub_FFC30684
                move.l  a4,-(sp)
                jsr     sub_FFC30B14
                move.l  a4,-(sp)
                jsr     sub_FFC30580
                moveq   #0,d0
                move.l  d0,-(sp)
                jsr     sub_FFC3089E
                moveq   #0,d0
                lea     $10(sp),sp
                bra.s   loc_FFC3048A
; ---------------------------------------------------------------------------

loc_FFC30486:                           ; CODE XREF: sub_FFC30450+E↑j
                move.w  #$FC78,d0

loc_FFC3048A:                           ; CODE XREF: sub_FFC30450+34↑j
                movea.l var_4(a6),a4
                unlk    a6
                rts
; End of function sub_FFC30450


; =============== S U B R O U T I N E =======================================


sub_FFC30492:                           ; CODE XREF: sub_FFC30220+7C↑p
                                        ; sub_FFC303B0+3E↑p ...
                movea.l ($2050).w,a1
                movea.l $108(a1),a1
                jmp     (a1)
; End of function sub_FFC30492

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC304A0:                           ; DATA XREF: ROM:FFC06D3C↑o

var_11A         = -$11A
var_10A         = -$10A
var_106         = -$106
var_6           = -6
var_4           = -4
arg_0           =  8

                link    a6,#-$10A
                movem.l d3/d7/a3-a4,-(sp)
                lea     var_106(a6),a3
                movea.l arg_0(a6),a4
                tst.w   (a4)
                bne.s   loc_FFC3052C
                move.l  a3,-(sp)
                move.w  #$BFE6,-(sp)
                moveq   #1,d0
                move.w  d0,-(sp)
                jsr     sub_FFC30540
                subq.l  #2,sp
                moveq   #0,d0
                move.w  d0,-(sp)
                move.l  #$70726566,-(sp)
                moveq   #0,d1
                move.b  d1,-(sp)
                pea     var_6(a6)
                pea     var_4(a6)
                moveq   #0,d0
                _AliasDispatch
                tst.w   (sp)+
                bne.s   loc_FFC3052C
                move.l  #$6F732020,d0
                lea     var_10A(a6),a0
                movea.l a0,a1
                _Gestalt
                move.l  a0,(a1)
                tst.w   d0
                seq     d3
                neg.b   d3
                move.b  d3,d7
                beq.s   loc_FFC30506
                subq.l  #2,sp
                move.w  #$40,-(sp) ; '@'
                _OSDispatch
                addq.w  #2,sp

loc_FFC30506:                           ; CODE XREF: sub_FFC304A0+5A↑j
                subq.l  #2,sp
                move.w  var_6(a6),-(sp)
                move.l  var_4(a6),-(sp)
                move.l  a3,-(sp)
                moveq   #4,d0
                move.w  d0,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC35E54
                tst.b   d7
                addq.w  #2,sp
                beq.s   loc_FFC3052C
                subq.l  #2,sp
                move.w  #$41,-(sp) ; 'A'
                _OSDispatch
                addq.w  #2,sp

loc_FFC3052C:                           ; CODE XREF: sub_FFC304A0+12↑j
                                        ; sub_FFC304A0+40↑j ...
                movem.l var_11A(a6),d3/d7/a3-a4
                unlk    a6
                rts
; End of function sub_FFC304A0


; =============== S U B R O U T I N E =======================================


sub_FFC30536:                           ; CODE XREF: sub_FFC303B0+26↑p
                                        ; sub_FFC309C0+14↓p
                movea.l ($2050).w,a1
                movea.l $10C(a1),a1
                jmp     (a1)
; End of function sub_FFC30536


; =============== S U B R O U T I N E =======================================

; Attributes: thunk

sub_FFC30540:                           ; CODE XREF: sub_FFC304A0+1E↑p
                                        ; sub_FFC352C0+B0↓p ...
                bra.l   sub_FFCC9880
; End of function sub_FFC30540

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC30550:                           ; DATA XREF: ROM:FFC06D40↑o

var_48          = -$48
var_44          = -$44
var_2C          = -$2C
var_24          = -$24
arg_0           =  8

                link    a6,#-$44
                move.l  a4,-(sp)
                movea.l arg_0(a6),a4
                move.w  $328(a4),var_24(a6)
                move.w  $BE(a4),var_2C(a6)
                pea     var_44(a6)
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  d0,-(sp)
                moveq   #1,d1
                move.l  d1,-(sp)
                jsr     sub_FFC358F2
                movea.l var_48(a6),a4
                unlk    a6
                rts
; End of function sub_FFC30550


; =============== S U B R O U T I N E =======================================


sub_FFC30580:                           ; CODE XREF: sub_FFC30450+22↑p
                movea.l ($2050).w,a1
                movea.l $110(a1),a1
                jmp     (a1)
; End of function sub_FFC30580

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC30590:                           ; DATA XREF: ROM:FFC06D44↑o

var_40          = -$40
var_30          = -$30
var_4           = -4
arg_0           =  8

                link    a6,#-$30
                movem.l d7/a2-a4,-(sp)
                movea.l arg_0(a6),a4
                moveq   #0,d0
                move.b  $D8(a4),d0
                tst.l   d0
                bne.s   loc_FFC305AE
                move.w  #$FC6E,d0
                bra.w   loc_FFC30636
; ---------------------------------------------------------------------------

loc_FFC305AE:                           ; CODE XREF: sub_FFC30590+14↑j
                subq.l  #4,sp
                move.l  #$53545220,-(sp)
                move.w  #$BFE3,-(sp)
                _GetResource
                movea.l (sp)+,a3
                move.l  a3,d0
                bne.s   loc_FFC305C8
                move.w  #$FC6F,d0
                bra.s   loc_FFC30636
; ---------------------------------------------------------------------------

loc_FFC305C8:                           ; CODE XREF: sub_FFC30590+30↑j
                movea.l (a3),a0
                lea     $FA(a4),a2
                movea.l a2,a1
                moveq   #$21,d0 ; '!'
                _BlockMove
                move.w  #$FC6F,d7
                move.l  #$666C6167,d0
                lea     var_4(a6),a0
                movea.l a0,a1
                _Gestalt
                move.l  a0,(a1)
                tst.w   d0
                bne.s   loc_FFC30634
                moveq   #3,d0
                and.l   var_4(a6),d0
                moveq   #3,d1
                cmp.l   d0,d1
                bne.s   loc_FFC30634
                pea     var_30(a6)
                moveq   #0,d0
                move.b  $13C(a4),d0
                moveq   #$6C,d1 ; 'l'
                muls.l  d1,d0
                lea     $13E(a4),a0
                pea     (a0,d0.l)
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  d0,-(sp)
                moveq   #0,d1
                move.b  $C0(a4),d1
                move.l  d1,-(sp)
                pea     sub_FFC30640(pc)
                pea     $D8(a4)
                pea     $FA(a4)
                jsr     sub_FFC35C0E
                move.w  d0,d7
                lea     $20(sp),sp

loc_FFC30634:                           ; CODE XREF: sub_FFC30590+5A↑j
                                        ; sub_FFC30590+66↑j
                move.w  d7,d0

loc_FFC30636:                           ; CODE XREF: sub_FFC30590+1A↑j
                                        ; sub_FFC30590+36↑j
                movem.l var_40(a6),d7/a2-a4
                unlk    a6
                rts
; End of function sub_FFC30590


; =============== S U B R O U T I N E =======================================


sub_FFC30640:                           ; DATA XREF: sub_FFC30590+8E↑o
                btst    d0,0(a2)
; End of function sub_FFC30640


; =============== S U B R O U T I N E =======================================


sub_FFC30644:                           ; CODE XREF: sub_FFC303B0+48↑p
                movea.l ($2050).w,a1
                movea.l $114(a1),a1
                jmp     (a1)
; End of function sub_FFC30644

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC30650:                           ; DATA XREF: ROM:FFC06D48↑o

var_30          = -$30
var_2C          = -$2C
arg_0           =  8

                link    a6,#-$2C
                move.l  a4,-(sp)
                movea.l arg_0(a6),a4
                pea     var_2C(a6)
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  d0,-(sp)
                moveq   #0,d1
                move.b  $13C(a4),d1
                moveq   #$6C,d2 ; 'l'
                muls.l  d2,d1
                lea     $147(a4),a0
                pea     (a0,d1.l)
                jsr     sub_FFC35CF6
                movea.l var_30(a6),a4
                unlk    a6
                rts
; End of function sub_FFC30650


; =============== S U B R O U T I N E =======================================


sub_FFC30684:                           ; CODE XREF: sub_FFC30220+B4↑p
                                        ; sub_FFC30450+16↑p ...
                movea.l ($2050).w,a1
                movea.l $118(a1),a1
                jmp     (a1)
; End of function sub_FFC30684

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC30690:                           ; DATA XREF: ROM:FFC06D4C↑o

var_C           = -$C
arg_0           =  8

                link    a6,#0
                movem.l d3/d7/a4,-(sp)
                movea.l arg_0(a6),a4
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  d0,-(sp)
                clr.b   $C0(a4)
                moveq   #0,d1
                move.l  d1,-(sp)
                move.w  $BE(a4),d1
                ext.l   d1
                move.l  d1,-(sp)
                pea     $308(a4)
                pea     $216(a4)
                jsr     sub_FFC357C8
                tst.w   d0
                seq     d3
                neg.b   d3
                ext.w   d3
                move.w  d3,d7
                lea     $18(sp),sp
                beq.s   loc_FFC3070E
                move.b  $342(a4),$C0(a4)
                move.w  $328(a4),$36C(a4)
                move.w  $BE(a4),$364(a4)
                pea     sub_FFC33CE6(pc)
                moveq   #1,d0
                move.l  d0,-(sp)
                pea     $308(a4)
                jsr     sub_FFC3583A
                move.w  d0,d7
                lea     $C(sp),sp
                bne.s   loc_FFC3070E
                pea     sub_FFC33CE6(pc)
                moveq   #1,d0
                move.l  d0,-(sp)
                pea     $34C(a4)
                jsr     sub_FFC3583A
                move.w  d0,d7
                lea     $C(sp),sp

loc_FFC3070E:                           ; CODE XREF: sub_FFC30690+3C↑j
                                        ; sub_FFC30690+66↑j
                move.w  d7,d0
                movem.l var_C(a6),d3/d7/a4
                unlk    a6
                rts
; End of function sub_FFC30690


; =============== S U B R O U T I N E =======================================


sub_FFC3071A:                           ; CODE XREF: sub_FFC303B0+34↑p
                movea.l ($2050).w,a1
                movea.l $11C(a1),a1
                jmp     (a1)
; End of function sub_FFC3071A

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC30730:                           ; DATA XREF: ROM:FFC06D50↑o

var_8           = -8

                link    a6,#0
                movem.l d7/a4,-(sp)
                move.l  d0,d0
                move.w  d0,d7
                jsr     sub_FFC30D10
                movea.l d0,a4
                cmpi.w  #1,d7
                bne.s   loc_FFC30756
                tst.l   $80(a4)
                beq.s   loc_FFC30752
                moveq   #1,d0
                bra.s   loc_FFC3078C
; ---------------------------------------------------------------------------

loc_FFC30752:                           ; CODE XREF: sub_FFC30730+1C↑j
                moveq   #0,d0
                bra.s   loc_FFC3078C
; ---------------------------------------------------------------------------

loc_FFC30756:                           ; CODE XREF: sub_FFC30730+16↑j
                cmpi.w  #2,d7
                bne.s   loc_FFC3077C
                tst.b   7(a4)
                beq.s   loc_FFC30766
                jsr     sub_FFC30492

loc_FFC30766:                           ; CODE XREF: sub_FFC30730+30↑j
                move.l  a4,-(sp)
                jsr     sub_FFC307D4
                clr.b   8(a4)
                clr.b   5(a4)
                clr.w   $BE(a4)
                addq.w  #4,sp
                bra.s   loc_FFC3078A
; ---------------------------------------------------------------------------

loc_FFC3077C:                           ; CODE XREF: sub_FFC30730+2A↑j
                cmpi.w  #3,d7
                bne.s   loc_FFC3078A
                subq.l  #2,sp
                jsr     sub_FFC30210
                addq.w  #2,sp

loc_FFC3078A:                           ; CODE XREF: sub_FFC30730+4A↑j
                                        ; sub_FFC30730+50↑j
                moveq   #0,d0

loc_FFC3078C:                           ; CODE XREF: sub_FFC30730+20↑j
                                        ; sub_FFC30730+24↑j
                movem.l var_8(a6),d7/a4
                unlk    a6
                rts
; End of function sub_FFC30730


; =============== S U B R O U T I N E =======================================


sub_FFC30796:                           ; DATA XREF: sub_FFC30100+D8↑o
                movea.l ($2050).w,a1
                movea.l $120(a1),a1
                jmp     (a1)
; End of function sub_FFC30796


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC307A0:                           ; DATA XREF: ROM:FFC06D54↑o

var_8           = -8
arg_0           =  8

                link    a6,#0
                movem.l a3-a4,-(sp)
                movea.l arg_0(a6),a3
                bra.s   loc_FFC307BA
; ---------------------------------------------------------------------------

loc_FFC307AE:                           ; CODE XREF: sub_FFC307A0+28↓j
                move.l  a4,-(sp)
                moveq   #0,d0
                move.l  d0,-(sp)
                jsr     sub_FFC33352
                addq.w  #8,sp

loc_FFC307BA:                           ; CODE XREF: sub_FFC307A0+C↑j
                pea     $78(a3)
                jsr     sub_FFC2FBC2
                movea.l d0,a4
                move.l  a4,d0
                addq.w  #4,sp
                bne.s   loc_FFC307AE
                movem.l var_8(a6),a3-a4
                unlk    a6
                rts
; End of function sub_FFC307A0


; =============== S U B R O U T I N E =======================================


sub_FFC307D4:                           ; CODE XREF: sub_FFC30220+82↑p
                                        ; sub_FFC30730+38↑p ...
                movea.l ($2050).w,a1
                movea.l $124(a1),a1
                jmp     (a1)
; End of function sub_FFC307D4

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC307E0:                           ; DATA XREF: ROM:FFC06D58↑o

var_C           = -$C
arg_0           =  8
arg_4           =  $C

                link    a6,#0
                movem.l d7/a3-a4,-(sp)
                movea.l arg_4(a6),a3
                movea.l arg_0(a6),a4
                clr.b   d7
                tst.b   9(a4)
                bne.s   loc_FFC3081A
                move.l  a3,d0
                beq.s   loc_FFC30818
                subq.l  #2,sp
                pea     $10A8(a4)
                move.l  a3,-(sp)
                moveq   #0,d0
                move.b  d0,-(sp)
                moveq   #1,d1
                move.b  d1,-(sp)
                jsr     sub_FFC30840
                tst.b   (sp)+
                beq.s   loc_FFC3081A
                moveq   #1,d7
                bra.s   loc_FFC3081A
; ---------------------------------------------------------------------------

loc_FFC30818:                           ; CODE XREF: sub_FFC307E0+1A↑j
                moveq   #1,d7

loc_FFC3081A:                           ; CODE XREF: sub_FFC307E0+16↑j
                                        ; sub_FFC307E0+32↑j ...
                tst.b   d7
                beq.s   loc_FFC3082A
                move.l  a4,-(sp)
                moveq   #0,d0
                move.l  d0,-(sp)
                jsr     sub_FFC33352
                addq.w  #8,sp

loc_FFC3082A:                           ; CODE XREF: sub_FFC307E0+3C↑j
                move.b  d7,d0
                movem.l var_C(a6),d7/a3-a4
                unlk    a6
                rts
; End of function sub_FFC307E0


; =============== S U B R O U T I N E =======================================


sub_FFC30836:                           ; DATA XREF: sub_FFC30850+24↓o
                movea.l ($2050).w,a1
                movea.l $128(a1),a1
                jmp     (a1)
; End of function sub_FFC30836


; =============== S U B R O U T I N E =======================================

; Attributes: thunk

sub_FFC30840:                           ; CODE XREF: sub_FFC307E0+2C↑p
                                        ; sub_FFC308B0+4A↓p ...
                bra.l   sub_FFCC95A0
; End of function sub_FFC30840

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC30850:                           ; DATA XREF: ROM:FFC06D5C↑o

var_1A          = -$1A
var_A           = -$A
var_8           = -8
arg_0           =  8

                link    a6,#0
                movem.l d7/a4,-(sp)
                jsr     sub_FFC30D10
                movea.l d0,a4
                move.l  a4,d0
                bne.s   loc_FFC30868
                move.w  #$FC78,d0
                bra.s   loc_FFC30894
; ---------------------------------------------------------------------------

loc_FFC30868:                           ; CODE XREF: sub_FFC30850+10↑j
                pea     ($2500).w
                move    sr,d0
                move    $C+var_A(sp),sr
                move.w  d0,d7
                pea     sub_FFC30836(pc)
                move.l  arg_0(a6),-(sp)
                pea     $78(a4)
                jsr     sub_FFC2FD20
                ext.l   d7
                move.l  d7,-(sp)
                move    sr,d0
                move    $1C+var_1A(sp),sr
                moveq   #0,d0
                lea     $14(sp),sp

loc_FFC30894:                           ; CODE XREF: sub_FFC30850+16↑j
                movem.l var_8(a6),d7/a4
                unlk    a6
                rts
; End of function sub_FFC30850


; =============== S U B R O U T I N E =======================================


sub_FFC3089E:                           ; CODE XREF: sub_FFC30450+2A↑p
                                        ; DATA XREF: ROM:FFC2FFAC↑o
                movea.l ($2050).w,a1
                movea.l $12C(a1),a1
                jmp     (a1)
; End of function sub_FFC3089E

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC308B0:                           ; DATA XREF: ROM:FFC06D60↑o

var_1A          = -$1A
var_18          = -$18
arg_0           =  8

                link    a6,#-4
                movem.l d6-d7/a2-a4,-(sp)
                movea.l arg_0(a6),a3
                clr.w   d7
                jsr     sub_FFC30D10
                movea.l d0,a2
                move.l  a2,d0
                bne.s   loc_FFC308CC
                moveq   #0,d0
                bra.s   loc_FFC3091C
; ---------------------------------------------------------------------------

loc_FFC308CC:                           ; CODE XREF: sub_FFC308B0+16↑j
                pea     ($2500).w
                move    sr,d0
                move    $1C+var_1A(sp),sr
                move.w  d0,d6
                movea.l $78(a2),a4
                addq.w  #4,sp
                bra.s   loc_FFC3090A
; ---------------------------------------------------------------------------

loc_FFC308E0:                           ; CODE XREF: sub_FFC308B0+5C↓j
                tst.b   9(a4)
                bne.s   loc_FFC30908
                move.l  a3,d0
                beq.s   loc_FFC30906
                subq.l  #2,sp
                pea     $10A8(a4)
                move.l  a3,-(sp)
                moveq   #0,d0
                move.b  d0,-(sp)
                moveq   #1,d1
                move.b  d1,-(sp)
                jsr     sub_FFC30840
                tst.b   (sp)+
                beq.s   loc_FFC30908
                addq.w  #1,d7
                bra.s   loc_FFC30908
; ---------------------------------------------------------------------------

loc_FFC30906:                           ; CODE XREF: sub_FFC308B0+38↑j
                addq.w  #1,d7

loc_FFC30908:                           ; CODE XREF: sub_FFC308B0+34↑j
                                        ; sub_FFC308B0+50↑j ...
                movea.l (a4),a4

loc_FFC3090A:                           ; CODE XREF: sub_FFC308B0+2E↑j
                move.l  a4,d0
                bne.s   loc_FFC308E0
                ext.l   d6
                move.l  d6,-(sp)
                move    sr,d0
                move    $1C+var_1A(sp),sr
                move.w  d7,d0
                addq.w  #4,sp

loc_FFC3091C:                           ; CODE XREF: sub_FFC308B0+1A↑j
                movem.l var_18(a6),d6-d7/a2-a4
                unlk    a6
                rts
; End of function sub_FFC308B0


; =============== S U B R O U T I N E =======================================


sub_FFC30926:                           ; DATA XREF: ROM:FFC2FFAE↑o
                movea.l ($2050).w,a1
                movea.l $130(a1),a1
                jmp     (a1)
; End of function sub_FFC30926


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC30930:                           ; DATA XREF: ROM:FFC06D64↑o
                link    a6,#0
                moveq   #0,d0
                unlk    a6
                rts
; End of function sub_FFC30930


; =============== S U B R O U T I N E =======================================


sub_FFC3093A:                           ; DATA XREF: ROM:FFC2FFAA↑o
                movea.l ($2050).w,a1
                movea.l $134(a1),a1
                jmp     (a1)
; End of function sub_FFC3093A

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC30950:                           ; DATA XREF: ROM:FFC06D68↑o

var_8           = -8
arg_0           =  8
arg_4           =  $C
arg_8           =  $10

                link    a6,#0
                movem.l a3-a4,-(sp)
                movea.l arg_0(a6),a4
                cmpi.l  #'ppc ',arg_4(a6)
                bne.s   loc_FFC30996
                moveq   #0,d0
                move.l  d0,(a4)
                jsr     sub_FFC30D10
                movea.l d0,a3
                move.l  a3,d0
                beq.s   loc_FFC30990
                tst.b   $B(a3)
                beq.s   loc_FFC30980
                addi.l  #$1000,(a4)

loc_FFC30980:                           ; CODE XREF: sub_FFC30950+28↑j
                tst.b   5(a3)
                beq.s   loc_FFC30990
                addq.l  #2,(a4)
                tst.b   7(a3)
                beq.s   loc_FFC30990
                addq.l  #1,(a4)

loc_FFC30990:                           ; CODE XREF: sub_FFC30950+22↑j
                                        ; sub_FFC30950+34↑j ...
                clr.w   arg_8(a6)
                bra.s   loc_FFC3099C
; ---------------------------------------------------------------------------

loc_FFC30996:                           ; CODE XREF: sub_FFC30950+14↑j
                move.w  #$EA52,arg_8(a6)

loc_FFC3099C:                           ; CODE XREF: sub_FFC30950+44↑j
                movem.l var_8(a6),a3-a4
                unlk    a6
                rtd     #8
; End of function sub_FFC30950


; =============== S U B R O U T I N E =======================================


sub_FFC309A8:                           ; DATA XREF: sub_FFC2FA90+4↑o
                movea.l ($2050).w,a1
                movea.l $138(a1),a1
                jmp     (a1)
; End of function sub_FFC309A8

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC309C0:                           ; DATA XREF: ROM:FFC06D6C↑o

var_186         = -$186
var_17E         = -$17E
var_172         = -$172
var_166         = -$166
var_15E         = -$15E
var_15A         = -$15A
var_152         = -$152
var_14A         = -$14A
var_128         = -$128
var_124         = -$124
var_FE          = -$FE
var_46          = -$46
var_20          = -$20
arg_0           =  8

                link    a6,#-$17E
                movem.l a3-a4,-(sp)
                lea     var_20(a6),a3
                movea.l arg_0(a6),a4
                pea     $5B2(a4)
                jsr     sub_FFC30536
                tst.w   $5B2(a4)
                addq.w  #4,sp
                beq.s   loc_FFC30A3E
                clr.b   (a3)
                lea     var_46(a6),a0
                move.l  a0,var_152(a6)
                subq.l  #2,sp
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  a3,-(sp)
                move.l  var_152(a6),-(sp)
                jsr     sub_FFC35E92
                lea     var_124(a6),a0
                move.l  a0,var_15E(a6)
                move.l  #$CC,var_15A(a6)
                move.w  $5B2(a4),var_166(a6)
                moveq   #0,d0
                move.l  d0,var_172(a6)
                move.l  d0,var_14A(a6)
                move.l  d0,var_128(a6)
                moveq   #0,d0
                move.l  d0,-(sp)
                pea     var_17E(a6)
                jsr     sub_FFC35D82
                tst.w   d0
                lea     $A(sp),sp
                bne.s   loc_FFC30A3E
                moveq   #$20,d0 ; ' '
                and.b   var_FE(a6),d0
                beq.s   loc_FFC30A3E
                moveq   #1,d0
                bra.s   loc_FFC30A40
; ---------------------------------------------------------------------------

loc_FFC30A3E:                           ; CODE XREF: sub_FFC309C0+1E↑j
                                        ; sub_FFC309C0+70↑j ...
                moveq   #0,d0

loc_FFC30A40:                           ; CODE XREF: sub_FFC309C0+7C↑j
                movem.l var_186(a6),a3-a4
                unlk    a6
                rts
; End of function sub_FFC309C0


; =============== S U B R O U T I N E =======================================


sub_FFC30A4A:                           ; CODE XREF: sub_FFC30100+94↑p
                                        ; sub_FFC30220+44↑p
                movea.l ($2050).w,a1
                movea.l $13C(a1),a1
                jmp     (a1)
; End of function sub_FFC30A4A

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC30A60:                           ; DATA XREF: ROM:FFC06D70↑o

var_4           = -4

                link    a6,#0
                move.l  a4,-(sp)
                jsr     sub_FFC30D10
                movea.l d0,a4
                jsr     sub_FFC30492
                move.l  a4,-(sp)
                jsr     sub_FFC307D4
                clr.b   8(a4)
                clr.b   5(a4)
                clr.w   $BE(a4)
                movea.l var_4(a6),a4
                unlk    a6
                rts
; End of function sub_FFC30A60


; =============== S U B R O U T I N E =======================================


sub_FFC30A8A:                           ; DATA XREF: sub_FFC2FA90+10↑o
                                        ; sub_FFC30BB0+44↓o
                movea.l ($2050).w,a1
                movea.l $140(a1),a1
                jmp     (a1)
; End of function sub_FFC30A8A

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC30AA0:                           ; DATA XREF: ROM:FFC2FFB4↑o

var_4           = -4

                link    a6,#0
                move.l  a4,-(sp)
                jsr     sub_FFC30D10
                movea.l d0,a4
                move.l  a4,d0
                bne.s   loc_FFC30AB6
                move.w  #$FC78,d0
                bra.s   loc_FFC30AC4
; ---------------------------------------------------------------------------

loc_FFC30AB6:                           ; CODE XREF: sub_FFC30AA0+E↑j
                move.l  a4,-(sp)
                jsr     sub_FFC2FE10
                move.l  a4,-(sp)
                jsr     sub_FFC2FED0
                addq.w  #8,sp

loc_FFC30AC4:                           ; CODE XREF: sub_FFC30AA0+14↑j
                movea.l var_4(a6),a4
                unlk    a6
                rts
; End of function sub_FFC30AA0

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC30AD0:                           ; DATA XREF: ROM:FFC06D74↑o

var_8           = -8
arg_0           =  8

                link    a6,#0
                movem.l a3-a4,-(sp)
                movea.l arg_0(a6),a0
                movea.l $60(a0),a4
                bra.s   loc_FFC30B06
; ---------------------------------------------------------------------------

loc_FFC30AE2:                           ; CODE XREF: sub_FFC30AD0+38↓j
                tst.b   $B(a4)
                beq.s   loc_FFC30B04
                movea.l $64(a4),a3
                move.l  a3,-(sp)
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  d0,-(sp)
                pea     $35(a3)
                jsr     sub_FFC35CF6
                clr.b   $B(a4)
                lea     $10(sp),sp

loc_FFC30B04:                           ; CODE XREF: sub_FFC30AD0+16↑j
                movea.l (a4),a4

loc_FFC30B06:                           ; CODE XREF: sub_FFC30AD0+10↑j
                move.l  a4,d0
                bne.s   loc_FFC30AE2
                movem.l var_8(a6),a3-a4
                unlk    a6
                rts
; End of function sub_FFC30AD0


; =============== S U B R O U T I N E =======================================


sub_FFC30B14:                           ; CODE XREF: sub_FFC30220+C4↑p
                                        ; sub_FFC30450+1C↑p
                movea.l ($2050).w,a1
                movea.l $144(a1),a1
                jmp     (a1)
; End of function sub_FFC30B14

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC30B20:                           ; DATA XREF: ROM:FFC06D78↑o

var_10          = -$10
arg_0           =  8

                link    a6,#0
                movem.l d7/a2-a4,-(sp)
                movea.l arg_0(a6),a2
                movea.l $60(a2),a4
                bra.s   loc_FFC30B70
; ---------------------------------------------------------------------------

loc_FFC30B32:                           ; CODE XREF: sub_FFC30B20+52↓j
                tst.l   $64(a4)
                beq.s   loc_FFC30B6E
                movea.l $64(a4),a3
                move.l  a3,-(sp)
                pea     $2C(a3)
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  d0,-(sp)
                moveq   #0,d1
                move.b  $C0(a2),d1
                move.l  d1,-(sp)
                pea     sub_FFC30B7E(pc)
                pea     $98(a3)
                pea     $FA(a2)
                jsr     sub_FFC35C0E
                move.w  d0,d7
                lea     $20(sp),sp
                bne.s   loc_FFC30B6E
                move.b  #1,$B(a4)

loc_FFC30B6E:                           ; CODE XREF: sub_FFC30B20+16↑j
                                        ; sub_FFC30B20+46↑j
                movea.l (a4),a4

loc_FFC30B70:                           ; CODE XREF: sub_FFC30B20+10↑j
                move.l  a4,d0
                bne.s   loc_FFC30B32
                movem.l var_10(a6),d7/a2-a4
                unlk    a6
                rts
; End of function sub_FFC30B20


; =============== S U B R O U T I N E =======================================


sub_FFC30B7E:                           ; DATA XREF: sub_FFC30B20+30↑o
                btst    d0,0(a2)
; End of function sub_FFC30B7E


; =============== S U B R O U T I N E =======================================


sub_FFC30B82:                           ; CODE XREF: sub_FFC30220+CA↑p
                                        ; sub_FFC303B0+62↑p
                movea.l ($2050).w,a1
                movea.l $148(a1),a1
                jmp     (a1)
; End of function sub_FFC30B82

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC30B90:                           ; DATA XREF: ROM:FFC06D7C↑o

arg_0           =  8
arg_8           =  $10

                link    a6,#0
                movea.l arg_0(a6),a0
                moveq   #0,d0
                move.l  d0,(a0)
                clr.w   arg_8(a6)
                unlk    a6
                rtd     #8
; End of function sub_FFC30B90


; =============== S U B R O U T I N E =======================================


sub_FFC30BA6:                           ; DATA XREF: sub_FFC30BB0+14↓o
                movea.l ($2050).w,a1
                movea.l $14C(a1),a1
                jmp     (a1)
; End of function sub_FFC30BA6


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC30BB0:                           ; DATA XREF: ROM:FFC06D80↑o

var_14          = -$14
var_8           = -8
var_4           = -4

                link    a6,#-8
                movem.l a2-a4,-(sp)
                jsr     sub_FFC30D10
                movea.l d0,a3
                move.l  #$70706320,d0
                lea     sub_FFC30BA6(pc),a1
                movea.l a1,a0
                lea     var_8(a6),a2
                movea.l a2,a1
                move.l  a1,-(sp)
                _ReplaceGestalt
                movea.l (sp)+,a1
                move.l  a0,(a1)
                tst.b   $B(a3)
                beq.w   loc_FFC30CDA
                move.l  a3,-(sp)
                jsr     sub_FFC30684
                pea     $59C(a3)
                jsr     sub_FFC30DAE
                move.l  a3,-(sp)
                jsr     sub_FFC307D4
                pea     sub_FFC30A8A(pc)
                move.w  #4,-(sp)
                _ShutDown
                move.l  #$706F7772,d0
                lea     var_4(a6),a0
                movea.l a0,a1
                _Gestalt
                move.l  a0,(a1)
                tst.w   d0
                lea     $C(sp),sp
                bne.s   loc_FFC30C38
                moveq   #1,d0
                and.l   var_4(a6),d0
                beq.s   loc_FFC30C38
                moveq   #2,d0
                and.l   var_4(a6),d0
                beq.s   loc_FFC30C38
                lea     $5A6(a3),a1
                movea.l a1,a0
                _SleepQRemove
                bra.s   loc_FFC30C38
; ---------------------------------------------------------------------------

loc_FFC30C30:                           ; CODE XREF: sub_FFC30BB0+96↓j
                move.l  a4,-(sp)
                jsr     sub_FFC2FD5E
                addq.w  #4,sp

loc_FFC30C38:                           ; CODE XREF: sub_FFC30BB0+64↑j
                                        ; sub_FFC30BB0+6C↑j ...
                pea     $60(a3)
                jsr     sub_FFC2FBC2
                movea.l d0,a4
                move.l  a4,d0
                addq.w  #4,sp
                bne.s   loc_FFC30C30
                bra.s   loc_FFC30C52
; ---------------------------------------------------------------------------

loc_FFC30C4A:                           ; CODE XREF: sub_FFC30BB0+B0↓j
                move.l  a4,-(sp)
                jsr     sub_FFC2FD5E
                addq.w  #4,sp

loc_FFC30C52:                           ; CODE XREF: sub_FFC30BB0+98↑j
                pea     $6C(a3)
                jsr     sub_FFC2FBC2
                movea.l d0,a4
                move.l  a4,d0
                addq.w  #4,sp
                bne.s   loc_FFC30C4A
                bra.s   loc_FFC30C6C
; ---------------------------------------------------------------------------

loc_FFC30C64:                           ; CODE XREF: sub_FFC30BB0+CA↓j
                move.l  a4,-(sp)
                jsr     sub_FFC2FD5E
                addq.w  #4,sp

loc_FFC30C6C:                           ; CODE XREF: sub_FFC30BB0+B2↑j
                pea     $78(a3)
                jsr     sub_FFC2FBC2
                movea.l d0,a4
                move.l  a4,d0
                addq.w  #4,sp
                bne.s   loc_FFC30C64
                bra.s   loc_FFC30C86
; ---------------------------------------------------------------------------

loc_FFC30C7E:                           ; CODE XREF: sub_FFC30BB0+E4↓j
                move.l  a4,-(sp)
                jsr     sub_FFC2FD5E
                addq.w  #4,sp

loc_FFC30C86:                           ; CODE XREF: sub_FFC30BB0+CC↑j
                pea     $84(a3)
                jsr     sub_FFC2FBC2
                movea.l d0,a4
                move.l  a4,d0
                addq.w  #4,sp
                bne.s   loc_FFC30C7E
                bra.s   loc_FFC30CA0
; ---------------------------------------------------------------------------

loc_FFC30C98:                           ; CODE XREF: sub_FFC30BB0+FE↓j
                move.l  a4,-(sp)
                jsr     sub_FFC2FD5E
                addq.w  #4,sp

loc_FFC30CA0:                           ; CODE XREF: sub_FFC30BB0+E6↑j
                pea     $A8(a3)
                jsr     sub_FFC2FBC2
                movea.l d0,a4
                move.l  a4,d0
                addq.w  #4,sp
                bne.s   loc_FFC30C98
                bra.s   loc_FFC30CBA
; ---------------------------------------------------------------------------

loc_FFC30CB2:                           ; CODE XREF: sub_FFC30BB0+118↓j
                move.l  a4,-(sp)
                jsr     sub_FFC2FD5E
                addq.w  #4,sp

loc_FFC30CBA:                           ; CODE XREF: sub_FFC30BB0+100↑j
                pea     $C(a3)
                jsr     sub_FFC2FBC2
                movea.l d0,a4
                move.l  a4,d0
                addq.w  #4,sp
                bne.s   loc_FFC30CB2
                tst.l   $B4(a3)
                beq.s   loc_FFC30CDA
                move.l  $B4(a3),-(sp)
                jsr     sub_FFC2FD5E
                addq.w  #4,sp

loc_FFC30CDA:                           ; CODE XREF: sub_FFC30BB0+2C↑j
                                        ; sub_FFC30BB0+11E↑j
                moveq   #$2E,d0 ; '.'
                move.l  d0,-(sp)
                moveq   #0,d1
                move.l  d1,-(sp)
                pea     $CC(a3)
                jsr     sub_FFC300B0
                move.l  a3,-(sp)
                jsr     sub_FFC2FED0
                move.l  a3,-(sp)
                jsr     sub_FFC2FD5E
                moveq   #0,d0
                lea     $14(sp),sp
                movem.l var_14(a6),a2-a4
                unlk    a6
                rts
; End of function sub_FFC30BB0


; =============== S U B R O U T I N E =======================================


sub_FFC30D06:                           ; DATA XREF: ROM:FFC2FFB6↑o
                movea.l ($2050).w,a1
                movea.l $150(a1),a1
                jmp     (a1)
; End of function sub_FFC30D06


; =============== S U B R O U T I N E =======================================


sub_FFC30D10:                           ; CODE XREF: sub_FFC30100+8↑p
                                        ; sub_FFC30220+10↑p ...
                lea     ($2B6).w,a1
                movea.l (a1),a1
                move.l  $7C(a1),d0
                rts
; End of function sub_FFC30D10

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================


sub_FFC30D20:                           ; DATA XREF: ROM:FFC06EE8↑o

arg_0           =  4
arg_4           =  8

                movea.l arg_0(sp),a0
                move.l  arg_4(sp),d0
                move.w  d0,$10(a0)
                move.l  $C(a0),d1
                beq.s   locret_FFC30D48
                move.l  a5,-(sp)
                movea.l $16(a0),a5
                link    a6,#0
                move.l  a0,-(sp)
                movea.l d1,a1
                tst.w   d0
                jsr     (a1)
                unlk    a6
                movea.l (sp)+,a5

locret_FFC30D48:                        ; CODE XREF: sub_FFC30D20+10↑j
                rts
; End of function sub_FFC30D20


; =============== S U B R O U T I N E =======================================


sub_FFC30D4A:                           ; CODE XREF: sub_FFC31870+1E↓p
                movea.l ($2050).w,a1
                movea.l $2B8(a1),a1
                jmp     (a1)
; End of function sub_FFC30D4A

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC30D60:                           ; DATA XREF: ROM:FFC06EEC↑o

arg_0           =  8

                link    a6,#0
                moveq   #$17,d0
                movea.l arg_0(a6),a0
                movea.l ($B18).w,a1
                cmpa.w  #$FFFF,a1
                beq.w   loc_FFC30D7A
                jsr     2(a1)

loc_FFC30D7A:                           ; CODE XREF: sub_FFC30D60+12↑j
                unlk    a6
                rts
; End of function sub_FFC30D60


; =============== S U B R O U T I N E =======================================


sub_FFC30D7E:                           ; CODE XREF: sub_FFC30100+AE↑p
                movea.l ($2050).w,a1
                movea.l $2BC(a1),a1
                jmp     (a1)
; End of function sub_FFC30D7E

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC30D90:                           ; DATA XREF: ROM:FFC06EF0↑o

arg_0           =  8

                link    a6,#0
                moveq   #$18,d0
                movea.l arg_0(a6),a0
                movea.l ($B18).w,a1
                cmpa.w  #$FFFF,a1
                beq.w   loc_FFC30DAA
                jsr     2(a1)

loc_FFC30DAA:                           ; CODE XREF: sub_FFC30D90+12↑j
                unlk    a6
                rts
; End of function sub_FFC30D90


; =============== S U B R O U T I N E =======================================


sub_FFC30DAE:                           ; CODE XREF: sub_FFC30BB0+3A↑p
                movea.l ($2050).w,a1
                movea.l $2C0(a1),a1
                jmp     (a1)
; End of function sub_FFC30DAE

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================


sub_FFC30DC0:                           ; DATA XREF: ROM:FFC06EF4↑o

arg_0           =  4

                movea.l arg_0(sp),a0
                movea.l $C(a0),a1
                move.w  $10(a0),d0
                jmp     (a1)
; End of function sub_FFC30DC0


; =============== S U B R O U T I N E =======================================


sub_FFC30DCE:                           ; CODE XREF: sub_FFC31C70+88↓p
                                        ; sub_FFC31D20+24↓p
                movea.l ($2050).w,a1
                movea.l $2C4(a1),a1
                jmp     (a1)
; End of function sub_FFC30DCE

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC30DE0:                           ; DATA XREF: ROM:FFC06CD4↑o

var_18          = -$18
var_8           = -8
arg_0           =  8

                link    a6,#-$C
                movem.l a2-a4,-(sp)
                movea.l arg_0(a6),a4
                pea     var_8(a6)
                move.l  a4,-(sp)
                jsr     sub_FFC31738
                tst.b   d0
                addq.w  #8,sp
                beq.w   loc_FFC30F92
                move.w  #1,4(a4)
                clr.b   $37(a4)
                clr.w   $26(a4)
                movea.l $32(a4),a2
                tst.b   $2D(a4)
                beq.s   loc_FFC30E28
                move.l  #$FFFFFC73,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC318F4
                addq.w  #8,sp
                bra.w   loc_FFC30F92
; ---------------------------------------------------------------------------

loc_FFC30E28:                           ; CODE XREF: sub_FFC30DE0+34↑j
                move.l  $2E(a4),-(sp)
                jsr     sub_FFC31F1A
                tst.b   d0
                addq.w  #4,sp
                bne.s   loc_FFC30E48
                move.l  #$FFFFFC69,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC318F4
                addq.w  #8,sp
                bra.w   loc_FFC30F92
; ---------------------------------------------------------------------------

loc_FFC30E48:                           ; CODE XREF: sub_FFC30DE0+54↑j
                move.l  var_8(a6),-(sp)
                move.l  $2E(a4),-(sp)
                jsr     sub_FFC31EBC
                tst.l   d0
                addq.w  #8,sp
                beq.s   loc_FFC30E6C
                move.l  #$FFFFFC72,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC318F4
                addq.w  #8,sp
                bra.w   loc_FFC30F92
; ---------------------------------------------------------------------------

loc_FFC30E6C:                           ; CODE XREF: sub_FFC30DE0+78↑j
                moveq   #0,d0
                move.b  $2C(a4),d0
                cmpi.w  #1,d0
                beq.s   loc_FFC30E8A
                move.l  #$FFFFFC5E,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC318F4
                addq.w  #8,sp
                bra.w   loc_FFC30F92
; ---------------------------------------------------------------------------

loc_FFC30E8A:                           ; CODE XREF: sub_FFC30DE0+96↑j
                tst.b   $36(a4)
                beq.s   loc_FFC30EFA
                tst.l   $32(a4)
                beq.s   loc_FFC30EFA
                moveq   #2,d0
                cmp.w   (a2),d0
                beq.s   loc_FFC30EAE
                move.l  #$FFFFFC7A,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC318F4
                addq.w  #8,sp
                bra.w   loc_FFC30F92
; ---------------------------------------------------------------------------

loc_FFC30EAE:                           ; CODE XREF: sub_FFC30DE0+BA↑j
                moveq   #0,d0
                move.b  2(a2),d0
                cmpi.b  #$20,d0 ; ' '
                bhi.s   loc_FFC30EC4
                moveq   #0,d0
                move.b  2(a2),d0
                tst.l   d0
                bne.s   loc_FFC30ED6

loc_FFC30EC4:                           ; CODE XREF: sub_FFC30DE0+D8↑j
                move.l  #$FFFFFC5D,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC318F4
                addq.w  #8,sp
                bra.w   loc_FFC30F92
; ---------------------------------------------------------------------------

loc_FFC30ED6:                           ; CODE XREF: sub_FFC30DE0+E2↑j
                move.l  var_8(a6),-(sp)
                move.l  $32(a4),-(sp)
                jsr     sub_FFC31B0C
                tst.b   d0
                addq.w  #8,sp
                beq.s   loc_FFC30EFA
                move.l  #$FFFFFBFD,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC318F4
                addq.w  #8,sp
                bra.w   loc_FFC30F92
; ---------------------------------------------------------------------------

loc_FFC30EFA:                           ; CODE XREF: sub_FFC30DE0+AE↑j
                                        ; sub_FFC30DE0+B4↑j ...
                move.l  var_8(a6),-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC3222E
                movea.l d0,a3
                move.l  a3,d0
                addq.w  #8,sp
                bne.s   loc_FFC30F1C
                move.l  #$FFFFFC79,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC318F4
                addq.w  #8,sp
                bra.s   loc_FFC30F92
; ---------------------------------------------------------------------------

loc_FFC30F1C:                           ; CODE XREF: sub_FFC30DE0+12A↑j
                tst.l   $64(a3)
                beq.s   loc_FFC30F7C
                movea.l var_8(a6),a0
                tst.b   7(a0)
                beq.s   loc_FFC30F64
                movea.l $64(a3),a1
                move.l  a1,-(sp)
                move.l  a1,-(sp)
                pea     $2C(a1)
                pea     sub_FFC31860(pc)
                moveq   #1,d0
                move.l  d0,-(sp)
                moveq   #0,d1
                move.b  $C0(a0),d1
                move.l  d1,-(sp)
                pea     sub_FFC30FAC(pc)
                pea     $98(a1)
                movea.l var_8(a6),a0
                pea     $FA(a0)
                jsr     sub_FFC35C0E
                lea     $20(sp),sp
                movea.l (sp)+,a1
                bra.s   loc_FFC30F92
; ---------------------------------------------------------------------------

loc_FFC30F64:                           ; CODE XREF: sub_FFC30DE0+14A↑j
                moveq   #0,d0
                move.l  d0,$18(a3)
                move.l  a1,-(sp)
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC318F4
                addq.l  #8,sp
                movea.l (sp)+,a1
                bra.s   loc_FFC30F92
; ---------------------------------------------------------------------------

loc_FFC30F7C:                           ; CODE XREF: sub_FFC30DE0+140↑j
                moveq   #0,d0
                move.l  d0,$18(a3)
                move.l  a1,-(sp)
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC318F4
                addq.l  #8,sp
                movea.l (sp)+,a1

loc_FFC30F92:                           ; CODE XREF: sub_FFC30DE0+1A↑j
                                        ; sub_FFC30DE0+44↑j ...
                move.l  a1,-(sp)
                move.l  var_8(a6),-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC3180A
                addq.l  #8,sp
                movea.l (sp)+,a1
                movem.l var_18(a6),a2-a4
                unlk    a6
                rts
; End of function sub_FFC30DE0


; =============== S U B R O U T I N E =======================================


sub_FFC30FAC:                           ; DATA XREF: sub_FFC30DE0+168↑o
                btst    d0,0(a2)

loc_FFC30FB0:                           ; DATA XREF: ROM:FFC2FFBA↑o
                movea.l ($2050).w,a1
                movea.l $A4(a1),a1
                jmp     (a1)
; End of function sub_FFC30FAC

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC30FC0:                           ; DATA XREF: ROM:FFC06CD8↑o

var_10          = -$10
var_4           = -4
arg_0           =  8

                link    a6,#-4
                movem.l d7/a3-a4,-(sp)
                movea.l arg_0(a6),a4
                pea     var_4(a6)
                move.l  a4,-(sp)
                jsr     sub_FFC31738
                tst.b   d0
                addq.w  #8,sp
                beq.w   loc_FFC31072
                move.w  #2,4(a4)
                move.l  $2E(a4),-(sp)
                jsr     sub_FFC31F1A
                tst.b   d0
                addq.w  #4,sp
                bne.s   loc_FFC31002
                move.l  #$FFFFFC69,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC318F4
                addq.w  #8,sp
                bra.s   loc_FFC31072
; ---------------------------------------------------------------------------

loc_FFC31002:                           ; CODE XREF: sub_FFC30FC0+30↑j
                moveq   #0,d0
                move.b  $2C(a4),d0
                cmpi.w  #1,d0
                beq.s   loc_FFC3101E
                move.l  #$FFFFFC5E,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC318F4
                addq.w  #8,sp
                bra.s   loc_FFC31072
; ---------------------------------------------------------------------------

loc_FFC3101E:                           ; CODE XREF: sub_FFC30FC0+4C↑j
                move.l  var_4(a6),-(sp)
                move.w  $26(a4),d0
                ext.l   d0
                move.l  d0,-(sp)
                jsr     sub_FFC320E4
                movea.l d0,a3
                move.l  a3,d0
                addq.w  #8,sp
                bne.s   loc_FFC31046
                move.l  #$FFFFFC79,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC318F4
                addq.w  #8,sp
                bra.s   loc_FFC31072
; ---------------------------------------------------------------------------

loc_FFC31046:                           ; CODE XREF: sub_FFC30FC0+74↑j
                move.l  $32(a4),-(sp)
                jsr     sub_FFC3196A
                move.w  d0,d7
                addq.w  #4,sp
                beq.s   loc_FFC31062
                ext.l   d7
                move.l  d7,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC318F4
                addq.w  #8,sp
                bra.s   loc_FFC31072
; ---------------------------------------------------------------------------

loc_FFC31062:                           ; CODE XREF: sub_FFC30FC0+92↑j
                move.l  a3,-(sp)
                move.l  a4,-(sp)
                move.l  var_4(a6),-(sp)
                jsr     sub_FFC31B92
                lea     $C(sp),sp

loc_FFC31072:                           ; CODE XREF: sub_FFC30FC0+1A↑j
                                        ; sub_FFC30FC0+40↑j ...
                move.l  var_4(a6),-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC3180A
                addq.w  #8,sp
                movem.l var_10(a6),d7/a3-a4
                unlk    a6
                rts
; End of function sub_FFC30FC0


; =============== S U B R O U T I N E =======================================


sub_FFC31088:                           ; DATA XREF: ROM:FFC2FFBC↑o
                movea.l ($2050).w,a1
                movea.l $A8(a1),a1
                jmp     (a1)
; End of function sub_FFC31088

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC310A0:                           ; DATA XREF: ROM:FFC06CDC↑o

var_C           = -$C
var_4           = -4
arg_0           =  8

                link    a6,#-4
                movem.l a3-a4,-(sp)
                movea.l arg_0(a6),a4
                pea     var_4(a6)
                move.l  a4,-(sp)
                jsr     sub_FFC31738
                tst.b   d0
                addq.w  #8,sp
                beq.s   loc_FFC310F4
                move.w  #3,4(a4)
                move.l  var_4(a6),-(sp)
                move.w  $26(a4),d0
                ext.l   d0
                move.l  d0,-(sp)
                jsr     sub_FFC320E4
                movea.l d0,a3
                move.l  a3,d0
                addq.w  #8,sp
                bne.s   loc_FFC310EA
                move.l  #$FFFFFC79,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC318F4
                addq.w  #8,sp
                bra.s   loc_FFC310F4
; ---------------------------------------------------------------------------

loc_FFC310EA:                           ; CODE XREF: sub_FFC310A0+38↑j
                move.l  a3,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC322B8
                addq.w  #8,sp

loc_FFC310F4:                           ; CODE XREF: sub_FFC310A0+1A↑j
                                        ; sub_FFC310A0+48↑j
                move.l  var_4(a6),-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC3180A
                addq.w  #8,sp
                movem.l var_C(a6),a3-a4
                unlk    a6
                rts
; End of function sub_FFC310A0


; =============== S U B R O U T I N E =======================================


sub_FFC3110A:                           ; DATA XREF: ROM:FFC2FFBE↑o
                movea.l ($2050).w,a1
                movea.l $AC(a1),a1
                jmp     (a1)
; End of function sub_FFC3110A

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC31120:                           ; DATA XREF: ROM:FFC06CE0↑o

var_C           = -$C
var_4           = -4
arg_0           =  8

                link    a6,#-4
                movem.l a3-a4,-(sp)
                movea.l arg_0(a6),a4
                pea     var_4(a6)
                move.l  a4,-(sp)
                jsr     sub_FFC31738
                tst.b   d0
                addq.w  #8,sp
                beq.w   loc_FFC311E0
                move.w  #4,4(a4)
                move.l  var_4(a6),-(sp)
                move.l  $28(a4),-(sp)
                jsr     sub_FFC32584
                movea.l d0,a3
                move.l  a3,d0
                addq.w  #8,sp
                bne.s   loc_FFC31168
                move.l  #$FFFFFC74,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC318F4
                addq.w  #8,sp
                bra.s   loc_FFC311E0
; ---------------------------------------------------------------------------

loc_FFC31168:                           ; CODE XREF: sub_FFC31120+36↑j
                moveq   #0,d0
                move.w  4(a3),d0
                moveq   #7,d1
                cmp.l   d0,d1
                beq.s   loc_FFC311A0
                moveq   #0,d0
                move.w  4(a3),d0
                moveq   #9,d1
                cmp.l   d0,d1
                bne.s   loc_FFC31190
                move.l  #$FFFFFC74,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC318F4
                addq.w  #8,sp
                bra.s   loc_FFC311E0
; ---------------------------------------------------------------------------

loc_FFC31190:                           ; CODE XREF: sub_FFC31120+5E↑j
                move.l  #$FFFFFC73,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC318F4
                addq.w  #8,sp
                bra.s   loc_FFC311E0
; ---------------------------------------------------------------------------

loc_FFC311A0:                           ; CODE XREF: sub_FFC31120+52↑j
                moveq   #0,d0
                move.b  6(a3),d0
                tst.l   d0
                bne.s   loc_FFC311BC
                move.l  var_4(a6),-(sp)
                move.l  a3,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC32B14
                lea     $C(sp),sp
                bra.s   loc_FFC311E0
; ---------------------------------------------------------------------------

loc_FFC311BC:                           ; CODE XREF: sub_FFC31120+88↑j
                moveq   #0,d0
                move.b  6(a3),d0
                cmpi.w  #1,d0
                bne.s   loc_FFC311D4
                move.l  a3,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC331FC
                addq.w  #8,sp
                bra.s   loc_FFC311E0
; ---------------------------------------------------------------------------

loc_FFC311D4:                           ; CODE XREF: sub_FFC31120+A6↑j
                moveq   #$FFFFFFCE,d0
                move.l  d0,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC318F4
                addq.w  #8,sp

loc_FFC311E0:                           ; CODE XREF: sub_FFC31120+1A↑j
                                        ; sub_FFC31120+46↑j ...
                move.l  var_4(a6),-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC3180A
                addq.w  #8,sp
                movem.l var_C(a6),a3-a4
                unlk    a6
                rts
; End of function sub_FFC31120


; =============== S U B R O U T I N E =======================================


sub_FFC311F6:                           ; DATA XREF: ROM:FFC2FFC0↑o
                movea.l ($2050).w,a1
                movea.l $B0(a1),a1
                jmp     (a1)
; End of function sub_FFC311F6


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC31200:                           ; DATA XREF: ROM:FFC06CE4↑o

var_C           = -$C
var_4           = -4
arg_0           =  8

                link    a6,#-4
                movem.l a3-a4,-(sp)
                movea.l arg_0(a6),a4
                pea     var_4(a6)
                move.l  a4,-(sp)
                jsr     sub_FFC31738
                tst.b   d0
                addq.w  #8,sp
                beq.w   loc_FFC312C0
                move.w  #5,4(a4)
                move.l  var_4(a6),-(sp)
                move.l  $28(a4),-(sp)
                jsr     sub_FFC32584
                movea.l d0,a3
                move.l  a3,d0
                addq.w  #8,sp
                bne.s   loc_FFC31248
                move.l  #$FFFFFC74,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC318F4
                addq.w  #8,sp
                bra.s   loc_FFC312C0
; ---------------------------------------------------------------------------

loc_FFC31248:                           ; CODE XREF: sub_FFC31200+36↑j
                moveq   #0,d0
                move.w  4(a3),d0
                moveq   #7,d1
                cmp.l   d0,d1
                beq.s   loc_FFC31280
                moveq   #0,d0
                move.w  4(a3),d0
                moveq   #9,d1
                cmp.l   d0,d1
                bne.s   loc_FFC31270
                move.l  #$FFFFFC74,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC318F4
                addq.w  #8,sp
                bra.s   loc_FFC312C0
; ---------------------------------------------------------------------------

loc_FFC31270:                           ; CODE XREF: sub_FFC31200+5E↑j
                move.l  #$FFFFFC73,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC318F4
                addq.w  #8,sp
                bra.s   loc_FFC312C0
; ---------------------------------------------------------------------------

loc_FFC31280:                           ; CODE XREF: sub_FFC31200+52↑j
                moveq   #0,d0
                move.b  6(a3),d0
                tst.l   d0
                bne.s   loc_FFC3129C
                move.l  var_4(a6),-(sp)
                move.l  a3,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC32BA4
                lea     $C(sp),sp
                bra.s   loc_FFC312C0
; ---------------------------------------------------------------------------

loc_FFC3129C:                           ; CODE XREF: sub_FFC31200+88↑j
                moveq   #0,d0
                move.b  6(a3),d0
                cmpi.w  #1,d0
                bne.s   loc_FFC312B4
                move.l  a3,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC33244
                addq.w  #8,sp
                bra.s   loc_FFC312C0
; ---------------------------------------------------------------------------

loc_FFC312B4:                           ; CODE XREF: sub_FFC31200+A6↑j
                moveq   #$FFFFFFCE,d0
                move.l  d0,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC318F4
                addq.w  #8,sp

loc_FFC312C0:                           ; CODE XREF: sub_FFC31200+1A↑j
                                        ; sub_FFC31200+46↑j ...
                move.l  var_4(a6),-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC3180A
                addq.w  #8,sp
                movem.l var_C(a6),a3-a4
                unlk    a6
                rts
; End of function sub_FFC31200


; =============== S U B R O U T I N E =======================================


sub_FFC312D6:                           ; DATA XREF: ROM:FFC2FFC2↑o
                movea.l ($2050).w,a1
                movea.l $B4(a1),a1
                jmp     (a1)
; End of function sub_FFC312D6


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC312E0:                           ; DATA XREF: ROM:FFC06CE8↑o

var_C           = -$C
var_4           = -4
arg_0           =  8

                link    a6,#-4
                movem.l a3-a4,-(sp)
                movea.l arg_0(a6),a4
                pea     var_4(a6)
                move.l  a4,-(sp)
                jsr     sub_FFC31738
                tst.b   d0
                addq.w  #8,sp
                beq.w   loc_FFC313A6
                move.w  #6,4(a4)
                moveq   #0,d0
                move.l  d0,$30(a4)
                move.l  var_4(a6),-(sp)
                move.l  $28(a4),-(sp)
                jsr     sub_FFC32584
                movea.l d0,a3
                move.l  a3,d0
                addq.w  #8,sp
                bne.s   loc_FFC3132E
                move.l  #$FFFFFC74,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC318F4
                addq.w  #8,sp
                bra.s   loc_FFC313A6
; ---------------------------------------------------------------------------

loc_FFC3132E:                           ; CODE XREF: sub_FFC312E0+3C↑j
                moveq   #0,d0
                move.w  4(a3),d0
                moveq   #8,d1
                cmp.l   d0,d1
                beq.s   loc_FFC31366
                moveq   #0,d0
                move.w  4(a3),d0
                moveq   #9,d1
                cmp.l   d0,d1
                bne.s   loc_FFC31356
                move.l  #$FFFFFC74,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC318F4
                addq.w  #8,sp
                bra.s   loc_FFC313A6
; ---------------------------------------------------------------------------

loc_FFC31356:                           ; CODE XREF: sub_FFC312E0+64↑j
                move.l  #$FFFFFC73,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC318F4
                addq.w  #8,sp
                bra.s   loc_FFC313A6
; ---------------------------------------------------------------------------

loc_FFC31366:                           ; CODE XREF: sub_FFC312E0+58↑j
                moveq   #0,d0
                move.b  6(a3),d0
                tst.l   d0
                bne.s   loc_FFC31382
                move.l  var_4(a6),-(sp)
                move.l  a3,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC32C3A
                lea     $C(sp),sp
                bra.s   loc_FFC313A6
; ---------------------------------------------------------------------------

loc_FFC31382:                           ; CODE XREF: sub_FFC312E0+8E↑j
                moveq   #0,d0
                move.b  6(a3),d0
                cmpi.w  #1,d0
                bne.s   loc_FFC3139A
                move.l  a3,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC332B6
                addq.w  #8,sp
                bra.s   loc_FFC313A6
; ---------------------------------------------------------------------------

loc_FFC3139A:                           ; CODE XREF: sub_FFC312E0+AC↑j
                moveq   #$FFFFFFCE,d0
                move.l  d0,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC318F4
                addq.w  #8,sp

loc_FFC313A6:                           ; CODE XREF: sub_FFC312E0+1A↑j
                                        ; sub_FFC312E0+4C↑j ...
                move.l  var_4(a6),-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC3180A
                addq.w  #8,sp
                movem.l var_C(a6),a3-a4
                unlk    a6
                rts
; End of function sub_FFC312E0


; =============== S U B R O U T I N E =======================================


sub_FFC313BC:                           ; DATA XREF: ROM:FFC2FFC4↑o
                movea.l ($2050).w,a1
                movea.l $B8(a1),a1
                jmp     (a1)
; End of function sub_FFC313BC

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC313D0:                           ; DATA XREF: ROM:FFC06CEC↑o

var_C           = -$C
var_4           = -4
arg_0           =  8

                link    a6,#-4
                movem.l a3-a4,-(sp)
                movea.l arg_0(a6),a4
                pea     var_4(a6)
                move.l  a4,-(sp)
                jsr     sub_FFC31738
                tst.b   d0
                addq.w  #8,sp
                beq.w   loc_FFC31496
                move.w  #7,4(a4)
                moveq   #0,d0
                move.l  d0,$30(a4)
                move.l  var_4(a6),-(sp)
                move.l  $28(a4),-(sp)
                jsr     sub_FFC32584
                movea.l d0,a3
                move.l  a3,d0
                addq.w  #8,sp
                bne.s   loc_FFC3141E
                move.l  #$FFFFFC74,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC318F4
                addq.w  #8,sp
                bra.s   loc_FFC31496
; ---------------------------------------------------------------------------

loc_FFC3141E:                           ; CODE XREF: sub_FFC313D0+3C↑j
                moveq   #0,d0
                move.w  4(a3),d0
                moveq   #8,d1
                cmp.l   d0,d1
                beq.s   loc_FFC31456
                moveq   #0,d0
                move.w  4(a3),d0
                moveq   #9,d1
                cmp.l   d0,d1
                bne.s   loc_FFC31446
                move.l  #$FFFFFC74,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC318F4
                addq.w  #8,sp
                bra.s   loc_FFC31496
; ---------------------------------------------------------------------------

loc_FFC31446:                           ; CODE XREF: sub_FFC313D0+64↑j
                move.l  #$FFFFFC73,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC318F4
                addq.w  #8,sp
                bra.s   loc_FFC31496
; ---------------------------------------------------------------------------

loc_FFC31456:                           ; CODE XREF: sub_FFC313D0+58↑j
                moveq   #0,d0
                move.b  6(a3),d0
                tst.l   d0
                bne.s   loc_FFC31472
                move.l  var_4(a6),-(sp)
                move.l  a3,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC32CCA
                lea     $C(sp),sp
                bra.s   loc_FFC31496
; ---------------------------------------------------------------------------

loc_FFC31472:                           ; CODE XREF: sub_FFC313D0+8E↑j
                moveq   #0,d0
                move.b  6(a3),d0
                cmpi.w  #1,d0
                bne.s   loc_FFC3148A
                move.l  a3,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC33326
                addq.w  #8,sp
                bra.s   loc_FFC31496
; ---------------------------------------------------------------------------

loc_FFC3148A:                           ; CODE XREF: sub_FFC313D0+AC↑j
                moveq   #$FFFFFFCE,d0
                move.l  d0,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC318F4
                addq.w  #8,sp

loc_FFC31496:                           ; CODE XREF: sub_FFC313D0+1A↑j
                                        ; sub_FFC313D0+4C↑j ...
                move.l  var_4(a6),-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC3180A
                addq.w  #8,sp
                movem.l var_C(a6),a3-a4
                unlk    a6
                rts
; End of function sub_FFC313D0


; =============== S U B R O U T I N E =======================================


sub_FFC314AC:                           ; DATA XREF: ROM:FFC2FFC6↑o
                movea.l ($2050).w,a1
                movea.l $BC(a1),a1
                jmp     (a1)
; End of function sub_FFC314AC

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC314C0:                           ; DATA XREF: ROM:FFC06CF0↑o

var_C           = -$C
var_4           = -4
arg_0           =  8

                link    a6,#-4
                movem.l a3-a4,-(sp)
                movea.l arg_0(a6),a4
                pea     var_4(a6)
                move.l  a4,-(sp)
                jsr     sub_FFC31738
                tst.b   d0
                addq.w  #8,sp
                beq.w   loc_FFC31584
                move.w  #8,4(a4)
                move.l  var_4(a6),-(sp)
                move.l  $28(a4),-(sp)
                jsr     sub_FFC32584
                movea.l d0,a3
                move.l  a3,d0
                addq.w  #8,sp
                beq.s   loc_FFC31576
                moveq   #0,d0
                move.w  4(a3),d0
                moveq   #8,d1
                cmp.l   d0,d1
                bne.s   loc_FFC31566
                moveq   #0,d0
                move.b  6(a3),d0
                tst.l   d0
                bne.s   loc_FFC3152E
                move.l  var_4(a6),-(sp)
                move.l  $28(a4),-(sp)
                jsr     sub_FFC325D0
                movea.l d0,a3
                move.l  var_4(a6),-(sp)
                move.l  a3,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC32DBC
                lea     $14(sp),sp
                bra.s   loc_FFC31584
; ---------------------------------------------------------------------------

loc_FFC3152E:                           ; CODE XREF: sub_FFC314C0+4C↑j
                moveq   #0,d0
                move.b  6(a3),d0
                cmpi.w  #1,d0
                bne.s   loc_FFC31556
                move.l  var_4(a6),-(sp)
                move.l  $28(a4),-(sp)
                jsr     sub_FFC325D0
                movea.l d0,a3
                move.l  a3,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC33352
                lea     $10(sp),sp
                bra.s   loc_FFC31584
; ---------------------------------------------------------------------------

loc_FFC31556:                           ; CODE XREF: sub_FFC314C0+78↑j
                move.l  #$FFFFFC74,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC318F4
                addq.w  #8,sp
                bra.s   loc_FFC31584
; ---------------------------------------------------------------------------

loc_FFC31566:                           ; CODE XREF: sub_FFC314C0+42↑j
                move.l  #$FFFFFC74,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC318F4
                addq.w  #8,sp
                bra.s   loc_FFC31584
; ---------------------------------------------------------------------------

loc_FFC31576:                           ; CODE XREF: sub_FFC314C0+36↑j
                move.l  #$FFFFFC74,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC318F4
                addq.w  #8,sp

loc_FFC31584:                           ; CODE XREF: sub_FFC314C0+1A↑j
                                        ; sub_FFC314C0+6C↑j ...
                move.l  var_4(a6),-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC3180A
                addq.w  #8,sp
                movem.l var_C(a6),a3-a4
                unlk    a6
                rts
; End of function sub_FFC314C0


; =============== S U B R O U T I N E =======================================


sub_FFC3159A:                           ; DATA XREF: ROM:FFC2FFC8↑o
                movea.l ($2050).w,a1
                movea.l $C0(a1),a1
                jmp     (a1)
; End of function sub_FFC3159A

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC315B0:                           ; DATA XREF: ROM:FFC06CF4↑o

var_C           = -$C
var_4           = -4
arg_0           =  8

                link    a6,#-4
                movem.l a3-a4,-(sp)
                movea.l arg_0(a6),a4
                pea     var_4(a6)
                move.l  a4,-(sp)
                jsr     sub_FFC31738
                tst.b   d0
                addq.w  #8,sp
                beq.s   loc_FFC3160A
                move.w  #9,4(a4)
                move.l  var_4(a6),-(sp)
                move.w  $26(a4),d0
                ext.l   d0
                move.l  d0,-(sp)
                jsr     sub_FFC320B0
                movea.l d0,a3
                move.l  a3,d0
                addq.w  #8,sp
                beq.s   loc_FFC315FC
                move.l  var_4(a6),-(sp)
                move.l  a3,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC31DE2
                lea     $C(sp),sp
                bra.s   loc_FFC3160A
; ---------------------------------------------------------------------------

loc_FFC315FC:                           ; CODE XREF: sub_FFC315B0+38↑j
                move.l  #$FFFFFC79,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC318F4
                addq.w  #8,sp

loc_FFC3160A:                           ; CODE XREF: sub_FFC315B0+1A↑j
                                        ; sub_FFC315B0+4A↑j
                move.l  var_4(a6),-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC3180A
                addq.w  #8,sp
                movem.l var_C(a6),a3-a4
                unlk    a6
                rts
; End of function sub_FFC315B0


; =============== S U B R O U T I N E =======================================


sub_FFC31620:                           ; DATA XREF: ROM:FFC2FFCA↑o
                movea.l ($2050).w,a1
                movea.l $C4(a1),a1
                jmp     (a1)
; End of function sub_FFC31620

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC31630:                           ; DATA XREF: ROM:FFC06CF8↑o

var_C           = -$C
var_4           = -4
arg_0           =  8

                link    a6,#-4
                movem.l d7/a4,-(sp)
                movea.l arg_0(a6),a4
                pea     var_4(a6)
                move.l  a4,-(sp)
                jsr     sub_FFC31738
                tst.b   d0
                addq.w  #8,sp
                beq.s   loc_FFC3169E
                move.w  #$A,4(a4)
                move.l  $2E(a4),-(sp)
                jsr     sub_FFC31F1A
                tst.b   d0
                addq.w  #4,sp
                bne.s   loc_FFC31670
                move.l  #$FFFFFC69,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC318F4
                addq.w  #8,sp
                bra.s   loc_FFC3169E
; ---------------------------------------------------------------------------

loc_FFC31670:                           ; CODE XREF: sub_FFC31630+2E↑j
                move.l  $32(a4),-(sp)
                jsr     sub_FFC3196A
                move.w  d0,d7
                addq.w  #4,sp
                beq.s   loc_FFC3168C
                ext.l   d7
                move.l  d7,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC318F4
                addq.w  #8,sp
                bra.s   loc_FFC3169E
; ---------------------------------------------------------------------------

loc_FFC3168C:                           ; CODE XREF: sub_FFC31630+4C↑j
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  a4,-(sp)
                move.l  var_4(a6),-(sp)
                jsr     sub_FFC31B92
                lea     $C(sp),sp

loc_FFC3169E:                           ; CODE XREF: sub_FFC31630+1A↑j
                                        ; sub_FFC31630+3E↑j ...
                move.l  var_4(a6),-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC3180A
                addq.w  #8,sp
                movem.l var_C(a6),d7/a4
                unlk    a6
                rts
; End of function sub_FFC31630


; =============== S U B R O U T I N E =======================================


sub_FFC316B4:                           ; DATA XREF: ROM:FFC2FFCC↑o
                movea.l ($2050).w,a1
                movea.l $C8(a1),a1
                jmp     (a1)
; End of function sub_FFC316B4

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC316C0:                           ; DATA XREF: ROM:FFC06CFC↑o

var_10          = -$10
arg_0           =  8
arg_4           =  $C

                link    a6,#0
                movem.l d7/a2-a4,-(sp)
                movea.l arg_0(a6),a2
                move.l  d1,d0
                move.w  d0,d7
                jsr     sub_FFC30D10
                movea.l d0,a3
                movea.l arg_4(a6),a0
                move.l  a3,(a0)
                beq.s   loc_FFC3172C
                lea     $12(a2),a4
                move.l  a5,d0
                move.l  d0,4(a4)
                moveq   #0,d0
                move.w  d7,d0
                move.w  #$400,d1
                and.w   d0,d1
                beq.s   loc_FFC316F8
                moveq   #1,d0
                bra.s   loc_FFC316FA
; ---------------------------------------------------------------------------

loc_FFC316F8:                           ; CODE XREF: sub_FFC316C0+32↑j
                moveq   #0,d0

loc_FFC316FA:                           ; CODE XREF: sub_FFC316C0+36↑j
                move.b  d0,(a4)
                tst.b   $B(a3)
                bne.s   loc_FFC31714
                move.l  #$FFFFFC7C,-(sp)
                move.l  a2,-(sp)
                jsr     sub_FFC318F4
                moveq   #0,d0
                addq.w  #8,sp
                bra.s   loc_FFC3172E
; ---------------------------------------------------------------------------

loc_FFC31714:                           ; CODE XREF: sub_FFC316C0+40↑j
                move.w  #1,$10(a2)
                addq.l  #1,(a3)
                tst.b   (a4)
                bne.s   loc_FFC31728
                move.l  a3,-(sp)
                jsr     sub_FFC2FE10
                addq.w  #4,sp

loc_FFC31728:                           ; CODE XREF: sub_FFC316C0+5E↑j
                moveq   #1,d0
                bra.s   loc_FFC3172E
; ---------------------------------------------------------------------------

loc_FFC3172C:                           ; CODE XREF: sub_FFC316C0+1C↑j
                moveq   #0,d0

loc_FFC3172E:                           ; CODE XREF: sub_FFC316C0+52↑j
                                        ; sub_FFC316C0+6A↑j
                movem.l var_10(a6),d7/a2-a4
                unlk    a6
                rts
; End of function sub_FFC316C0


; =============== S U B R O U T I N E =======================================


sub_FFC31738:                           ; CODE XREF: sub_FFC30DE0+12↑p
                                        ; sub_FFC30FC0+12↑p ...
                movea.l ($2050).w,a1
                movea.l $CC(a1),a1
                jmp     (a1)
; End of function sub_FFC31738

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC31750:                           ; DATA XREF: ROM:FFC06D00↑o

var_16          = -$16
var_14          = -$14
arg_0           =  8
arg_4           =  $C

                link    a6,#0
                movem.l d3/d6-d7/a3-a4,-(sp)
                movea.l arg_4(a6),a4
                movea.l arg_0(a6),a0
                move.w  $10(a0),d6
                move.l  a4,d0
                beq.w   loc_FFC317EC
                moveq   #1,d0
                cmp.l   (a4),d0
                bne.s   loc_FFC317D8

loc_FFC31770:                           ; CODE XREF: sub_FFC31750+6A↓j
                pea     ($2500).w
                move    sr,d0
                move    $18+var_16(sp),sr
                move.w  d0,d7
                tst.l   $A4(a4)
                addq.w  #4,sp
                bne.s   loc_FFC31794
                subq.l  #1,(a4)
                ext.l   d7
                move.l  d7,-(sp)
                move    sr,d0
                move    $18+var_16(sp),sr
                addq.w  #4,sp
                bra.s   loc_FFC317BC
; ---------------------------------------------------------------------------

loc_FFC31794:                           ; CODE XREF: sub_FFC31750+32↑j
                ext.l   d7
                move.l  d7,-(sp)
                move    sr,d0
                move    $18+var_16(sp),sr
                pea     $9C(a4)
                jsr     sub_FFC2FBC2
                movea.l d0,a3
                move.w  $10(a3),d0
                ext.l   d0
                move.l  d0,-(sp)
                move.l  a3,-(sp)
                jsr     sub_FFC3189E
                lea     $10(sp),sp
                bra.s   loc_FFC31770
; ---------------------------------------------------------------------------

loc_FFC317BC:                           ; CODE XREF: sub_FFC31750+42↑j
                movea.l arg_0(a6),a0
                tst.b   $12(a0)
                bne.s   loc_FFC317DA

loc_FFC317C6:                           ; CODE XREF: sub_FFC31750+80↓j
                movea.l arg_0(a6),a0
                moveq   #1,d0
                cmp.w   $10(a0),d0
                beq.s   loc_FFC317C6
                move.w  $10(a0),d0
                bra.s   loc_FFC31800
; ---------------------------------------------------------------------------

loc_FFC317D8:                           ; CODE XREF: sub_FFC31750+1E↑j
                subq.l  #1,(a4)

loc_FFC317DA:                           ; CODE XREF: sub_FFC31750+74↑j
                cmpi.w  #1,d6
                seq     d3
                neg.b   d3
                beq.s   loc_FFC317E8
                moveq   #0,d0
                bra.s   loc_FFC31800
; ---------------------------------------------------------------------------

loc_FFC317E8:                           ; CODE XREF: sub_FFC31750+92↑j
                move.w  d6,d0
                bra.s   loc_FFC31800
; ---------------------------------------------------------------------------

loc_FFC317EC:                           ; CODE XREF: sub_FFC31750+16↑j
                move.l  #$FFFFFC78,-(sp)
                move.l  arg_0(a6),-(sp)
                jsr     sub_FFC3189E
                move.w  #$FC78,d0
                addq.w  #8,sp

loc_FFC31800:                           ; CODE XREF: sub_FFC31750+86↑j
                                        ; sub_FFC31750+96↑j ...
                movem.l var_14(a6),d3/d6-d7/a3-a4
                unlk    a6
                rts
; End of function sub_FFC31750


; =============== S U B R O U T I N E =======================================


sub_FFC3180A:                           ; CODE XREF: sub_FFC30DE0+1BA↑p
                                        ; sub_FFC30FC0+B8↑p ...
                movea.l ($2050).w,a1
                movea.l $D0(a1),a1
                jmp     (a1)
; End of function sub_FFC3180A

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC31820:                           ; DATA XREF: ROM:FFC06D04↑o

var_10          = -$10

                link    a6,#-4
                movem.l a2-a4,-(sp)
                move.l  a0,d0
                movea.l d0,a2
                movea.l $BA(a2),a4
                movea.l $18(a4),a3
                tst.w   $10(a2)
                bne.s   loc_FFC31846
                move.b  #1,$37(a3)
                move.b  #1,$B(a4)

loc_FFC31846:                           ; CODE XREF: sub_FFC31820+18↑j
                moveq   #0,d0
                move.l  d0,$18(a4)
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  a3,-(sp)
                jsr     sub_FFC318F4
                movem.l var_10(a6),a2-a4
                unlk    a6
                rts
; End of function sub_FFC31820


; =============== S U B R O U T I N E =======================================


sub_FFC31860:                           ; DATA XREF: sub_FFC30DE0+158↑o
                movea.l ($2050).w,a1
                movea.l $D4(a1),a1
                jmp     (a1)
; End of function sub_FFC31860

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC31870:                           ; DATA XREF: ROM:FFC06D08↑o

var_8           = -8
arg_0           =  8
arg_6           =  $E

                link    a6,#0
                movem.l a3-a4,-(sp)
                movea.l arg_0(a6),a4
                lea     $12(a4),a3
                tst.b   (a3)
                beq.s   loc_FFC31894
                move.w  arg_6(a6),d0
                ext.l   d0
                move.l  d0,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC30D4A
                addq.w  #8,sp

loc_FFC31894:                           ; CODE XREF: sub_FFC31870+12↑j
                movem.l var_8(a6),a3-a4
                unlk    a6
                rts
; End of function sub_FFC31870


; =============== S U B R O U T I N E =======================================


sub_FFC3189E:                           ; CODE XREF: sub_FFC31750+62↑p
                                        ; sub_FFC31750+A6↑p ...
                movea.l ($2050).w,a1
                movea.l $D8(a1),a1
                jmp     (a1)
; End of function sub_FFC3189E

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC318B0:                           ; DATA XREF: ROM:FFC06D0C↑o

var_C           = -$C
arg_0           =  8
arg_6           =  $E

                link    a6,#0
                movem.l d7/a3-a4,-(sp)
                move.w  arg_6(a6),d7
                movea.l arg_0(a6),a4
                move.w  d7,$10(a4)
                jsr     sub_FFC30D10
                movea.l d0,a3
                tst.l   (a3)
                beq.s   loc_FFC318DC
                pea     $9C(a3)
                move.l  a4,-(sp)
                jsr     sub_FFC2FB70
                addq.w  #8,sp
                bra.s   loc_FFC318E8
; ---------------------------------------------------------------------------

loc_FFC318DC:                           ; CODE XREF: sub_FFC318B0+1C↑j
                ext.l   d7
                move.l  d7,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC3189E
                addq.w  #8,sp

loc_FFC318E8:                           ; CODE XREF: sub_FFC318B0+2A↑j
                move.w  d7,d0
                movem.l var_C(a6),d7/a3-a4
                unlk    a6
                rts
; End of function sub_FFC318B0


; =============== S U B R O U T I N E =======================================


sub_FFC318F4:                           ; CODE XREF: sub_FFC30DE0+3E↑p
                                        ; sub_FFC30DE0+5E↑p ...
                movea.l ($2050).w,a1
                movea.l $DC(a1),a1
                jmp     (a1)
; End of function sub_FFC318F4

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC31900:                           ; DATA XREF: ROM:FFC06D10↑o

arg_0           =  8

                link    a6,#0
                movea.l arg_0(a6),a1
                move.l  a1,d0
                beq.s   loc_FFC31964
                tst.w   (a1)
                bne.s   loc_FFC31914
                moveq   #0,d0
                bra.s   loc_FFC31966
; ---------------------------------------------------------------------------

loc_FFC31914:                           ; CODE XREF: sub_FFC31900+E↑j
                moveq   #1,d0
                cmp.w   (a1),d0
                beq.s   loc_FFC31920
                move.w  #$FC7A,d0
                bra.s   loc_FFC31966
; ---------------------------------------------------------------------------

loc_FFC31920:                           ; CODE XREF: sub_FFC31900+18↑j
                moveq   #0,d0
                move.b  2(a1),d0
                cmpi.b  #$20,d0 ; ' '
                bhi.s   loc_FFC31944
                moveq   #0,d0
                move.b  $24(a1),d0
                cmpi.b  #$20,d0 ; ' '
                bhi.s   loc_FFC31944
                moveq   #0,d0
                move.b  $46(a1),d0
                cmpi.b  #$20,d0 ; ' '
                bls.s   loc_FFC3194A

loc_FFC31944:                           ; CODE XREF: sub_FFC31900+2A↑j
                                        ; sub_FFC31900+36↑j
                move.w  #$FC5D,d0
                bra.s   loc_FFC31966
; ---------------------------------------------------------------------------

loc_FFC3194A:                           ; CODE XREF: sub_FFC31900+42↑j
                moveq   #0,d0
                move.b  2(a1),d0
                tst.l   d0
                beq.s   loc_FFC3195E
                moveq   #0,d0
                move.b  $24(a1),d0
                tst.l   d0
                bne.s   loc_FFC31964

loc_FFC3195E:                           ; CODE XREF: sub_FFC31900+52↑j
                move.w  #$FC5D,d0
                bra.s   loc_FFC31966
; ---------------------------------------------------------------------------

loc_FFC31964:                           ; CODE XREF: sub_FFC31900+A↑j
                                        ; sub_FFC31900+5C↑j
                moveq   #0,d0

loc_FFC31966:                           ; CODE XREF: sub_FFC31900+12↑j
                                        ; sub_FFC31900+1E↑j ...
                unlk    a6
                rts
; End of function sub_FFC31900


; =============== S U B R O U T I N E =======================================


sub_FFC3196A:                           ; CODE XREF: sub_FFC30FC0+8A↑p
                                        ; sub_FFC31630+44↑p ...
                movea.l ($2050).w,a1
                movea.l $E0(a1),a1
                jmp     (a1)
; End of function sub_FFC3196A

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC31980:                           ; DATA XREF: ROM:FFC06D14↑o

var_4A          = -$4A
var_3E          = -$3E
var_18          = -$18
var_4           = -4
arg_0           =  8

                link    a6,#-8
                movem.l d7/a2-a4,-(sp)
                movea.l arg_0(a6),a3
                move.l  a3,d0
                bne.s   loc_FFC31996
                moveq   #1,d0
                bra.w   loc_FFC31A88
; ---------------------------------------------------------------------------

loc_FFC31996:                           ; CODE XREF: sub_FFC31980+E↑j
                tst.w   (a3)
                bne.s   loc_FFC319A0
                moveq   #1,d0
                bra.w   loc_FFC31A88
; ---------------------------------------------------------------------------

loc_FFC319A0:                           ; CODE XREF: sub_FFC31980+18↑j
                jsr     sub_FFC30D10
                move.l  d0,var_4(a6)
                moveq   #0,d0
                move.b  $46(a3),d0
                tst.l   d0
                beq.s   loc_FFC319EA
                moveq   #0,d0
                move.b  $46(a3),d0
                cmpi.w  #1,d0
                bne.s   loc_FFC319CA
                moveq   #0,d0
                move.b  $47(a3),d0
                cmpi.w  #$2A,d0 ; '*'
                beq.s   loc_FFC319EA

loc_FFC319CA:                           ; CODE XREF: sub_FFC31980+3C↑j
                subq.l  #2,sp
                pea     $46(a3)
                movea.l var_4(a6),a0
                pea     $11B(a0)
                moveq   #0,d0
                move.b  d0,-(sp)
                moveq   #1,d1
                move.b  d1,-(sp)
                jsr     sub_FFC30840
                tst.b   (sp)+
                beq.w   loc_FFC31A86

loc_FFC319EA:                           ; CODE XREF: sub_FFC31980+30↑j
                                        ; sub_FFC31980+48↑j
                subq.l  #2,sp
                pea     2(a3)
                movea.l var_4(a6),a0
                pea     $FA(a0)
                moveq   #0,d0
                move.b  d0,-(sp)
                moveq   #1,d1
                move.b  d1,-(sp)
                jsr     sub_FFC30840
                tst.b   (sp)+
                beq.s   loc_FFC31A86
                subq.l  #2,sp
                pea     $24(a3)
                movea.l var_4(a6),a0
                pea     $D8(a0)
                moveq   #0,d0
                move.b  d0,-(sp)
                moveq   #1,d1
                move.b  d1,-(sp)
                jsr     sub_FFC30840
                tst.b   (sp)+
                beq.s   loc_FFC31A2A
                moveq   #1,d0
                bra.s   loc_FFC31A88
; ---------------------------------------------------------------------------

loc_FFC31A2A:                           ; CODE XREF: sub_FFC31980+A4↑j
                pea     ($2500).w
                move    sr,d0
                move    $40+var_3E(sp),sr
                move.w  d0,d7
                movea.l var_4(a6),a0
                movea.l $60(a0),a4
                addq.w  #4,sp
                bra.s   loc_FFC31A76
; ---------------------------------------------------------------------------

loc_FFC31A42:                           ; CODE XREF: sub_FFC31980+F8↓j
                movea.l $64(a4),a2
                move.l  a2,d0
                beq.s   loc_FFC31A74
                subq.l  #2,sp
                pea     $24(a3)
                pea     $98(a2)
                moveq   #0,d0
                move.b  d0,-(sp)
                moveq   #1,d1
                move.b  d1,-(sp)
                jsr     sub_FFC30840
                tst.b   (sp)+
                beq.s   loc_FFC31A74
                ext.l   d7
                move.l  d7,-(sp)
                move    sr,d0
                move    $4C+var_4A(sp),sr
                moveq   #1,d0
                addq.w  #4,sp
                bra.s   loc_FFC31A88
; ---------------------------------------------------------------------------

loc_FFC31A74:                           ; CODE XREF: sub_FFC31980+C8↑j
                                        ; sub_FFC31980+E2↑j
                movea.l (a4),a4

loc_FFC31A76:                           ; CODE XREF: sub_FFC31980+C0↑j
                move.l  a4,d0
                bne.s   loc_FFC31A42
                ext.l   d7
                move.l  d7,-(sp)
                move    sr,d0
                move    $40+var_3E(sp),sr
                addq.w  #4,sp

loc_FFC31A86:                           ; CODE XREF: sub_FFC31980+66↑j
                                        ; sub_FFC31980+86↑j
                moveq   #0,d0

loc_FFC31A88:                           ; CODE XREF: sub_FFC31980+12↑j
                                        ; sub_FFC31980+1C↑j ...
                movem.l var_18(a6),d7/a2-a4
                unlk    a6
                rts
; End of function sub_FFC31980


; =============== S U B R O U T I N E =======================================


sub_FFC31A92:                           ; CODE XREF: sub_FFC31BA0+2C↓p
                                        ; sub_FFC350B0+9C↓p
                movea.l ($2050).w,a1
                movea.l $E4(a1),a1
                jmp     (a1)
; End of function sub_FFC31A92

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC31AA0:                           ; DATA XREF: ROM:FFC06D18↑o

var_12          = -$12
var_10          = -$10
arg_0           =  8
arg_4           =  $C

                link    a6,#0
                movem.l d6-d7/a3-a4,-(sp)
                movea.l arg_0(a6),a3
                clr.b   d7
                pea     ($2500).w
                move    sr,d0
                move    $14+var_12(sp),sr
                move.w  d0,d6
                movea.l arg_4(a6),a0
                movea.l $60(a0),a4
                addq.w  #4,sp
                bra.s   loc_FFC31AF0
; ---------------------------------------------------------------------------

loc_FFC31AC6:                           ; CODE XREF: sub_FFC31AA0+52↓j
                tst.l   $64(a4)
                beq.s   loc_FFC31AEE
                subq.l  #2,sp
                pea     2(a3)
                movea.l $64(a4),a0
                pea     $98(a0)
                moveq   #0,d0
                move.b  d0,-(sp)
                moveq   #1,d1
                move.b  d1,-(sp)
                jsr     sub_FFC30840
                tst.b   (sp)+
                beq.s   loc_FFC31AEE
                moveq   #1,d7
                bra.s   loc_FFC31AF4
; ---------------------------------------------------------------------------

loc_FFC31AEE:                           ; CODE XREF: sub_FFC31AA0+2A↑j
                                        ; sub_FFC31AA0+48↑j
                movea.l (a4),a4

loc_FFC31AF0:                           ; CODE XREF: sub_FFC31AA0+24↑j
                move.l  a4,d0
                bne.s   loc_FFC31AC6

loc_FFC31AF4:                           ; CODE XREF: sub_FFC31AA0+4C↑j
                ext.l   d6
                move.l  d6,-(sp)
                move    sr,d0
                move    $14+var_12(sp),sr
                move.b  d7,d0
                addq.w  #4,sp
                movem.l var_10(a6),d6-d7/a3-a4
                unlk    a6
                rts
; End of function sub_FFC31AA0


; =============== S U B R O U T I N E =======================================


sub_FFC31B0C:                           ; CODE XREF: sub_FFC30DE0+FE↑p
                movea.l ($2050).w,a1
                movea.l $E8(a1),a1
                jmp     (a1)
; End of function sub_FFC31B0C

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC31B20:                           ; DATA XREF: ROM:FFC06D1C↑o

var_16          = -$16
var_E           = -$E
var_C           = -$C
arg_0           =  8
arg_4           =  $C
arg_8           =  $10

                link    a6,#0
                movem.l d7/a3-a4,-(sp)
                movea.l arg_4(a6),a3
                movea.l arg_0(a6),a4
                move.l  arg_8(a6),8(a3)
                pea     $18(a4)
                move.l  a3,-(sp)
                jsr     sub_FFC2FB70
                pea     ($2500).w
                move    sr,d0
                move    $18+var_16(sp),sr
                move.w  d0,d7
                moveq   #1,d0
                cmp.l   $20(a4),d0
                lea     $C(sp),sp
                bne.s   loc_FFC31B7C
                ext.l   d7
                move.l  d7,-(sp)
                move    sr,d0
                move    $10+var_E(sp),sr
                pea     $11B(a4)
                pea     aXPI(pc)        ; "\"x P\"i"
                moveq   #1,d0
                move.l  d0,-(sp)
                pea     $5FC(a4)
                jsr     sub_FFC31D0C
                lea     $14(sp),sp
                bra.s   loc_FFC31B88
; ---------------------------------------------------------------------------

loc_FFC31B7C:                           ; CODE XREF: sub_FFC31B20+36↑j
                ext.l   d7
                move.l  d7,-(sp)
                move    sr,d0
                move    $10+var_E(sp),sr
                addq.w  #4,sp

loc_FFC31B88:                           ; CODE XREF: sub_FFC31B20+5A↑j
                movem.l var_C(a6),d7/a3-a4
                unlk    a6
                rts
; End of function sub_FFC31B20


; =============== S U B R O U T I N E =======================================


sub_FFC31B92:                           ; CODE XREF: sub_FFC30FC0+AA↑p
                                        ; sub_FFC31630+66↑p
                movea.l ($2050).w,a1
                movea.l $EC(a1),a1
                jmp     (a1)
; End of function sub_FFC31B92

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC31BA0:                           ; DATA XREF: ROM:FFC06D20↑o

var_10          = -$10

                link    a6,#0
                movem.l d7/a2-a4,-(sp)
                jsr     sub_FFC30D10
                movea.l d0,a3
                tst.w   $60C(a3)
                beq.w   loc_FFC31C3A
                lea     unk_FFC31C56(pc),a1
                movea.l a1,a0
                lea     $11B(a3),a2
                movea.l a2,a1
                moveq   #2,d0
                _BlockMove
                bra.s   loc_FFC31C3A
; ---------------------------------------------------------------------------

loc_FFC31BC8:                           ; CODE XREF: sub_FFC31BA0+A8↓j
                move.l  $32(a4),-(sp)
                jsr     sub_FFC31A92
                move.b  d0,d7
                addq.w  #4,sp
                bne.s   loc_FFC31BEC
                tst.b   5(a3)
                bne.s   loc_FFC31BEC
                move.l  #$FFFFFC77,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC318F4
                addq.w  #8,sp
                bra.s   loc_FFC31C3A
; ---------------------------------------------------------------------------

loc_FFC31BEC:                           ; CODE XREF: sub_FFC31BA0+34↑j
                                        ; sub_FFC31BA0+3A↑j
                moveq   #0,d0
                move.w  4(a4),d0
                moveq   #2,d1
                cmp.l   d0,d1
                bne.s   loc_FFC31C20
                tst.b   d7
                beq.s   loc_FFC31C0E
                move.l  a3,-(sp)
                move.l  8(a4),-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC32A86
                lea     $C(sp),sp
                bra.s   loc_FFC31C3A
; ---------------------------------------------------------------------------

loc_FFC31C0E:                           ; CODE XREF: sub_FFC31BA0+5A↑j
                move.l  a3,-(sp)
                move.l  8(a4),-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC331C6
                lea     $C(sp),sp
                bra.s   loc_FFC31C3A
; ---------------------------------------------------------------------------

loc_FFC31C20:                           ; CODE XREF: sub_FFC31BA0+56↑j
                tst.b   d7
                beq.s   loc_FFC31C30
                move.l  a3,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC32E16
                addq.w  #8,sp
                bra.s   loc_FFC31C3A
; ---------------------------------------------------------------------------

loc_FFC31C30:                           ; CODE XREF: sub_FFC31BA0+82↑j
                move.l  a3,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC333BC
                addq.w  #8,sp

loc_FFC31C3A:                           ; CODE XREF: sub_FFC31BA0+12↑j
                                        ; sub_FFC31BA0+26↑j ...
                pea     $18(a3)
                jsr     sub_FFC2FBC2
                movea.l d0,a4
                move.l  a4,d0
                addq.w  #4,sp
                bne.w   loc_FFC31BC8
                movem.l var_10(a6),d7/a2-a4
                unlk    a6
                rts
; End of function sub_FFC31BA0

; ---------------------------------------------------------------------------
unk_FFC31C56:   dc.b   1                ; DATA XREF: sub_FFC31BA0+16↑o
                dc.b $2A ; *
                dc.b   0
                dc.b   0
aXPI:           dc.b '"x P"i',0         ; DATA XREF: sub_FFC31B20+46↑o
                dc.b $F0
                dc.b $4E ; N
                dc.b $D1
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC31C70:                           ; DATA XREF: ROM:FFC06D24↑o

var_C           = -$C
arg_0           =  8
arg_7           =  $F
arg_8           =  $10
arg_C           =  $14

                link    a6,#0
                movem.l d7/a3-a4,-(sp)
                movea.l arg_C(a6),a3
                movea.l arg_0(a6),a4
                move.l  arg_8(a6),$C(a4)
                move.l  a3,$22(a4)
                clr.w   $2A(a4)
                move.b  #1,$1E(a4)
                move.b  #3,$1F(a4)
                jsr     sub_FFC30D10
                movea.l d0,a0
                tst.b   8(a0)
                beq.s   loc_FFC31CE6
                move.w  #$F6,$1A(a4)
                move.w  #7,$1C(a4)
                move.w  #$FFD7,$18(a4)
                tst.b   arg_7(a6)
                beq.s   loc_FFC31CD2
                move.l  a4,-(sp)
                movea.l a4,a0
                _PBControlAsync
                ext.l   d0
                move.l  d0,-(sp)
                jsr     sub_FFC31D56
                move.w  d0,d7
                addq.w  #8,sp
                bra.s   loc_FFC31CFE
; ---------------------------------------------------------------------------

loc_FFC31CD2:                           ; CODE XREF: sub_FFC31C70+4C↑j
                move.l  a4,-(sp)
                movea.l a4,a0
                _Control
                ext.l   d0
                move.l  d0,-(sp)
                jsr     sub_FFC31D56
                move.w  d0,d7
                addq.w  #8,sp
                bra.s   loc_FFC31CFE
; ---------------------------------------------------------------------------

loc_FFC31CE6:                           ; CODE XREF: sub_FFC31C70+34↑j
                lea     sub_FFC31D08(pc),a1
                movea.l a1,a0
                movea.l a3,a1
                moveq   #2,d0
                _BlockMove
                clr.w   $10(a4)
                move.l  a4,-(sp)
                jsr     sub_FFC30DCE
                addq.w  #4,sp

loc_FFC31CFE:                           ; CODE XREF: sub_FFC31C70+60↑j
                                        ; sub_FFC31C70+74↑j
                movem.l var_C(a6),d7/a3-a4
                unlk    a6
                rts
; End of function sub_FFC31C70


; =============== S U B R O U T I N E =======================================


sub_FFC31D08:                           ; DATA XREF: sub_FFC31C70:loc_FFC31CE6↑o
                btst    d0,0(a2)
; End of function sub_FFC31D08


; =============== S U B R O U T I N E =======================================


sub_FFC31D0C:                           ; CODE XREF: sub_FFC31B20+52↑p
                movea.l ($2050).w,a1
                movea.l $F4(a1),a1
                jmp     (a1)
; End of function sub_FFC31D0C

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC31D20:                           ; DATA XREF: ROM:FFC06D28↑o

var_8           = -8
arg_2           =  $A
arg_4           =  $C

                link    a6,#0
                movem.l d7/a4,-(sp)
                movea.l arg_4(a6),a4
                move.w  arg_2(a6),d7
                cmpi.w  #$FFE4,d7
                beq.s   loc_FFC31D3C
                cmpi.w  #$FFEB,d7
                bne.s   loc_FFC31D4A

loc_FFC31D3C:                           ; CODE XREF: sub_FFC31D20+14↑j
                tst.l   $C(a4)
                beq.s   loc_FFC31D4A
                move.l  a4,-(sp)
                jsr     sub_FFC30DCE
                addq.w  #4,sp

loc_FFC31D4A:                           ; CODE XREF: sub_FFC31D20+1A↑j
                                        ; sub_FFC31D20+20↑j
                move.w  d7,d0
                movem.l var_8(a6),d7/a4
                unlk    a6
                rts
; End of function sub_FFC31D20


; =============== S U B R O U T I N E =======================================


sub_FFC31D56:                           ; CODE XREF: sub_FFC31C70+58↑p
                                        ; sub_FFC31C70+6C↑p ...
                movea.l ($2050).w,a1
                movea.l $F8(a1),a1
                jmp     (a1)
; End of function sub_FFC31D56


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC31D60:                           ; DATA XREF: ROM:FFC06E84↑o

var_C           = -$C
arg_0           =  8
arg_4           =  $C
arg_8           =  $10

                link    a6,#0
                movem.l d7/a3-a4,-(sp)
                movea.l arg_4(a6),a3
                moveq   #1,d7
                move.l  arg_0(a6),$18(a3)
                bra.s   loc_FFC31D84
; ---------------------------------------------------------------------------

loc_FFC31D76:                           ; CODE XREF: sub_FFC31D60+32↓j
                move.l  #$FFFFFC6C,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC318F4
                addq.w  #8,sp

loc_FFC31D84:                           ; CODE XREF: sub_FFC31D60+14↑j
                pea     $C(a3)
                jsr     sub_FFC2FBC2
                movea.l d0,a4
                move.l  a4,d0
                addq.w  #4,sp
                bne.s   loc_FFC31D76
                tst.b   $B(a3)
                beq.s   loc_FFC31DB6
                clr.b   d7
                movea.l $64(a3),a4
                move.l  a4,-(sp)
                pea     sub_FFC31E14(pc)
                moveq   #1,d0
                move.l  d0,-(sp)
                pea     $35(a4)
                jsr     sub_FFC35CF6
                lea     $10(sp),sp

loc_FFC31DB6:                           ; CODE XREF: sub_FFC31D60+38↑j
                tst.w   6(a3)
                beq.s   loc_FFC31DCA
                clr.b   d7
                move.l  arg_8(a6),-(sp)
                move.l  a3,-(sp)
                jsr     sub_FFC3275A
                addq.w  #8,sp

loc_FFC31DCA:                           ; CODE XREF: sub_FFC31D60+5A↑j
                tst.b   d7
                beq.s   loc_FFC31DD6
                move.l  a3,-(sp)
                jsr     sub_FFC31E6A
                addq.w  #4,sp

loc_FFC31DD6:                           ; CODE XREF: sub_FFC31D60+6C↑j
                moveq   #0,d0
                movem.l var_C(a6),d7/a3-a4
                unlk    a6
                rts
; End of function sub_FFC31D60


; =============== S U B R O U T I N E =======================================


sub_FFC31DE2:                           ; CODE XREF: sub_FFC315B0+42↑p
                movea.l ($2050).w,a1
                movea.l $254(a1),a1
                jmp     (a1)
; End of function sub_FFC31DE2

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC31DF0:                           ; DATA XREF: ROM:FFC06E88↑o

var_8           = -8

                link    a6,#0
                movem.l a3-a4,-(sp)
                move.l  a0,d0
                movea.l d0,a3
                movea.l $BA(a3),a4
                clr.b   $B(a4)
                move.l  a4,-(sp)
                jsr     sub_FFC31E6A
                movem.l var_8(a6),a3-a4
                unlk    a6
                rts
; End of function sub_FFC31DF0


; =============== S U B R O U T I N E =======================================


sub_FFC31E14:                           ; DATA XREF: sub_FFC31D60+42↑o
                movea.l ($2050).w,a1
                movea.l $258(a1),a1
                jmp     (a1)
; End of function sub_FFC31E14

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC31E20:                           ; DATA XREF: ROM:FFC06E8C↑o

var_8           = -8
arg_0           =  8

                link    a6,#0
                movem.l a3-a4,-(sp)
                movea.l arg_0(a6),a4
                tst.b   $B(a4)
                bne.s   loc_FFC31E60
                tst.w   6(a4)
                bne.s   loc_FFC31E60
                tst.l   $14(a4)
                bne.s   loc_FFC31E60
                movea.l $18(a4),a3
                move.l  a3,d0
                beq.s   loc_FFC31E60
                moveq   #0,d0
                move.l  d0,$18(a4)
                move.l  a4,-(sp)
                jsr     sub_FFC3228E
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  a3,-(sp)
                jsr     sub_FFC318F4
                lea     $C(sp),sp

loc_FFC31E60:                           ; CODE XREF: sub_FFC31E20+10↑j
                                        ; sub_FFC31E20+16↑j ...
                movem.l var_8(a6),a3-a4
                unlk    a6
                rts
; End of function sub_FFC31E20


; =============== S U B R O U T I N E =======================================


sub_FFC31E6A:                           ; CODE XREF: sub_FFC31D60+70↑p
                                        ; sub_FFC31DF0+16↑p ...
                movea.l ($2050).w,a1
                movea.l $25C(a1),a1
                jmp     (a1)
; End of function sub_FFC31E6A

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC31E80:                           ; DATA XREF: ROM:FFC06E90↑o

var_8           = -8
arg_0           =  8
arg_4           =  $C

                link    a6,#0
                movem.l a3-a4,-(sp)
                movea.l arg_0(a6),a3
                movea.l arg_4(a6),a0
                movea.l $60(a0),a4
                bra.s   loc_FFC31EAC
; ---------------------------------------------------------------------------

loc_FFC31E96:                           ; CODE XREF: sub_FFC31E80+2E↓j
                pea     $1C(a4)
                move.l  a3,-(sp)
                jsr     sub_FFC31FB8
                tst.b   d0
                addq.w  #8,sp
                beq.s   loc_FFC31EAA
                move.l  a4,d0
                bra.s   loc_FFC31EB2
; ---------------------------------------------------------------------------

loc_FFC31EAA:                           ; CODE XREF: sub_FFC31E80+24↑j
                movea.l (a4),a4

loc_FFC31EAC:                           ; CODE XREF: sub_FFC31E80+14↑j
                move.l  a4,d0
                bne.s   loc_FFC31E96
                moveq   #0,d0

loc_FFC31EB2:                           ; CODE XREF: sub_FFC31E80+28↑j
                movem.l var_8(a6),a3-a4
                unlk    a6
                rts
; End of function sub_FFC31E80


; =============== S U B R O U T I N E =======================================


sub_FFC31EBC:                           ; CODE XREF: sub_FFC30DE0+70↑p
                                        ; sub_FFC328C0+18↓p ...
                movea.l ($2050).w,a1
                movea.l $260(a1),a1
                jmp     (a1)
; End of function sub_FFC31EBC

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC31ED0:                           ; DATA XREF: ROM:FFC06E94↑o

arg_0           =  8

                link    a6,#0
                movea.l arg_0(a6),a1
                moveq   #2,d0
                cmp.w   $24(a1),d0
                beq.s   loc_FFC31EE8
                moveq   #1,d0
                cmp.w   $24(a1),d0
                bne.s   loc_FFC31F14

loc_FFC31EE8:                           ; CODE XREF: sub_FFC31ED0+E↑j
                moveq   #0,d0
                move.b  2(a1),d0
                cmpi.b  #$20,d0 ; ' '
                bls.s   loc_FFC31EF8
                moveq   #0,d0
                bra.s   loc_FFC31F16
; ---------------------------------------------------------------------------

loc_FFC31EF8:                           ; CODE XREF: sub_FFC31ED0+22↑j
                moveq   #2,d0
                cmp.w   $24(a1),d0
                bne.s   loc_FFC31F10
                moveq   #0,d0
                move.b  $26(a1),d0
                cmpi.b  #$20,d0 ; ' '
                bls.s   loc_FFC31F10
                moveq   #0,d0
                bra.s   loc_FFC31F16
; ---------------------------------------------------------------------------

loc_FFC31F10:                           ; CODE XREF: sub_FFC31ED0+2E↑j
                                        ; sub_FFC31ED0+3A↑j
                moveq   #1,d0
                bra.s   loc_FFC31F16
; ---------------------------------------------------------------------------

loc_FFC31F14:                           ; CODE XREF: sub_FFC31ED0+16↑j
                moveq   #0,d0

loc_FFC31F16:                           ; CODE XREF: sub_FFC31ED0+26↑j
                                        ; sub_FFC31ED0+3E↑j ...
                unlk    a6
                rts
; End of function sub_FFC31ED0


; =============== S U B R O U T I N E =======================================


sub_FFC31F1A:                           ; CODE XREF: sub_FFC30DE0+4C↑p
                                        ; sub_FFC30FC0+28↑p ...
                movea.l ($2050).w,a1
                movea.l $264(a1),a1
                jmp     (a1)
; End of function sub_FFC31F1A

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC31F30:                           ; DATA XREF: ROM:FFC06E98↑o

var_10          = -$10
arg_0           =  8
arg_4           =  $C

                link    a6,#0
                movem.l d3/d7/a3-a4,-(sp)
                movea.l arg_4(a6),a3
                movea.l arg_0(a6),a4
                move.w  (a4),d0
                cmp.w   (a3),d0
                beq.s   loc_FFC31F4A
                moveq   #0,d0
                bra.s   loc_FFC31FAE
; ---------------------------------------------------------------------------

loc_FFC31F4A:                           ; CODE XREF: sub_FFC31F30+14↑j
                move.w  $24(a4),d0
                cmp.w   $24(a3),d0
                beq.s   loc_FFC31F58
                moveq   #0,d0
                bra.s   loc_FFC31FAE
; ---------------------------------------------------------------------------

loc_FFC31F58:                           ; CODE XREF: sub_FFC31F30+22↑j
                moveq   #0,d0
                move.b  2(a4),d0
                addq.w  #1,d0
                ext.l   d0
                move.l  d0,-(sp)
                pea     2(a3)
                pea     2(a4)
                jsr     sub_FFC31FD0
                tst.l   d0
                lea     $C(sp),sp
                beq.s   loc_FFC31F7C
                moveq   #0,d0
                bra.s   loc_FFC31FAE
; ---------------------------------------------------------------------------

loc_FFC31F7C:                           ; CODE XREF: sub_FFC31F30+46↑j
                moveq   #1,d0
                cmp.w   $24(a4),d0
                bne.s   loc_FFC31F88
                moveq   #8,d7
                bra.s   loc_FFC31F90
; ---------------------------------------------------------------------------

loc_FFC31F88:                           ; CODE XREF: sub_FFC31F30+52↑j
                move.b  $26(a4),d0
                addq.b  #1,d0
                move.b  d0,d7

loc_FFC31F90:                           ; CODE XREF: sub_FFC31F30+56↑j
                moveq   #0,d0
                move.b  d7,d0
                move.l  d0,-(sp)
                pea     $26(a3)
                pea     $26(a4)
                jsr     sub_FFC31FD0
                tst.l   d0
                seq     d3
                neg.b   d3
                move.b  d3,d0
                lea     $C(sp),sp

loc_FFC31FAE:                           ; CODE XREF: sub_FFC31F30+18↑j
                                        ; sub_FFC31F30+26↑j ...
                movem.l var_10(a6),d3/d7/a3-a4
                unlk    a6
                rts
; End of function sub_FFC31F30


; =============== S U B R O U T I N E =======================================


sub_FFC31FB8:                           ; CODE XREF: sub_FFC31E80+1C↑p
                movea.l ($2050).w,a1
                movea.l $268(a1),a1
                jmp     (a1)
; End of function sub_FFC31FB8

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: thunk

sub_FFC31FD0:                           ; CODE XREF: sub_FFC31F30+3C↑p
                                        ; sub_FFC31F30+6E↑p ...
                bra.l   sub_FFCC9F20
; End of function sub_FFC31FD0

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC31FE0:                           ; DATA XREF: ROM:FFC06E9C↑o

var_C           = -$C
arg_0           =  8
arg_4           =  $C
arg_8           =  $10

                link    a6,#0
                movem.l a2-a4,-(sp)
                movea.l arg_0(a6),a3
                movea.l arg_8(a6),a4
                move.w  #1,(a4)
                lea     $FA(a3),a1
                movea.l a1,a0
                movea.l a4,a2
                addq.l  #2,a2
                movea.l a2,a1
                moveq   #$21,d0 ; '!'
                _BlockMove
                lea     $11B(a3),a1
                movea.l a1,a0
                lea     $46(a4),a2
                movea.l a2,a1
                moveq   #$21,d0 ; '!'
                _BlockMove
                movea.l arg_4(a6),a0
                tst.l   $64(a0)
                beq.s   loc_FFC32036
                movea.l a0,a1
                movea.l $64(a1),a1
                lea     $98(a1),a1
                movea.l a1,a0
                lea     $24(a4),a2
                movea.l a2,a1
                moveq   #$21,d0 ; '!'
                _BlockMove
                bra.s   loc_FFC32046
; ---------------------------------------------------------------------------

loc_FFC32036:                           ; CODE XREF: sub_FFC31FE0+3C↑j
                lea     $D8(a3),a1
                movea.l a1,a0
                lea     $24(a4),a2
                movea.l a2,a1
                moveq   #$21,d0 ; '!'
                _BlockMove

loc_FFC32046:                           ; CODE XREF: sub_FFC31FE0+54↑j
                movem.l var_C(a6),a2-a4
                unlk    a6
                rts
; End of function sub_FFC31FE0


; =============== S U B R O U T I N E =======================================


sub_FFC32050:                           ; CODE XREF: sub_FFC335F0+128↓p
                movea.l ($2050).w,a1
                movea.l $26C(a1),a1
                jmp     (a1)
; End of function sub_FFC32050

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC32060:                           ; DATA XREF: ROM:FFC06EA0↑o

var_4           = -4
arg_0           =  8
arg_6           =  $E

                link    a6,#0
                move.l  d3,-(sp)
                movea.l arg_0(a6),a0
                move.w  4(a0),d0
                cmp.w   arg_6(a6),d0
                seq     d3
                neg.b   d3
                move.b  d3,d0
                move.l  var_4(a6),d3
                unlk    a6
                rts
; End of function sub_FFC32060


; =============== S U B R O U T I N E =======================================


sub_FFC32080:                           ; DATA XREF: sub_FFC32090+4↓o
                                        ; sub_FFC320C0+8↓o
                movea.l ($2050).w,a1
                movea.l $270(a1),a1
                jmp     (a1)
; End of function sub_FFC32080

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC32090:                           ; DATA XREF: ROM:FFC06EA4↑o

arg_2           =  $A
arg_4           =  $C

                link    a6,#0
                pea     sub_FFC32080(pc)
                moveq   #0,d0
                move.w  arg_2(a6),d0
                move.l  d0,-(sp)
                movea.l arg_4(a6),a0
                pea     $60(a0)
                jsr     sub_FFC2FCC2
                unlk    a6
                rts
; End of function sub_FFC32090


; =============== S U B R O U T I N E =======================================


sub_FFC320B0:                           ; CODE XREF: sub_FFC315B0+2E↑p
                movea.l ($2050).w,a1
                movea.l $274(a1),a1
                jmp     (a1)
; End of function sub_FFC320B0

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC320C0:                           ; DATA XREF: ROM:FFC06EA8↑o

arg_2           =  $A
arg_4           =  $C

                link    a6,#0
                moveq   #1,d0
                move.l  d0,-(sp)
                pea     sub_FFC32080(pc)
                moveq   #0,d1
                move.w  arg_2(a6),d1
                move.l  d1,-(sp)
                movea.l arg_4(a6),a0
                pea     $60(a0)
                jsr     sub_FFC2FC38
                unlk    a6
                rts
; End of function sub_FFC320C0


; =============== S U B R O U T I N E =======================================


sub_FFC320E4:                           ; CODE XREF: sub_FFC30FC0+6A↑p
                                        ; sub_FFC310A0+2E↑p ...
                movea.l ($2050).w,a1
                movea.l $278(a1),a1
                jmp     (a1)
; End of function sub_FFC320E4

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC320F0:                           ; DATA XREF: ROM:FFC06EAC↑o

var_12          = -$12
var_10          = -$10
arg_0           =  8

                link    a6,#0
                movem.l d6-d7/a3-a4,-(sp)
                movea.l arg_0(a6),a3
                pea     ($2500).w
                move    sr,d0
                move    $14+var_12(sp),sr
                move.w  d0,d6
                addq.w  #4,sp

loc_FFC3210A:                           ; CODE XREF: sub_FFC320F0+36↓j
                move.w  $C2(a3),d7
                addq.w  #1,$C2(a3)
                tst.w   $C2(a3)
                bne.s   loc_FFC3211C
                addq.w  #1,$C2(a3)

loc_FFC3211C:                           ; CODE XREF: sub_FFC320F0+26↑j
                movea.l $60(a3),a4
                bra.s   loc_FFC3212A
; ---------------------------------------------------------------------------

loc_FFC32122:                           ; CODE XREF: sub_FFC320F0+3C↓j
                cmp.w   4(a4),d7
                beq.s   loc_FFC3210A
                movea.l (a4),a4

loc_FFC3212A:                           ; CODE XREF: sub_FFC320F0+30↑j
                move.l  a4,d0
                bne.s   loc_FFC32122
                ext.l   d6
                move.l  d6,-(sp)
                move    sr,d0
                move    $14+var_12(sp),sr
                move.w  d7,d0
                addq.w  #4,sp
                movem.l var_10(a6),d6-d7/a3-a4
                unlk    a6
                rts
; End of function sub_FFC320F0


; =============== S U B R O U T I N E =======================================


sub_FFC32146:                           ; CODE XREF: sub_FFC32150+34↓p
                movea.l ($2050).w,a1
                movea.l $27C(a1),a1
                jmp     (a1)
; End of function sub_FFC32146


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC32150:                           ; DATA XREF: ROM:FFC06EB0↑o

var_10          = -$10
var_4           = -4
arg_0           =  8
arg_4           =  $C

                link    a6,#-4
                movem.l a2-a4,-(sp)
                movea.l arg_0(a6),a3
                movea.l arg_4(a6),a0
                pea     $24(a0)
                jsr     sub_FFC2FBC2
                movea.l d0,a4
                move.l  a4,d0
                addq.w  #4,sp
                beq.w   loc_FFC32222
                moveq   #$68,d0 ; 'h'
                move.l  d0,-(sp)
                moveq   #0,d1
                move.l  d1,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC300B0
                move.l  arg_4(a6),-(sp)
                jsr     sub_FFC32146
                move.w  d0,4(a4)
                move.w  d0,$26(a3)
                movea.l $2E(a3),a0
                lea     $1C(a4),a2
                movea.l a2,a1
                moveq   #$48,d0 ; 'H'
                _BlockMove
                move.b  $2C(a3),8(a4)
                move.b  #1,9(a4)
                move.b  $36(a3),$A(a4)
                move.b  $2C(a3),8(a4)
                move.l  a3,$18(a4)
                tst.b   $36(a3)
                lea     $10(sp),sp
                beq.s   loc_FFC3220E
                tst.l   $32(a3)
                beq.s   loc_FFC3220E
                movea.l arg_4(a6),a0
                pea     $30(a0)
                jsr     sub_FFC2FBC2
                move.l  d0,var_4(a6)
                move.l  d0,$64(a4)
                addq.w  #4,sp
                beq.s   loc_FFC32202
                movea.l var_4(a6),a0
                move.l  a4,$BA(a0)
                movea.l $32(a3),a1
                addq.l  #2,a1
                movea.l a1,a0
                movea.l var_4(a6),a2
                lea     $98(a2),a2
                movea.l a2,a1
                moveq   #$21,d0 ; '!'
                _BlockMove
                bra.s   loc_FFC3220E
; ---------------------------------------------------------------------------

loc_FFC32202:                           ; CODE XREF: sub_FFC32150+90↑j
                move.l  a4,-(sp)
                jsr     sub_FFC3228E
                moveq   #0,d0
                addq.w  #4,sp
                bra.s   loc_FFC32224
; ---------------------------------------------------------------------------

loc_FFC3220E:                           ; CODE XREF: sub_FFC32150+72↑j
                                        ; sub_FFC32150+78↑j ...
                movea.l arg_4(a6),a0
                pea     $60(a0)
                move.l  a4,-(sp)
                jsr     sub_FFC2FB70
                move.l  a4,d0
                addq.w  #8,sp
                bra.s   loc_FFC32224
; ---------------------------------------------------------------------------

loc_FFC32222:                           ; CODE XREF: sub_FFC32150+1E↑j
                moveq   #0,d0

loc_FFC32224:                           ; CODE XREF: sub_FFC32150+BC↑j
                                        ; sub_FFC32150+D0↑j
                movem.l var_10(a6),a2-a4
                unlk    a6
                rts
; End of function sub_FFC32150


; =============== S U B R O U T I N E =======================================


sub_FFC3222E:                           ; CODE XREF: sub_FFC30DE0+120↑p
                movea.l ($2050).w,a1
                movea.l $280(a1),a1
                jmp     (a1)
; End of function sub_FFC3222E

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC32240:                           ; DATA XREF: ROM:FFC06EB4↑o

var_8           = -8
arg_0           =  8

                link    a6,#0
                movem.l a3-a4,-(sp)
                movea.l arg_0(a6),a4
                jsr     sub_FFC30D10
                movea.l d0,a3
                pea     sub_FFC2FB0C(pc)
                move.l  a4,-(sp)
                pea     $60(a3)
                jsr     sub_FFC2FCC2
                tst.l   $64(a4)
                lea     $C(sp),sp
                beq.s   loc_FFC32278
                pea     $30(a3)
                move.l  $64(a4),-(sp)
                jsr     sub_FFC2FB70
                addq.w  #8,sp

loc_FFC32278:                           ; CODE XREF: sub_FFC32240+28↑j
                pea     $24(a3)
                move.l  a4,-(sp)
                jsr     sub_FFC2FB70
                addq.w  #8,sp
                movem.l var_8(a6),a3-a4
                unlk    a6
                rts
; End of function sub_FFC32240


; =============== S U B R O U T I N E =======================================


sub_FFC3228E:                           ; CODE XREF: sub_FFC31E20+2E↑p
                                        ; sub_FFC32150+B4↑p
                movea.l ($2050).w,a1
                movea.l $284(a1),a1
                jmp     (a1)
; End of function sub_FFC3228E

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC322A0:                           ; DATA XREF: ROM:FFC06EB8↑o

arg_0           =  8
arg_4           =  $C

                link    a6,#0
                movea.l arg_4(a6),a0
                pea     $C(a0)
                move.l  arg_0(a6),-(sp)
                jsr     sub_FFC2FB70
                unlk    a6
                rts
; End of function sub_FFC322A0


; =============== S U B R O U T I N E =======================================


sub_FFC322B8:                           ; CODE XREF: sub_FFC310A0+4E↑p
                                        ; sub_FFC328C0+72↓p ...
                movea.l ($2050).w,a1
                movea.l $288(a1),a1
                jmp     (a1)
; End of function sub_FFC322B8

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC322D0:                           ; DATA XREF: ROM:FFC06EBC↑o

var_20          = -$20
var_4           = -4
arg_0           =  8
arg_4           =  $C
arg_B           =  $13
arg_F           =  $17
arg_12          =  $1A
arg_14          =  $1C
arg_1A          =  $22
arg_1C          =  $24

                link    a6,#-4
                movem.l d4-d7/a2-a4,-(sp)
                move.b  arg_F(a6),d4
                move.w  arg_1A(a6),d5
                move.b  arg_B(a6),d7
                movea.l arg_14(a6),a3
                clr.w   d6
                moveq   #0,d0
                move.l  d0,var_4(a6)
                movea.l arg_1C(a6),a0
                clr.w   (a0)
                tst.w   d5
                bne.s   loc_FFC32300
                moveq   #1,d0
                bra.w   loc_FFC32394
; ---------------------------------------------------------------------------

loc_FFC32300:                           ; CODE XREF: sub_FFC322D0+28↑j
                movea.l arg_0(a6),a0
                movea.l $60(a0),a4
                bra.w   loc_FFC3238C
; ---------------------------------------------------------------------------

loc_FFC3230C:                           ; CODE XREF: sub_FFC322D0+BE↓j
                cmp.w   arg_12(a6),d6
                beq.s   loc_FFC32332
                tst.b   d7
                bne.s   loc_FFC3231C
                tst.b   $A(a4)
                beq.s   loc_FFC3238A

loc_FFC3231C:                           ; CODE XREF: sub_FFC322D0+44↑j
                pea     $1C(a4)
                move.l  arg_4(a6),-(sp)
                jsr     sub_FFC32492
                tst.b   d0
                addq.w  #8,sp
                beq.s   loc_FFC3238A
                addq.w  #1,d6
                bra.s   loc_FFC3238A
; ---------------------------------------------------------------------------

loc_FFC32332:                           ; CODE XREF: sub_FFC322D0+40↑j
                tst.b   d7
                bne.s   loc_FFC3233C
                tst.b   $A(a4)
                beq.s   loc_FFC3238A

loc_FFC3233C:                           ; CODE XREF: sub_FFC322D0+64↑j
                pea     $1C(a4)
                move.l  arg_4(a6),-(sp)
                jsr     sub_FFC32492
                tst.b   d0
                addq.w  #8,sp
                beq.s   loc_FFC3238A
                movea.l arg_1C(a6),a0
                cmp.w   (a0),d5
                bne.s   loc_FFC3235A
                moveq   #0,d0
                bra.s   loc_FFC32394
; ---------------------------------------------------------------------------

loc_FFC3235A:                           ; CODE XREF: sub_FFC322D0+84↑j
                clr.b   (a3)
                tst.b   d7
                bne.s   loc_FFC32364
                tst.b   d4
                beq.s   loc_FFC3236A

loc_FFC32364:                           ; CODE XREF: sub_FFC322D0+8E↑j
                clr.b   1(a3)
                bra.s   loc_FFC32370
; ---------------------------------------------------------------------------

loc_FFC3236A:                           ; CODE XREF: sub_FFC322D0+92↑j
                move.b  #1,1(a3)

loc_FFC32370:                           ; CODE XREF: sub_FFC322D0+98↑j
                lea     $1C(a4),a1
                movea.l a1,a0
                movea.l a3,a2
                addq.l  #2,a2
                movea.l a2,a1
                moveq   #$48,d0 ; 'H'
                _BlockMove
                lea     $4A(a3),a3
                movea.l arg_1C(a6),a0
                addq.w  #1,(a0)

loc_FFC3238A:                           ; CODE XREF: sub_FFC322D0+4A↑j
                                        ; sub_FFC322D0+5C↑j ...
                movea.l (a4),a4

loc_FFC3238C:                           ; CODE XREF: sub_FFC322D0+38↑j
                move.l  a4,d0
                bne.w   loc_FFC3230C
                moveq   #1,d0

loc_FFC32394:                           ; CODE XREF: sub_FFC322D0+2C↑j
                                        ; sub_FFC322D0+88↑j
                movem.l var_20(a6),d4-d7/a2-a4
                unlk    a6
                rts
; End of function sub_FFC322D0


; =============== S U B R O U T I N E =======================================


sub_FFC3239E:                           ; CODE XREF: sub_FFC32DD0+30↓p
                                        ; sub_FFC34590+6E↓p
                movea.l ($2050).w,a1
                movea.l $28C(a1),a1
                jmp     (a1)
; End of function sub_FFC3239E

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC323B0:                           ; DATA XREF: ROM:FFC06EC0↑o

var_18          = -$18
arg_0           =  8
arg_4           =  $C

                link    a6,#0
                movem.l d3/d5-d7/a3-a4,-(sp)
                movea.l arg_4(a6),a3
                movea.l arg_0(a6),a4
                clr.b   d6
                clr.b   d7
                moveq   #0,d0
                move.b  2(a4),d0
                cmpi.w  #1,d0
                bne.s   loc_FFC323DE
                moveq   #0,d0
                move.b  3(a4),d0
                cmpi.w  #$3D,d0 ; '='
                bne.s   loc_FFC323DE
                moveq   #1,d7

loc_FFC323DE:                           ; CODE XREF: sub_FFC323B0+1E↑j
                                        ; sub_FFC323B0+2A↑j
                moveq   #0,d0
                move.b  $26(a4),d0
                cmpi.w  #1,d0
                bne.s   loc_FFC323F8
                moveq   #0,d0
                move.b  $27(a4),d0
                cmpi.w  #$3D,d0 ; '='
                bne.s   loc_FFC323F8
                moveq   #1,d6

loc_FFC323F8:                           ; CODE XREF: sub_FFC323B0+38↑j
                                        ; sub_FFC323B0+44↑j
                tst.b   d7
                beq.s   loc_FFC32406
                tst.b   d6
                beq.s   loc_FFC32406
                moveq   #1,d0
                bra.w   loc_FFC32488
; ---------------------------------------------------------------------------

loc_FFC32406:                           ; CODE XREF: sub_FFC323B0+4A↑j
                                        ; sub_FFC323B0+4E↑j
                tst.b   d7
                bne.s   loc_FFC32434
                moveq   #0,d0
                move.b  2(a4),d0
                addq.w  #1,d0
                ext.l   d0
                move.l  d0,-(sp)
                pea     2(a3)
                pea     2(a4)
                jsr     sub_FFC31FD0
                tst.l   d0
                seq     d3
                neg.b   d3
                move.b  d3,d7
                lea     $C(sp),sp
                bne.s   loc_FFC32434
                moveq   #0,d0
                bra.s   loc_FFC32488
; ---------------------------------------------------------------------------

loc_FFC32434:                           ; CODE XREF: sub_FFC323B0+58↑j
                                        ; sub_FFC323B0+7E↑j
                tst.b   d6
                bne.s   loc_FFC3247E
                move.w  $24(a4),d0
                cmp.w   $24(a3),d0
                beq.s   loc_FFC32446
                moveq   #0,d0
                bra.s   loc_FFC32488
; ---------------------------------------------------------------------------

loc_FFC32446:                           ; CODE XREF: sub_FFC323B0+90↑j
                moveq   #1,d0
                cmp.w   $24(a4),d0
                bne.s   loc_FFC32452
                moveq   #8,d5
                bra.s   loc_FFC3245A
; ---------------------------------------------------------------------------

loc_FFC32452:                           ; CODE XREF: sub_FFC323B0+9C↑j
                move.b  $26(a4),d0
                addq.b  #1,d0
                move.b  d0,d5

loc_FFC3245A:                           ; CODE XREF: sub_FFC323B0+A0↑j
                moveq   #0,d0
                move.b  d5,d0
                move.l  d0,-(sp)
                pea     $26(a3)
                pea     $26(a4)
                jsr     sub_FFC31FD0
                tst.l   d0
                seq     d3
                neg.b   d3
                move.b  d3,d6
                lea     $C(sp),sp
                bne.s   loc_FFC3247E
                moveq   #0,d0
                bra.s   loc_FFC32488
; ---------------------------------------------------------------------------

loc_FFC3247E:                           ; CODE XREF: sub_FFC323B0+86↑j
                                        ; sub_FFC323B0+C8↑j
                tst.b   d7
                beq.s   loc_FFC32488
                tst.b   d6
                beq.s   loc_FFC32488
                moveq   #1,d0

loc_FFC32488:                           ; CODE XREF: sub_FFC323B0+52↑j
                                        ; sub_FFC323B0+82↑j ...
                movem.l var_18(a6),d3/d5-d7/a3-a4
                unlk    a6
                rts
; End of function sub_FFC323B0


; =============== S U B R O U T I N E =======================================


sub_FFC32492:                           ; CODE XREF: sub_FFC322D0+54↑p
                                        ; sub_FFC322D0+74↑p
                movea.l ($2050).w,a1
                movea.l $290(a1),a1
                jmp     (a1)
; End of function sub_FFC32492

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC324A0:                           ; DATA XREF: ROM:FFC06EC4↑o

var_4           = -4
arg_0           =  8
arg_4           =  $C

                link    a6,#0
                move.l  a3,-(sp)
                movea.l arg_4(a6),a3
                move.l  arg_0(a6),d1
                moveq   #0,d0
                movea.l d0,a1
                tst.l   d1
                beq.s   loc_FFC324F6
                move.l  #$40000000,d0
                and.l   d1,d0
                cmpi.l  #$40000000,d0
                bne.s   loc_FFC324CC
                lea     $6C(a3),a1
                bra.s   loc_FFC324F6
; ---------------------------------------------------------------------------

loc_FFC324CC:                           ; CODE XREF: sub_FFC324A0+24↑j
                move.l  #$80000000,d0
                and.l   d1,d0
                cmpi.l  #$80000000,d0
                bne.s   loc_FFC324E2
                lea     $78(a3),a1
                bra.s   loc_FFC324F6
; ---------------------------------------------------------------------------

loc_FFC324E2:                           ; CODE XREF: sub_FFC324A0+3A↑j
                move.l  #$C0000000,d0
                and.l   d1,d0
                cmpi.l  #$C0000000,d0
                bne.s   loc_FFC324F6
                lea     $84(a3),a1

loc_FFC324F6:                           ; CODE XREF: sub_FFC324A0+14↑j
                                        ; sub_FFC324A0+2A↑j ...
                move.l  a1,d0
                movea.l var_4(a6),a3
                unlk    a6
                rts
; End of function sub_FFC324A0


; =============== S U B R O U T I N E =======================================


sub_FFC32500:                           ; CODE XREF: sub_FFC32540+16↓p
                                        ; sub_FFC32590+16↓p
                movea.l ($2050).w,a1
                movea.l $294(a1),a1
                jmp     (a1)
; End of function sub_FFC32500

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC32510:                           ; DATA XREF: ROM:FFC06EC8↑o

var_4           = -4
arg_0           =  8
arg_4           =  $C

                link    a6,#0
                move.l  d3,-(sp)
                movea.l arg_0(a6),a0
                move.l  $A(a0),d0
                cmp.l   arg_4(a6),d0
                seq     d3
                neg.b   d3
                move.b  d3,d0
                move.l  var_4(a6),d3
                unlk    a6
                rts
; End of function sub_FFC32510


; =============== S U B R O U T I N E =======================================


sub_FFC32530:                           ; DATA XREF: sub_FFC32540+26↓o
                                        ; sub_FFC32590+22↓o
                movea.l ($2050).w,a1
                movea.l $298(a1),a1
                jmp     (a1)
; End of function sub_FFC32530

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC32540:                           ; DATA XREF: ROM:FFC06ECC↑o

var_C           = -$C
arg_0           =  8
arg_4           =  $C

                link    a6,#0
                movem.l d7/a3-a4,-(sp)
                move.l  arg_0(a6),d7
                moveq   #0,d0
                movea.l d0,a4
                move.l  arg_4(a6),-(sp)
                move.l  d7,-(sp)
                jsr     sub_FFC32500
                movea.l d0,a3
                move.l  a3,d0
                addq.w  #8,sp
                beq.s   loc_FFC32578
                moveq   #1,d0
                move.l  d0,-(sp)
                pea     sub_FFC32530(pc)
                move.l  d7,-(sp)
                move.l  a3,-(sp)
                jsr     sub_FFC2FC38
                movea.l d0,a4
                lea     $10(sp),sp

loc_FFC32578:                           ; CODE XREF: sub_FFC32540+20↑j
                move.l  a4,d0
                movem.l var_C(a6),d7/a3-a4
                unlk    a6
                rts
; End of function sub_FFC32540


; =============== S U B R O U T I N E =======================================


sub_FFC32584:                           ; CODE XREF: sub_FFC31120+2C↑p
                                        ; sub_FFC31200+2C↑p ...
                movea.l ($2050).w,a1
                movea.l $29C(a1),a1
                jmp     (a1)
; End of function sub_FFC32584

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC32590:                           ; DATA XREF: ROM:FFC06ED0↑o

var_C           = -$C
arg_0           =  8
arg_4           =  $C

                link    a6,#0
                movem.l d7/a3-a4,-(sp)
                move.l  arg_0(a6),d7
                moveq   #0,d0
                movea.l d0,a4
                move.l  arg_4(a6),-(sp)
                move.l  d7,-(sp)
                jsr     sub_FFC32500
                movea.l d0,a3
                move.l  a3,d0
                addq.w  #8,sp
                beq.s   loc_FFC325C4
                pea     sub_FFC32530(pc)
                move.l  d7,-(sp)
                move.l  a3,-(sp)
                jsr     sub_FFC2FCC2
                movea.l d0,a4
                lea     $C(sp),sp

loc_FFC325C4:                           ; CODE XREF: sub_FFC32590+20↑j
                move.l  a4,d0
                movem.l var_C(a6),d7/a3-a4
                unlk    a6
                rts
; End of function sub_FFC32590


; =============== S U B R O U T I N E =======================================


sub_FFC325D0:                           ; CODE XREF: sub_FFC314C0+56↑p
                                        ; sub_FFC314C0+82↑p ...
                movea.l ($2050).w,a1
                movea.l $2A0(a1),a1
                jmp     (a1)
; End of function sub_FFC325D0

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC325E0:                           ; DATA XREF: ROM:FFC06ED4↑o

var_16          = -$16
var_12          = -$12
var_10          = -$10
arg_3           =  $B
arg_4           =  $C

                link    a6,#0
                movem.l d5-d7/a4,-(sp)
                move.b  arg_3(a6),d6
                movea.l arg_4(a6),a4
                pea     ($2500).w
                move    sr,d0
                move    $14+var_12(sp),sr
                move.w  d0,d5
                move.l  $C4(a4),d7
                moveq   #0,d0
                move.b  d6,d0
                tst.l   d0
                bne.s   loc_FFC32610
                ori.l   #$40000000,d7
                bra.s   loc_FFC32628
; ---------------------------------------------------------------------------

loc_FFC32610:                           ; CODE XREF: sub_FFC325E0+26↑j
                moveq   #0,d0
                move.b  d6,d0
                cmpi.w  #1,d0
                bne.s   loc_FFC32622
                ori.l   #$80000000,d7
                bra.s   loc_FFC32628
; ---------------------------------------------------------------------------

loc_FFC32622:                           ; CODE XREF: sub_FFC325E0+38↑j
                ori.l   #$C0000000,d7

loc_FFC32628:                           ; CODE XREF: sub_FFC325E0+2E↑j
                                        ; sub_FFC325E0+40↑j
                cmpi.l  #$3FFFFFFF,$C4(a4)
                bne.s   loc_FFC3263A
                moveq   #1,d0
                move.l  d0,$C4(a4)
                bra.s   loc_FFC3263E
; ---------------------------------------------------------------------------

loc_FFC3263A:                           ; CODE XREF: sub_FFC325E0+50↑j
                addq.l  #1,$C4(a4)

loc_FFC3263E:                           ; CODE XREF: sub_FFC325E0+58↑j
                moveq   #0,d0
                move.w  d5,d0
                move.l  d0,-(sp)
                move    sr,d0
                move    $18+var_16(sp),sr
                move.l  d7,d0
                movem.l var_10(a6),d5-d7/a4
                unlk    a6
                rts
; End of function sub_FFC325E0


; =============== S U B R O U T I N E =======================================


sub_FFC32656:                           ; CODE XREF: sub_FFC32660+1C↓p
                movea.l ($2050).w,a1
                movea.l $2A4(a1),a1
                jmp     (a1)
; End of function sub_FFC32656


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC32660:                           ; DATA XREF: ROM:FFC06ED8↑o

var_8           = -8
arg_0           =  8
arg_4           =  $C
arg_8           =  $10

                link    a6,#0
                movem.l a3-a4,-(sp)
                movea.l arg_4(a6),a3
                movea.l arg_0(a6),a4
                move.l  arg_8(a6),-(sp)
                moveq   #0,d0
                move.b  6(a4),d0
                move.l  d0,-(sp)
                jsr     sub_FFC32656
                move.l  d0,$A(a4)
                moveq   #0,d0
                move.l  d0,$E(a4)
                move.l  a3,$12(a4)
                beq.s   loc_FFC32694
                addq.w  #1,6(a3)

loc_FFC32694:                           ; CODE XREF: sub_FFC32660+2E↑j
                moveq   #0,d0
                move.l  d0,$16(a4)
                clr.b   7(a4)
                move.b  #1,8(a4)
                movem.l var_8(a6),a3-a4
                unlk    a6
                rts
; End of function sub_FFC32660


; =============== S U B R O U T I N E =======================================


sub_FFC326AE:                           ; CODE XREF: sub_FFC328C0+CA↓p
                                        ; sub_FFC328C0+DA↓p ...
                movea.l ($2050).w,a1
                movea.l $2A8(a1),a1
                jmp     (a1)
; End of function sub_FFC326AE

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC326C0:                           ; DATA XREF: ROM:FFC06EDC↑o

var_4           = -4
arg_0           =  8
arg_4           =  $C

                link    a6,#0
                move.l  d3,-(sp)
                movea.l arg_0(a6),a0
                move.l  $12(a0),d0
                cmp.l   arg_4(a6),d0
                seq     d3
                neg.b   d3
                move.b  d3,d0
                move.l  var_4(a6),d3
                unlk    a6
                rts
; End of function sub_FFC326C0


; =============== S U B R O U T I N E =======================================


sub_FFC326E0:                           ; DATA XREF: sub_FFC326F0:loc_FFC3270E↓o
                                        ; sub_FFC326F0:loc_FFC32736↓o
                movea.l ($2050).w,a1
                movea.l $2AC(a1),a1
                jmp     (a1)
; End of function sub_FFC326E0

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC326F0:                           ; DATA XREF: ROM:FFC06EE0↑o

var_8           = -8
arg_0           =  8
arg_4           =  $C

                link    a6,#0
                movem.l a3-a4,-(sp)
                movea.l arg_4(a6),a3
                bra.s   loc_FFC3270E
; ---------------------------------------------------------------------------

loc_FFC326FE:                           ; CODE XREF: sub_FFC326F0+36↓j
                move.l  a3,-(sp)
                move.l  a4,-(sp)
                moveq   #0,d0
                move.l  d0,-(sp)
                jsr     sub_FFC32DBC
                lea     $C(sp),sp

loc_FFC3270E:                           ; CODE XREF: sub_FFC326F0+C↑j
                pea     sub_FFC326E0(pc)
                move.l  arg_0(a6),-(sp)
                pea     $6C(a3)
                jsr     sub_FFC2FCC2
                movea.l d0,a4
                move.l  a4,d0
                lea     $C(sp),sp
                bne.s   loc_FFC326FE
                bra.s   loc_FFC32736
; ---------------------------------------------------------------------------

loc_FFC3272A:                           ; CODE XREF: sub_FFC326F0+5E↓j
                move.l  a4,-(sp)
                moveq   #0,d0
                move.l  d0,-(sp)
                jsr     sub_FFC33352
                addq.w  #8,sp

loc_FFC32736:                           ; CODE XREF: sub_FFC326F0+38↑j
                pea     sub_FFC326E0(pc)
                move.l  arg_0(a6),-(sp)
                pea     $78(a3)
                jsr     sub_FFC2FCC2
                movea.l d0,a4
                move.l  a4,d0
                lea     $C(sp),sp
                bne.s   loc_FFC3272A
                movem.l var_8(a6),a3-a4
                unlk    a6
                rts
; End of function sub_FFC326F0


; =============== S U B R O U T I N E =======================================


sub_FFC3275A:                           ; CODE XREF: sub_FFC31D60+64↑p
                movea.l ($2050).w,a1
                movea.l $2B0(a1),a1
                jmp     (a1)
; End of function sub_FFC3275A

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC32770:                           ; DATA XREF: ROM:FFC06EE4↑o

var_8           = -8
arg_0           =  8

                link    a6,#0
                movem.l a3-a4,-(sp)
                movea.l arg_0(a6),a3
                tst.l   $32(a3)
                beq.s   loc_FFC32798
                move.l  #$FFFFFC6B,-(sp)
                move.l  $32(a3),-(sp)
                jsr     sub_FFC318F4
                moveq   #0,d0
                move.l  d0,$32(a3)
                addq.w  #8,sp

loc_FFC32798:                           ; CODE XREF: sub_FFC32770+10↑j
                tst.l   $36(a3)
                beq.s   loc_FFC327C4
                move.l  #$FFFFFC6B,-(sp)
                move.l  $36(a3),-(sp)
                jsr     sub_FFC318F4
                moveq   #0,d0
                move.l  d0,$36(a3)
                addq.w  #8,sp
                bra.s   loc_FFC327C4
; ---------------------------------------------------------------------------

loc_FFC327B6:                           ; CODE XREF: sub_FFC32770+62↓j
                move.l  #$FFFFFC6B,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC318F4
                addq.w  #8,sp

loc_FFC327C4:                           ; CODE XREF: sub_FFC32770+2C↑j
                                        ; sub_FFC32770+44↑j
                pea     $1A(a3)
                jsr     sub_FFC2FBC2
                movea.l d0,a4
                move.l  a4,d0
                addq.w  #4,sp
                bne.s   loc_FFC327B6
                bra.s   loc_FFC327E4
; ---------------------------------------------------------------------------

loc_FFC327D6:                           ; CODE XREF: sub_FFC32770+82↓j
                move.l  #$FFFFFC6B,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC318F4
                addq.w  #8,sp

loc_FFC327E4:                           ; CODE XREF: sub_FFC32770+64↑j
                pea     $26(a3)
                jsr     sub_FFC2FBC2
                movea.l d0,a4
                move.l  a4,d0
                addq.w  #4,sp
                bne.s   loc_FFC327D6
                movem.l var_8(a6),a3-a4
                unlk    a6
                rts
; End of function sub_FFC32770


; =============== S U B R O U T I N E =======================================


sub_FFC327FE:                           ; CODE XREF: sub_FFC32CE0+98↓p
                                        ; sub_FFC32CE0+A6↓p ...
                movea.l ($2050).w,a1
                movea.l $2B4(a1),a1
                jmp     (a1)
; End of function sub_FFC327FE

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC32810:                           ; DATA XREF: ROM:FFC06D94↑o

var_8           = -8
arg_0           =  8

                link    a6,#0
                movem.l a3-a4,-(sp)
                movea.l arg_0(a6),a3
                pea     $3C(a3)
                jsr     sub_FFC2FBC2
                movea.l d0,a4
                move.l  a4,d0
                addq.w  #4,sp
                beq.s   loc_FFC3284C
                moveq   #$3E,d0 ; '>'
                move.l  d0,-(sp)
                moveq   #0,d1
                move.l  d1,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC300B0
                clr.b   6(a4)
                pea     $6C(a3)
                move.l  a4,-(sp)
                jsr     sub_FFC2FB70
                lea     $14(sp),sp

loc_FFC3284C:                           ; CODE XREF: sub_FFC32810+1A↑j
                move.l  a4,d0
                movem.l var_8(a6),a3-a4
                unlk    a6
                rts
; End of function sub_FFC32810


; =============== S U B R O U T I N E =======================================


sub_FFC32858:                           ; CODE XREF: sub_FFC328C0+60↓p
                                        ; sub_FFC328C0+8E↓p
                movea.l ($2050).w,a1
                movea.l $164(a1),a1
                jmp     (a1)
; End of function sub_FFC32858

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC32870:                           ; DATA XREF: ROM:FFC06D98↑o

var_10          = -$10
arg_0           =  8

                link    a6,#-4
                movem.l a2-a4,-(sp)
                movea.l arg_0(a6),a4
                jsr     sub_FFC30D10
                movea.l d0,a2
                movea.l $12(a4),a3
                pea     sub_FFC2FB0C(pc)
                move.l  a4,-(sp)
                pea     $6C(a2)
                jsr     sub_FFC2FCC2
                move.l  a3,d0
                beq.s   loc_FFC3289C
                subq.w  #1,6(a3)

loc_FFC3289C:                           ; CODE XREF: sub_FFC32870+26↑j
                pea     $3C(a2)
                move.l  a4,-(sp)
                jsr     sub_FFC2FB70
                movem.l var_10(a6),a2-a4
                unlk    a6
                rts
; End of function sub_FFC32870


; =============== S U B R O U T I N E =======================================


sub_FFC328B0:                           ; CODE XREF: sub_FFC328C0+9C↓p
                                        ; sub_FFC32A90+22↓p ...
                movea.l ($2050).w,a1
                movea.l $168(a1),a1
                jmp     (a1)
; End of function sub_FFC328B0

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC328C0:                           ; DATA XREF: ROM:FFC06D9C↑o

var_20          = -$20
var_10          = -$10
var_8           = -8
var_4           = -4
arg_0           =  8
arg_4           =  $C
arg_8           =  $10

                link    a6,#-$10
                movem.l d7/a2-a4,-(sp)
                movea.l arg_0(a6),a3
                lea     $12(a3),a4
                move.l  arg_8(a6),-(sp)
                move.l  $2E(a3),-(sp)
                jsr     sub_FFC31EBC
                move.l  d0,var_10(a6)
                addq.w  #8,sp
                bne.s   loc_FFC328F6
                move.l  #$FFFFFC76,-(sp)
                move.l  a3,-(sp)
                jsr     sub_FFC318F4
                addq.w  #8,sp
                bra.w   loc_FFC32A7C
; ---------------------------------------------------------------------------

loc_FFC328F6:                           ; CODE XREF: sub_FFC328C0+22↑j
                movea.l var_10(a6),a0
                pea     $C(a0)
                jsr     sub_FFC2FBC2
                movea.l d0,a4
                move.l  a4,d0
                addq.w  #4,sp
                bne.s   loc_FFC3291C
                move.l  #$FFFFFC62,-(sp)
                move.l  a3,-(sp)
                jsr     sub_FFC318F4
                addq.w  #8,sp
                bra.w   loc_FFC32A7C
; ---------------------------------------------------------------------------

loc_FFC3291C:                           ; CODE XREF: sub_FFC328C0+48↑j
                move.l  arg_8(a6),-(sp)
                jsr     sub_FFC32858
                movea.l d0,a2
                move.l  a2,d0
                addq.w  #4,sp
                bne.s   loc_FFC3294A
                move.l  var_10(a6),-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC322B8
                move.l  #$FFFFFC75,-(sp)
                move.l  a3,-(sp)
                jsr     sub_FFC318F4
                lea     $10(sp),sp
                bra.w   loc_FFC32A7C
; ---------------------------------------------------------------------------

loc_FFC3294A:                           ; CODE XREF: sub_FFC328C0+6A↑j
                move.l  arg_8(a6),-(sp)
                jsr     sub_FFC32858
                move.l  d0,var_8(a6)
                addq.w  #4,sp
                bne.s   loc_FFC32980
                move.l  a2,-(sp)
                jsr     sub_FFC328B0
                move.l  var_10(a6),-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC322B8
                lea     $C(sp),sp
                move.l  #$FFFFFC75,-(sp)
                move.l  a3,-(sp)
                jsr     sub_FFC318F4
                addq.w  #8,sp
                bra.w   loc_FFC32A7C
; ---------------------------------------------------------------------------

loc_FFC32980:                           ; CODE XREF: sub_FFC328C0+98↑j
                move.l  arg_8(a6),-(sp)
                move.l  arg_4(a6),-(sp)
                move.l  a2,-(sp)
                jsr     sub_FFC326AE
                move.l  arg_8(a6),-(sp)
                move.l  var_10(a6),-(sp)
                move.l  var_8(a6),-(sp)
                jsr     sub_FFC326AE
                movea.l var_8(a6),a0
                move.l  $A(a0),$E(a2)
                movea.l var_8(a6),a0
                move.l  $A(a2),$E(a0)
                movea.l var_8(a6),a0
                move.l  $A(a0),$28(a4)
                move.b  #1,$2C(a4)
                move.l  $3A(a3),$3A(a4)
                move.b  #1,$3E(a4)
                tst.l   $2E(a4)
                lea     $18(sp),sp
                beq.s   loc_FFC329EA
                movea.l arg_4(a6),a1
                lea     $1C(a1),a1
                movea.l a1,a0
                movea.l $2E(a4),a1
                moveq   #$48,d0 ; 'H'
                _BlockMove

loc_FFC329EA:                           ; CODE XREF: sub_FFC328C0+116↑j
                tst.l   $32(a4)
                beq.s   loc_FFC32A14
                move.l  $32(a4),var_4(a6)
                clr.w   d7
                bra.s   loc_FFC32A0A
; ---------------------------------------------------------------------------

loc_FFC329FA:                           ; CODE XREF: sub_FFC328C0+152↓j
                move.l  var_4(a6),d0
                addq.l  #1,var_4(a6)
                movea.l d0,a0
                clr.b   (a0)
                move.w  d7,d0
                addq.w  #1,d7

loc_FFC32A0A:                           ; CODE XREF: sub_FFC328C0+138↑j
                moveq   #0,d0
                move.w  d7,d0
                cmpi.w  #$68,d0 ; 'h'
                bcs.s   loc_FFC329FA

loc_FFC32A14:                           ; CODE XREF: sub_FFC328C0+12E↑j
                tst.l   $36(a4)
                beq.s   loc_FFC32A20
                movea.l $36(a4),a0
                clr.b   (a0)

loc_FFC32A20:                           ; CODE XREF: sub_FFC328C0+158↑j
                tst.b   $2D(a4)
                beq.s   loc_FFC32A5C
                move.w  #8,4(a2)
                movea.l var_8(a6),a0
                move.w  #8,4(a0)
                move.l  $A(a2),$28(a3)
                moveq   #0,d0
                move.l  d0,$3A(a2)
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC318F4
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  a3,-(sp)
                jsr     sub_FFC318F4
                lea     $10(sp),sp
                bra.s   loc_FFC32A7C
; ---------------------------------------------------------------------------

loc_FFC32A5C:                           ; CODE XREF: sub_FFC328C0+164↑j
                move.w  #6,4(a2)
                movea.l var_8(a6),a0
                move.w  #7,4(a0)
                move.l  a3,$3A(a2)
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC318F4
                addq.w  #8,sp

loc_FFC32A7C:                           ; CODE XREF: sub_FFC328C0+32↑j
                                        ; sub_FFC328C0+58↑j ...
                movem.l var_20(a6),d7/a2-a4
                unlk    a6
                rts
; End of function sub_FFC328C0


; =============== S U B R O U T I N E =======================================


sub_FFC32A86:                           ; CODE XREF: sub_FFC31BA0+64↑p
                movea.l ($2050).w,a1
                movea.l $16C(a1),a1
                jmp     (a1)
; End of function sub_FFC32A86


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC32A90:                           ; DATA XREF: ROM:FFC06DA0↑o

var_C           = -$C
var_4           = -4
arg_0           =  8
arg_4           =  $C
arg_8           =  $10

                link    a6,#-4
                movem.l a3-a4,-(sp)
                movea.l arg_4(a6),a3
                move.l  arg_8(a6),-(sp)
                move.l  $E(a3),-(sp)
                jsr     sub_FFC32584
                movea.l d0,a4
                move.l  a4,d0
                addq.w  #8,sp
                bne.s   loc_FFC32ACA
                move.l  a3,-(sp)
                jsr     sub_FFC328B0
                move.l  #$FFFFFC74,-(sp)
                move.l  arg_0(a6),-(sp)
                jsr     sub_FFC318F4
                lea     $C(sp),sp
                bra.s   loc_FFC32B0A
; ---------------------------------------------------------------------------

loc_FFC32ACA:                           ; CODE XREF: sub_FFC32A90+1E↑j
                move.w  #8,4(a4)
                move.w  #8,4(a3)
                movea.l $3A(a4),a0
                move.l  a0,var_4(a6)
                move.l  $A(a4),$28(a0)
                moveq   #0,d0
                move.l  d0,$3A(a4)
                move.l  d0,$3A(a3)
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  var_4(a6),-(sp)
                jsr     sub_FFC318F4
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  arg_0(a6),-(sp)
                jsr     sub_FFC318F4
                lea     $10(sp),sp

loc_FFC32B0A:                           ; CODE XREF: sub_FFC32A90+38↑j
                movem.l var_C(a6),a3-a4
                unlk    a6
                rts
; End of function sub_FFC32A90


; =============== S U B R O U T I N E =======================================


sub_FFC32B14:                           ; CODE XREF: sub_FFC31120+92↑p
                movea.l ($2050).w,a1
                movea.l $170(a1),a1
                jmp     (a1)
; End of function sub_FFC32B14

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC32B20:                           ; DATA XREF: ROM:FFC06DA4↑o

var_10          = -$10
var_8           = -8
var_4           = -4
arg_0           =  8
arg_4           =  $C
arg_8           =  $10

                link    a6,#-8
                movem.l a3-a4,-(sp)
                movea.l arg_4(a6),a3
                movea.l arg_0(a6),a4
                move.l  arg_8(a6),-(sp)
                move.l  $E(a3),-(sp)
                jsr     sub_FFC32584
                move.l  d0,var_8(a6)
                addq.w  #8,sp
                bne.s   loc_FFC32B5C
                move.l  a3,-(sp)
                jsr     sub_FFC328B0
                move.l  #$FFFFFC74,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC318F4
                lea     $C(sp),sp
                bra.s   loc_FFC32B9A
; ---------------------------------------------------------------------------

loc_FFC32B5C:                           ; CODE XREF: sub_FFC32B20+22↑j
                movea.l var_8(a6),a0
                move.l  $3A(a0),var_4(a6)
                move.l  a3,-(sp)
                jsr     sub_FFC328B0
                move.l  var_8(a6),-(sp)
                jsr     sub_FFC328B0
                movea.l var_4(a6),a0
                move.l  $36(a4),$36(a0)
                move.l  #$FFFFFC70,-(sp)
                move.l  var_4(a6),-(sp)
                jsr     sub_FFC318F4
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC318F4
                lea     $18(sp),sp

loc_FFC32B9A:                           ; CODE XREF: sub_FFC32B20+3A↑j
                movem.l var_10(a6),a3-a4
                unlk    a6
                rts
; End of function sub_FFC32B20


; =============== S U B R O U T I N E =======================================


sub_FFC32BA4:                           ; CODE XREF: sub_FFC31200+92↑p
                movea.l ($2050).w,a1
                movea.l $174(a1),a1
                jmp     (a1)
; End of function sub_FFC32BA4

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC32BB0:                           ; DATA XREF: ROM:FFC06DA8↑o

var_10          = -$10
var_8           = -8
var_4           = -4
arg_0           =  8
arg_4           =  $C
arg_8           =  $10

                link    a6,#-8
                movem.l a3-a4,-(sp)
                movea.l arg_0(a6),a3
                movea.l arg_4(a6),a4
                lea     $12(a3),a0
                move.l  a0,var_4(a6)
                move.l  $34(a3),8(a0)
                movea.l var_4(a6),a0
                move.l  $2C(a3),$C(a0)
                move.l  arg_8(a6),-(sp)
                move.l  $E(a4),-(sp)
                jsr     sub_FFC32584
                move.l  d0,var_8(a6)
                addq.w  #8,sp
                beq.s   loc_FFC32C22
                pea     $26(a4)
                move.l  a3,-(sp)
                jsr     sub_FFC2FB70
                tst.l   $36(a4)
                addq.w  #8,sp
                bne.s   loc_FFC32C30
                pea     $26(a4)
                jsr     sub_FFC2FBC2
                move.l  d0,$36(a4)
                movea.l var_8(a6),a0
                tst.l   $32(a0)
                addq.w  #4,sp
                beq.s   loc_FFC32C30
                move.l  a0,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC32F18
                addq.w  #8,sp
                bra.s   loc_FFC32C30
; ---------------------------------------------------------------------------

loc_FFC32C22:                           ; CODE XREF: sub_FFC32BB0+3A↑j
                move.l  #$FFFFFC74,-(sp)
                move.l  a3,-(sp)
                jsr     sub_FFC318F4
                addq.w  #8,sp

loc_FFC32C30:                           ; CODE XREF: sub_FFC32BB0+4C↑j
                                        ; sub_FFC32BB0+64↑j ...
                movem.l var_10(a6),a3-a4
                unlk    a6
                rts
; End of function sub_FFC32BB0


; =============== S U B R O U T I N E =======================================


sub_FFC32C3A:                           ; CODE XREF: sub_FFC312E0+98↑p
                movea.l ($2050).w,a1
                movea.l $178(a1),a1
                jmp     (a1)
; End of function sub_FFC32C3A

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC32C50:                           ; DATA XREF: ROM:FFC06DAC↑o

var_10          = -$10
var_8           = -8
var_4           = -4
arg_0           =  8
arg_4           =  $C
arg_8           =  $10

                link    a6,#-8
                movem.l a3-a4,-(sp)
                movea.l arg_0(a6),a3
                movea.l arg_4(a6),a4
                lea     $12(a3),a0
                move.l  a0,var_4(a6)
                move.l  arg_8(a6),-(sp)
                move.l  $E(a4),-(sp)
                jsr     sub_FFC32584
                move.l  d0,var_8(a6)
                addq.w  #8,sp
                beq.s   loc_FFC32CB2
                pea     $1A(a4)
                move.l  a3,-(sp)
                jsr     sub_FFC2FB70
                tst.l   $32(a4)
                addq.w  #8,sp
                bne.s   loc_FFC32CC0
                pea     $1A(a4)
                jsr     sub_FFC2FBC2
                move.l  d0,$32(a4)
                movea.l var_8(a6),a0
                tst.l   $36(a0)
                addq.w  #4,sp
                beq.s   loc_FFC32CC0
                move.l  a4,-(sp)
                move.l  a0,-(sp)
                jsr     sub_FFC32F18
                addq.w  #8,sp
                bra.s   loc_FFC32CC0
; ---------------------------------------------------------------------------

loc_FFC32CB2:                           ; CODE XREF: sub_FFC32C50+2A↑j
                move.l  #$FFFFFC74,-(sp)
                move.l  a3,-(sp)
                jsr     sub_FFC318F4
                addq.w  #8,sp

loc_FFC32CC0:                           ; CODE XREF: sub_FFC32C50+3C↑j
                                        ; sub_FFC32C50+54↑j ...
                movem.l var_10(a6),a3-a4
                unlk    a6
                rts
; End of function sub_FFC32C50


; =============== S U B R O U T I N E =======================================


sub_FFC32CCA:                           ; CODE XREF: sub_FFC313D0+98↑p
                movea.l ($2050).w,a1
                movea.l $17C(a1),a1
                jmp     (a1)
; End of function sub_FFC32CCA

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC32CE0:                           ; DATA XREF: ROM:FFC06DB0↑o

var_C           = -$C
var_4           = -4
arg_0           =  8
arg_4           =  $C
arg_8           =  $10

                link    a6,#-4
                movem.l a3-a4,-(sp)
                movea.l arg_4(a6),a4
                move.l  $12(a4),var_4(a6)
                move.l  arg_8(a6),-(sp)
                move.l  $E(a4),-(sp)
                jsr     sub_FFC325D0
                movea.l d0,a3
                moveq   #0,d0
                move.w  4(a4),d0
                moveq   #6,d1
                cmp.l   d0,d1
                addq.w  #8,sp
                bne.s   loc_FFC32D34
                move.l  a3,d0
                beq.s   loc_FFC32D1A
                move.l  a3,-(sp)
                jsr     sub_FFC328B0
                addq.w  #4,sp

loc_FFC32D1A:                           ; CODE XREF: sub_FFC32CE0+30↑j
                move.l  #$FFFFFC6C,-(sp)
                move.l  $3A(a4),-(sp)
                jsr     sub_FFC318F4
                move.l  a4,-(sp)
                jsr     sub_FFC328B0
                lea     $C(sp),sp
                bra.s   loc_FFC32D92
; ---------------------------------------------------------------------------

loc_FFC32D34:                           ; CODE XREF: sub_FFC32CE0+2C↑j
                moveq   #0,d0
                move.w  4(a4),d0
                moveq   #7,d1
                cmp.l   d0,d1
                bne.s   loc_FFC32D66
                move.l  a3,d0
                beq.s   loc_FFC32D5C
                move.l  #$FFFFFC76,-(sp)
                move.l  $3A(a3),-(sp)
                jsr     sub_FFC318F4
                move.l  a3,-(sp)
                jsr     sub_FFC328B0
                lea     $C(sp),sp

loc_FFC32D5C:                           ; CODE XREF: sub_FFC32CE0+62↑j
                move.l  a4,-(sp)
                jsr     sub_FFC328B0
                addq.w  #4,sp
                bra.s   loc_FFC32D92
; ---------------------------------------------------------------------------

loc_FFC32D66:                           ; CODE XREF: sub_FFC32CE0+5E↑j
                moveq   #0,d0
                move.w  4(a4),d0
                moveq   #8,d1
                cmp.l   d0,d1
                bne.s   loc_FFC32D92
                move.l  a3,d0
                beq.s   loc_FFC32D84
                move.l  a3,-(sp)
                jsr     sub_FFC327FE
                move.l  a3,-(sp)
                jsr     sub_FFC328B0
                addq.w  #8,sp

loc_FFC32D84:                           ; CODE XREF: sub_FFC32CE0+94↑j
                move.l  a4,-(sp)
                jsr     sub_FFC327FE
                move.l  a4,-(sp)
                jsr     sub_FFC328B0
                addq.w  #8,sp

loc_FFC32D92:                           ; CODE XREF: sub_FFC32CE0+52↑j
                                        ; sub_FFC32CE0+84↑j ...
                tst.l   arg_0(a6)
                beq.s   loc_FFC32DA8
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  arg_0(a6),-(sp)
                jsr     sub_FFC318F4
                addq.w  #8,sp
                bra.s   loc_FFC32DB2
; ---------------------------------------------------------------------------

loc_FFC32DA8:                           ; CODE XREF: sub_FFC32CE0+B6↑j
                move.l  var_4(a6),-(sp)
                jsr     sub_FFC31E6A
                addq.w  #4,sp

loc_FFC32DB2:                           ; CODE XREF: sub_FFC32CE0+C6↑j
                movem.l var_C(a6),a3-a4
                unlk    a6
                rts
; End of function sub_FFC32CE0


; =============== S U B R O U T I N E =======================================


sub_FFC32DBC:                           ; CODE XREF: sub_FFC314C0+64↑p
                                        ; sub_FFC326F0+16↑p
                movea.l ($2050).w,a1
                movea.l $180(a1),a1
                jmp     (a1)
; End of function sub_FFC32DBC

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC32DD0:                           ; DATA XREF: ROM:FFC06DB4↑o

var_4           = -4
arg_0           =  8
arg_4           =  $C

                link    a6,#0
                move.l  a4,-(sp)
                movea.l arg_0(a6),a4
                pea     $2C(a4)
                moveq   #0,d0
                move.w  $2A(a4),d0
                move.l  d0,-(sp)
                move.l  $36(a4),-(sp)
                moveq   #0,d0
                move.w  $28(a4),d0
                move.l  d0,-(sp)
                moveq   #1,d0
                move.l  d0,-(sp)
                move.l  d0,-(sp)
                move.l  $2E(a4),-(sp)
                move.l  arg_4(a6),-(sp)
                jsr     sub_FFC3239E
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC318F4
                movea.l var_4(a6),a4
                unlk    a6
                rts
; End of function sub_FFC32DD0


; =============== S U B R O U T I N E =======================================


sub_FFC32E16:                           ; CODE XREF: sub_FFC31BA0+88↑p
                movea.l ($2050).w,a1
                movea.l $184(a1),a1
                jmp     (a1)
; End of function sub_FFC32E16


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC32E20:                           ; DATA XREF: ROM:FFC06DB8↑o

var_18          = -$18
var_4           = -4
arg_0           =  8
arg_4           =  $C

                link    a6,#-8
                movem.l d7/a2-a4,-(sp)
                bra.w   loc_FFC32EF4
; ---------------------------------------------------------------------------

loc_FFC32E2C:                           ; CODE XREF: sub_FFC32E20+EA↓j
                lea     $12(a3),a2
                move.l  $2C(a4),d0
                sub.l   $30(a4),d0
                cmp.l   $C(a2),d0
                bcc.s   loc_FFC32E48
                move.l  $2C(a4),d7
                sub.l   $30(a4),d7
                bra.s   loc_FFC32E4C
; ---------------------------------------------------------------------------

loc_FFC32E48:                           ; CODE XREF: sub_FFC32E20+1C↑j
                move.l  $C(a2),d7

loc_FFC32E4C:                           ; CODE XREF: sub_FFC32E20+26↑j
                move.l  $30(a4),d0
                add.l   $34(a4),d0
                move.l  d0,var_4(a6)
                movea.l 8(a2),a0
                movea.l var_4(a6),a1
                move.l  d7,d0
                _BlockMove
                add.l   d7,$30(a3)
                add.l   d7,8(a2)
                sub.l   d7,$C(a2)
                move.l  $3E(a3),$3E(a4)
                move.l  $42(a3),$42(a4)
                move.l  $3A(a3),$3A(a4)
                move.l  d7,d0
                add.l   $30(a4),d0
                move.l  d0,$30(a4)
                tst.l   $C(a2)
                beq.s   loc_FFC32E9A
                move.b  #1,$38(a4)
                bra.s   loc_FFC32EC2
; ---------------------------------------------------------------------------

loc_FFC32E9A:                           ; CODE XREF: sub_FFC32E20+70↑j
                move.b  $38(a3),$38(a4)
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  a3,-(sp)
                jsr     sub_FFC318F4
                movea.l arg_0(a6),a0
                pea     $26(a0)
                jsr     sub_FFC2FBC2
                movea.l arg_0(a6),a0
                move.l  d0,$36(a0)
                lea     $C(sp),sp

loc_FFC32EC2:                           ; CODE XREF: sub_FFC32E20+78↑j
                tst.b   $38(a4)
                beq.s   loc_FFC32ED2
                move.l  $30(a4),d0
                cmp.l   $2C(a4),d0
                bne.s   loc_FFC32EF4

loc_FFC32ED2:                           ; CODE XREF: sub_FFC32E20+A6↑j
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC318F4
                movea.l arg_4(a6),a0
                pea     $1A(a0)
                jsr     sub_FFC2FBC2
                movea.l arg_4(a6),a0
                move.l  d0,$32(a0)
                lea     $C(sp),sp

loc_FFC32EF4:                           ; CODE XREF: sub_FFC32E20+8↑j
                                        ; sub_FFC32E20+B0↑j
                movea.l arg_0(a6),a0
                movea.l $36(a0),a3
                move.l  a3,d0
                beq.s   loc_FFC32F0E
                movea.l arg_4(a6),a0
                movea.l $32(a0),a4
                move.l  a4,d0
                bne.w   loc_FFC32E2C

loc_FFC32F0E:                           ; CODE XREF: sub_FFC32E20+DE↑j
                movem.l var_18(a6),d7/a2-a4
                unlk    a6
                rts
; End of function sub_FFC32E20


; =============== S U B R O U T I N E =======================================


sub_FFC32F18:                           ; CODE XREF: sub_FFC32BB0+6A↑p
                                        ; sub_FFC32C50+5A↑p
                movea.l ($2050).w,a1
                movea.l $188(a1),a1
                jmp     (a1)
; End of function sub_FFC32F18

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC32F30:                           ; DATA XREF: ROM:FFC06DC8↑o

var_8           = -8
arg_0           =  8

                link    a6,#0
                movem.l a3-a4,-(sp)
                movea.l arg_0(a6),a3
                pea     $48(a3)
                jsr     sub_FFC2FBC2
                movea.l d0,a4
                move.l  a4,d0
                addq.w  #4,sp
                beq.s   loc_FFC32F6E
                pea     ($10CA).w
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC300B0
                move.b  #1,6(a4)
                pea     $78(a3)
                move.l  a4,-(sp)
                jsr     sub_FFC2FB70
                lea     $14(sp),sp

loc_FFC32F6E:                           ; CODE XREF: sub_FFC32F30+1A↑j
                move.l  a4,d0
                movem.l var_8(a6),a3-a4
                unlk    a6
                rts
; End of function sub_FFC32F30


; =============== S U B R O U T I N E =======================================


sub_FFC32F7A:                           ; CODE XREF: sub_FFC33150+34↓p
                                        ; sub_FFC33360+14↓p ...
                movea.l ($2050).w,a1
                movea.l $198(a1),a1
                jmp     (a1)
; End of function sub_FFC32F7A

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC32F90:                           ; DATA XREF: ROM:FFC06DCC↑o

var_10          = -$10
arg_0           =  8

                link    a6,#-4
                movem.l a2-a4,-(sp)
                movea.l arg_0(a6),a4
                jsr     sub_FFC30D10
                movea.l d0,a2
                movea.l $12(a4),a3
                pea     sub_FFC2FB0C(pc)
                move.l  a4,-(sp)
                pea     $78(a2)
                jsr     sub_FFC2FCC2
                move.l  a3,d0
                beq.s   loc_FFC32FBC
                subq.w  #1,6(a3)

loc_FFC32FBC:                           ; CODE XREF: sub_FFC32F90+26↑j
                moveq   #$FFFFFFFF,d0
                move.l  d0,$12(a4)
                pea     $48(a2)
                move.l  a4,-(sp)
                jsr     sub_FFC2FB70
                movem.l var_10(a6),a2-a4
                unlk    a6
                rts
; End of function sub_FFC32F90


; =============== S U B R O U T I N E =======================================


sub_FFC32FD6:                           ; CODE XREF: sub_FFC330A0+26↓p
                                        ; sub_FFC334A0+20↓p ...
                movea.l ($2050).w,a1
                movea.l $19C(a1),a1
                jmp     (a1)
; End of function sub_FFC32FD6


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC32FE0:                           ; DATA XREF: ROM:FFC06DD0↑o

var_16          = -$16
var_12          = -$12
var_10          = -$10
arg_0           =  8
arg_7           =  $F

                link    a6,#0
                movem.l d7/a2-a4,-(sp)
                movea.l arg_0(a6),a3
                pea     ($2500).w
                move    sr,d0
                move    $14+var_12(sp),sr
                move.w  d0,d7
                moveq   #0,d0
                move.w  4(a3),d0
                moveq   #9,d1
                cmp.l   d0,d1
                addq.w  #4,sp
                beq.s   loc_FFC3307E
                move.w  #9,4(a3)
                move.b  arg_7(a6),$3E(a3)
                jsr     sub_FFC30D10
                movea.l d0,a4
                pea     sub_FFC2FB0C(pc)
                move.l  a3,-(sp)
                pea     $78(a4)
                jsr     sub_FFC2FCC2
                pea     $90(a4)
                move.l  a3,-(sp)
                jsr     sub_FFC2FB70
                tst.l   $B8(a4)
                lea     $14(sp),sp
                bne.s   loc_FFC3307E
                pea     $90(a4)
                jsr     sub_FFC2FBC2
                move.l  d0,$B8(a4)
                ext.l   d7
                move.l  d7,-(sp)
                move    sr,d0
                move    $18+var_16(sp),sr
                lea     $DD0(a3),a1
                movea.l a1,a0
                lea     $5B8(a4),a2
                movea.l a2,a1
                moveq   #$44,d0 ; 'D'
                _BlockMove
                pea     $5B8(a4)
                pea     sub_FFC3313C(pc)
                moveq   #1,d0
                move.l  d0,-(sp)
                moveq   #0,d1
                move.b  $3E(a3),d1
                move.l  d1,-(sp)
                jsr     sub_FFC35AB2
                lea     $18(sp),sp
                bra.s   loc_FFC3308A
; ---------------------------------------------------------------------------

loc_FFC3307E:                           ; CODE XREF: sub_FFC32FE0+24↑j
                                        ; sub_FFC32FE0+58↑j
                ext.l   d7
                move.l  d7,-(sp)
                move    sr,d0
                move    $14+var_12(sp),sr
                addq.w  #4,sp

loc_FFC3308A:                           ; CODE XREF: sub_FFC32FE0+9C↑j
                movem.l var_10(a6),d7/a2-a4
                unlk    a6
                rts
; End of function sub_FFC32FE0


; =============== S U B R O U T I N E =======================================


sub_FFC33094:                           ; CODE XREF: sub_FFC33330+16↓p
                                        ; sub_FFC335F0+54↓p ...
                movea.l ($2050).w,a1
                movea.l $1A0(a1),a1
                jmp     (a1)
; End of function sub_FFC33094

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC330A0:                           ; DATA XREF: ROM:FFC06DD4↑o

var_14          = -$14
var_8           = -8
var_4           = -4

                link    a6,#-8
                movem.l a2-a4,-(sp)
                jsr     sub_FFC30D10
                movea.l d0,a3
                movea.l $B8(a3),a4
                move.l  $16(a4),var_4(a6)
                move.l  a4,-(sp)
                jsr     sub_FFC327FE
                move.l  $12(a4),var_8(a6)
                move.l  a4,-(sp)
                jsr     sub_FFC32FD6
                tst.l   var_4(a6)
                addq.w  #8,sp
                beq.s   loc_FFC330E2
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  var_4(a6),-(sp)
                jsr     sub_FFC318F4
                addq.w  #8,sp
                bra.s   loc_FFC330F2
; ---------------------------------------------------------------------------

loc_FFC330E2:                           ; CODE XREF: sub_FFC330A0+30↑j
                tst.l   var_8(a6)
                beq.s   loc_FFC330F2
                move.l  var_8(a6),-(sp)
                jsr     sub_FFC31E6A
                addq.w  #4,sp

loc_FFC330F2:                           ; CODE XREF: sub_FFC330A0+40↑j
                                        ; sub_FFC330A0+46↑j
                pea     $90(a3)
                jsr     sub_FFC2FBC2
                movea.l d0,a4
                move.l  a4,$B8(a3)
                move.l  a4,d0
                addq.w  #4,sp
                beq.s   loc_FFC33132
                lea     $DD0(a4),a1
                movea.l a1,a0
                lea     $5B8(a3),a2
                movea.l a2,a1
                moveq   #$44,d0 ; 'D'
                _BlockMove
                pea     $5B8(a3)
                pea     sub_FFC3313C(pc)
                moveq   #1,d0
                move.l  d0,-(sp)
                moveq   #0,d1
                move.b  $3E(a4),d1
                move.l  d1,-(sp)
                jsr     sub_FFC35AB2
                lea     $10(sp),sp

loc_FFC33132:                           ; CODE XREF: sub_FFC330A0+64↑j
                movem.l var_14(a6),a2-a4
                unlk    a6
                rts
; End of function sub_FFC330A0


; =============== S U B R O U T I N E =======================================


sub_FFC3313C:                           ; DATA XREF: sub_FFC32FE0+84↑o
                                        ; sub_FFC330A0+7A↑o
                movea.l ($2050).w,a1
                movea.l $1A4(a1),a1
                jmp     (a1)
; End of function sub_FFC3313C

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC33150:                           ; DATA XREF: ROM:FFC06DD8↑o

var_8           = -8
arg_0           =  8
arg_4           =  $C
arg_8           =  $10

                link    a6,#0
                movem.l a3-a4,-(sp)
                movea.l arg_0(a6),a4
                tst.l   $3E(a4)
                beq.s   loc_FFC33180
                move.l  $3E(a4),-(sp)
                jsr     sub_FFC35650
                tst.l   d0
                addq.w  #4,sp
                bne.s   loc_FFC33180
                move.l  #$FFFFFC60,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC318F4
                addq.w  #8,sp
                bra.s   loc_FFC331BC
; ---------------------------------------------------------------------------

loc_FFC33180:                           ; CODE XREF: sub_FFC33150+10↑j
                                        ; sub_FFC33150+1E↑j
                move.l  arg_8(a6),-(sp)
                jsr     sub_FFC32F7A
                movea.l d0,a3
                move.l  a3,d0
                addq.w  #4,sp
                bne.s   loc_FFC331A0
                move.l  #$FFFFFC75,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC318F4
                addq.w  #8,sp
                bra.s   loc_FFC331BC
; ---------------------------------------------------------------------------

loc_FFC331A0:                           ; CODE XREF: sub_FFC33150+3E↑j
                move.l  arg_8(a6),-(sp)
                move.l  arg_4(a6),-(sp)
                move.l  a3,-(sp)
                jsr     sub_FFC326AE
                move.l  a4,$3A(a3)
                move.l  a3,-(sp)
                jsr     sub_FFC33442
                lea     $10(sp),sp

loc_FFC331BC:                           ; CODE XREF: sub_FFC33150+2E↑j
                                        ; sub_FFC33150+4E↑j
                movem.l var_8(a6),a3-a4
                unlk    a6
                rts
; End of function sub_FFC33150


; =============== S U B R O U T I N E =======================================


sub_FFC331C6:                           ; CODE XREF: sub_FFC31BA0+76↑p
                movea.l ($2050).w,a1
                movea.l $1A8(a1),a1
                jmp     (a1)
; End of function sub_FFC331C6


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC331D0:                           ; DATA XREF: ROM:FFC06DDC↑o

var_8           = -8
arg_0           =  8
arg_4           =  $C

                link    a6,#0
                movem.l a3-a4,-(sp)
                movea.l arg_4(a6),a4
                lea     $F86(a4),a3
                move.l  #$53415054,(a3)
                move.l  arg_0(a6),$3A(a4)
                move.l  a4,-(sp)
                jsr     sub_FFC33494
                movem.l var_8(a6),a3-a4
                unlk    a6
                rts
; End of function sub_FFC331D0


; =============== S U B R O U T I N E =======================================


sub_FFC331FC:                           ; CODE XREF: sub_FFC31120+AC↑p
                movea.l ($2050).w,a1
                movea.l $1AC(a1),a1
                jmp     (a1)
; End of function sub_FFC331FC

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC33210:                           ; DATA XREF: ROM:FFC06DE0↑o

var_C           = -$C
arg_0           =  8
arg_4           =  $C

                link    a6,#0
                movem.l a2-a4,-(sp)
                movea.l arg_0(a6),a2
                movea.l arg_4(a6),a4
                lea     $F86(a4),a3
                move.l  #$5552454A,(a3)
                move.l  $36(a2),4(a3)
                move.l  a2,$3A(a4)
                move.l  a4,-(sp)
                jsr     sub_FFC33494
                movem.l var_C(a6),a2-a4
                unlk    a6
                rts
; End of function sub_FFC33210


; =============== S U B R O U T I N E =======================================


sub_FFC33244:                           ; CODE XREF: sub_FFC31200+AC↑p
                movea.l ($2050).w,a1
                movea.l $1B0(a1),a1
                jmp     (a1)
; End of function sub_FFC33244

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC33250:                           ; DATA XREF: ROM:FFC06DE4↑o

var_12          = -$12
var_E           = -$E
var_A           = -$A
var_8           = -8
arg_0           =  8
arg_4           =  $C

                link    a6,#0
                movem.l d7/a4,-(sp)
                movea.l arg_4(a6),a4
                pea     $26(a4)
                move.l  arg_0(a6),-(sp)
                jsr     sub_FFC2FB70
                pea     ($2500).w
                move    sr,d0
                move    $14+var_12(sp),sr
                move.w  d0,d7
                tst.l   $36(a4)
                lea     $C(sp),sp
                bne.s   loc_FFC332A0
                pea     $26(a4)
                jsr     sub_FFC2FBC2
                move.l  d0,$36(a4)
                ext.l   d7
                move.l  d7,-(sp)
                move    sr,d0
                move    $10+var_E(sp),sr
                move.l  a4,-(sp)
                jsr     sub_FFC348E8
                lea     $C(sp),sp
                bra.s   loc_FFC332AC
; ---------------------------------------------------------------------------

loc_FFC332A0:                           ; CODE XREF: sub_FFC33250+2C↑j
                ext.l   d7
                move.l  d7,-(sp)
                move    sr,d0
                move    $C+var_A(sp),sr
                addq.w  #4,sp

loc_FFC332AC:                           ; CODE XREF: sub_FFC33250+4E↑j
                movem.l var_8(a6),d7/a4
                unlk    a6
                rts
; End of function sub_FFC33250


; =============== S U B R O U T I N E =======================================


sub_FFC332B6:                           ; CODE XREF: sub_FFC312E0+B2↑p
                movea.l ($2050).w,a1
                movea.l $1B4(a1),a1
                jmp     (a1)
; End of function sub_FFC332B6


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC332C0:                           ; DATA XREF: ROM:FFC06DE8↑o

var_12          = -$12
var_E           = -$E
var_A           = -$A
var_8           = -8
arg_0           =  8
arg_4           =  $C

                link    a6,#0
                movem.l d7/a4,-(sp)
                movea.l arg_4(a6),a4
                pea     $1A(a4)
                move.l  arg_0(a6),-(sp)
                jsr     sub_FFC2FB70
                pea     ($2500).w
                move    sr,d0
                move    $14+var_12(sp),sr
                move.w  d0,d7
                tst.l   $32(a4)
                lea     $C(sp),sp
                bne.s   loc_FFC33310
                pea     $1A(a4)
                jsr     sub_FFC2FBC2
                move.l  d0,$32(a4)
                ext.l   d7
                move.l  d7,-(sp)
                move    sr,d0
                move    $10+var_E(sp),sr
                move.l  a4,-(sp)
                jsr     sub_FFC34B62
                lea     $C(sp),sp
                bra.s   loc_FFC3331C
; ---------------------------------------------------------------------------

loc_FFC33310:                           ; CODE XREF: sub_FFC332C0+2C↑j
                ext.l   d7
                move.l  d7,-(sp)
                move    sr,d0
                move    $C+var_A(sp),sr
                addq.w  #4,sp

loc_FFC3331C:                           ; CODE XREF: sub_FFC332C0+4E↑j
                movem.l var_8(a6),d7/a4
                unlk    a6
                rts
; End of function sub_FFC332C0


; =============== S U B R O U T I N E =======================================


sub_FFC33326:                           ; CODE XREF: sub_FFC313D0+B2↑p
                movea.l ($2050).w,a1
                movea.l $1B8(a1),a1
                jmp     (a1)
; End of function sub_FFC33326


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC33330:                           ; DATA XREF: ROM:FFC06DEC↑o

var_4           = -4
arg_0           =  8
arg_4           =  $C

                link    a6,#0
                move.l  a4,-(sp)
                movea.l arg_4(a6),a4
                move.l  arg_0(a6),$16(a4)
                moveq   #1,d0
                move.l  d0,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC33094
                movea.l var_4(a6),a4
                unlk    a6
                rts
; End of function sub_FFC33330


; =============== S U B R O U T I N E =======================================


sub_FFC33352:                           ; CODE XREF: sub_FFC307A0+14↑p
                                        ; sub_FFC307E0+44↑p ...
                movea.l ($2050).w,a1
                movea.l $1BC(a1),a1
                jmp     (a1)
; End of function sub_FFC33352

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC33360:                           ; DATA XREF: ROM:FFC06DF0↑o

var_8           = -8
arg_0           =  8
arg_4           =  $C

                link    a6,#0
                movem.l a3-a4,-(sp)
                movea.l arg_0(a6),a3
                lea     $12(a3),a4
                move.l  arg_4(a6),-(sp)
                jsr     sub_FFC32F7A
                movea.l d0,a4
                move.l  a4,d0
                addq.w  #4,sp
                beq.s   loc_FFC333A4
                move.l  arg_4(a6),-(sp)
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC326AE
                move.l  a3,$3A(a4)
                moveq   #0,d0
                move.l  d0,$12(a4)
                move.l  a4,-(sp)
                jsr     sub_FFC33442
                lea     $10(sp),sp
                bra.s   loc_FFC333B2
; ---------------------------------------------------------------------------

loc_FFC333A4:                           ; CODE XREF: sub_FFC33360+1E↑j
                move.l  #$FFFFFC75,-(sp)
                move.l  a3,-(sp)
                jsr     sub_FFC318F4
                addq.w  #8,sp

loc_FFC333B2:                           ; CODE XREF: sub_FFC33360+42↑j
                movem.l var_8(a6),a3-a4
                unlk    a6
                rts
; End of function sub_FFC33360


; =============== S U B R O U T I N E =======================================


sub_FFC333BC:                           ; CODE XREF: sub_FFC31BA0+94↑p
                movea.l ($2050).w,a1
                movea.l $1C0(a1),a1
                jmp     (a1)
; End of function sub_FFC333BC

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC333D0:                           ; DATA XREF: ROM:FFC06DF4↑o

var_14          = -$14
arg_0           =  8

                link    a6,#-8
                movem.l a2-a4,-(sp)
                movea.l arg_0(a6),a4
                movea.l $3A(a4),a1
                movea.l a1,a2
                moveq   #0,d0
                move.w  4(a2),d0
                moveq   #2,d1
                cmp.l   d0,d1
                bne.s   loc_FFC333F4
                movea.l $32(a2),a3
                bra.s   loc_FFC333F8
; ---------------------------------------------------------------------------

loc_FFC333F4:                           ; CODE XREF: sub_FFC333D0+1C↑j
                movea.l $32(a1),a3

loc_FFC333F8:                           ; CODE XREF: sub_FFC333D0+22↑j
                move.w  #3,4(a4)
                move.l  a1,-(sp)
                pea     $6C(a4)
                pea     2(a3)
                pea     $24(a3)
                pea     $46(a3)
                jsr     sub_FFC33450
                movea.l (sp),a1
                pea     $40(a4)
                pea     ($C8).w
                pea     $D2(a4)
                pea     sub_FFC33558(pc)
                moveq   #1,d0
                move.l  d0,-(sp)
                pea     $6C(a4)
                jsr     sub_FFC35C9E
                lea     $18(sp),sp
                movea.l (sp)+,a1
                movem.l var_14(a6),a2-a4
                unlk    a6
                rts
; End of function sub_FFC333D0


; =============== S U B R O U T I N E =======================================


sub_FFC33442:                           ; CODE XREF: sub_FFC33150+64↑p
                                        ; sub_FFC33360+3A↑p
                movea.l ($2050).w,a1
                movea.l $1C4(a1),a1
                jmp     (a1)
; End of function sub_FFC33442

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: thunk

sub_FFC33450:                           ; CODE XREF: sub_FFC333D0+40↑p
                bra.l   sub_FFCC9AF0
; End of function sub_FFC33450

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC33460:                           ; DATA XREF: ROM:FFC06DF8↑o

var_4           = -4
arg_0           =  8

                link    a6,#0
                move.l  a4,-(sp)
                movea.l arg_0(a6),a4
                move.w  #$B,4(a4)
                pea     $F42(a4)
                pea     sub_FFC34518(pc)
                moveq   #1,d0
                move.l  d0,-(sp)
                move.l  d0,-(sp)
                move.l  d0,-(sp)
                pea     $F86(a4)
                moveq   #8,d1
                move.l  d1,-(sp)
                jsr     sub_FFC35B24
                movea.l var_4(a6),a4
                unlk    a6
                rts
; End of function sub_FFC33460


; =============== S U B R O U T I N E =======================================


sub_FFC33494:                           ; CODE XREF: sub_FFC331D0+1E↑p
                                        ; sub_FFC33210+26↑p ...
                movea.l ($2050).w,a1
                movea.l $1C8(a1),a1
                jmp     (a1)
; End of function sub_FFC33494

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC334A0:                           ; DATA XREF: ROM:FFC06DFC↑o

var_10          = -$10
var_4           = -4

                link    a6,#-4
                movem.l a2-a4,-(sp)
                move.l  a0,d0
                movea.l d0,a3
                movea.l a3,a4
                lea     -$40(a4),a4
                move.l  $3A(a4),var_4(a6)
                tst.w   $10(a3)
                beq.s   loc_FFC334DA
                move.l  a4,-(sp)
                jsr     sub_FFC32FD6
                move.w  $10(a3),d0
                ext.l   d0
                move.l  d0,-(sp)
                move.l  var_4(a6),-(sp)
                jsr     sub_FFC318F4
                lea     $C(sp),sp
                bra.s   loc_FFC3354E
; ---------------------------------------------------------------------------

loc_FFC334DA:                           ; CODE XREF: sub_FFC334A0+1C↑j
                tst.w   $2A(a3)
                bne.s   loc_FFC334FA
                move.l  a4,-(sp)
                jsr     sub_FFC32FD6
                move.l  #$FFFFFC6D,-(sp)
                move.l  var_4(a6),-(sp)
                jsr     sub_FFC318F4
                lea     $C(sp),sp
                bra.s   loc_FFC3354E
; ---------------------------------------------------------------------------

loc_FFC334FA:                           ; CODE XREF: sub_FFC334A0+3E↑j
                movea.l $22(a3),a0
                lea     $19E(a4),a2
                movea.l a2,a1
                moveq   #4,d0
                _BlockMove
                jsr     sub_FFC30D10
                movea.l d0,a3
                move.w  #4,4(a4)
                pea     $DD0(a4)
                pea     sub_FFC335E4(pc)
                moveq   #1,d0
                move.l  d0,-(sp)
                move.w  $BE(a3),d1
                ext.l   d1
                move.l  d1,-(sp)
                moveq   #0,d1
                move.l  d1,-(sp)
                pea     $294(a4)
                pea     $94F(a4)
                pea     ($481).w
                pea     $4CE(a4)
                pea     ($481).w
                move.l  d1,-(sp)
                pea     $1A2(a4)
                jsr     sub_FFC35982
                lea     $30(sp),sp

loc_FFC3354E:                           ; CODE XREF: sub_FFC334A0+38↑j
                                        ; sub_FFC334A0+58↑j
                movem.l var_10(a6),a2-a4
                unlk    a6
                rts
; End of function sub_FFC334A0


; =============== S U B R O U T I N E =======================================


sub_FFC33558:                           ; DATA XREF: sub_FFC333D0+52↑o
                movea.l ($2050).w,a1
                movea.l $1CC(a1),a1
                jmp     (a1)
; End of function sub_FFC33558

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC33570:                           ; DATA XREF: ROM:FFC06E00↑o

var_10          = -$10

                link    a6,#-4
                movem.l a2-a4,-(sp)
                move.l  a0,d0
                movea.l d0,a3
                movea.l a3,a4
                lea     -$DD0(a4),a4
                movea.l $3A(a4),a2
                tst.w   $10(a3)
                beq.s   loc_FFC335A6
                move.w  $10(a3),d0
                ext.l   d0
                move.l  d0,-(sp)
                move.l  a2,-(sp)
                jsr     sub_FFC318F4
                move.l  a4,-(sp)
                jsr     sub_FFC32FD6
                lea     $C(sp),sp
                bra.s   loc_FFC335DA
; ---------------------------------------------------------------------------

loc_FFC335A6:                           ; CODE XREF: sub_FFC33570+1A↑j
                move.w  #5,4(a4)
                move.l  a4,-(sp)
                jsr     sub_FFC34E36
                pea     $DD0(a4)
                pea     sub_FFC337BC(pc)
                moveq   #1,d0
                move.l  d0,-(sp)
                move.l  d0,-(sp)
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  d0,-(sp)
                move.l  d0,-(sp)
                pea     $19E(a4)
                pea     $19E(a4)
                move.l  d0,-(sp)
                jsr     sub_FFC35A56
                lea     $2C(sp),sp

loc_FFC335DA:                           ; CODE XREF: sub_FFC33570+34↑j
                movem.l var_10(a6),a2-a4
                unlk    a6
                rts
; End of function sub_FFC33570


; =============== S U B R O U T I N E =======================================


sub_FFC335E4:                           ; DATA XREF: sub_FFC334A0+78↑o
                movea.l ($2050).w,a1
                movea.l $1D0(a1),a1
                jmp     (a1)
; End of function sub_FFC335E4

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC335F0:                           ; DATA XREF: ROM:FFC06E04↑o

var_20          = -$20
var_10          = -$10
var_C           = -$C
var_8           = -8
var_4           = -4

                link    a6,#-$10
                movem.l d3/a2-a4,-(sp)
                move.l  a0,d0
                move.l  d0,var_8(a6)
                movea.l d0,a4
                lea     -$DD0(a4),a4
                movea.l $3A(a4),a3
                movea.l var_8(a6),a0
                tst.w   $10(a0)
                beq.s   loc_FFC33650
                moveq   #0,d0
                move.w  4(a4),d0
                moveq   #9,d1
                cmp.l   d0,d1
                sne     d3
                neg.b   d3
                beq.s   loc_FFC3362A
                move.l  #$FFFFFC6D,d0
                bra.s   loc_FFC33630
; ---------------------------------------------------------------------------

loc_FFC3362A:                           ; CODE XREF: sub_FFC335F0+30↑j
                move.l  #$FFFFFC6C,d0

loc_FFC33630:                           ; CODE XREF: sub_FFC335F0+38↑j
                move.l  d0,-(sp)
                move.l  a3,-(sp)
                jsr     sub_FFC318F4
                moveq   #0,d0
                move.l  d0,$3A(a4)
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC33094
                lea     $10(sp),sp
                bra.w   loc_FFC337B2
; ---------------------------------------------------------------------------

loc_FFC33650:                           ; CODE XREF: sub_FFC335F0+20↑j
                move.l  a4,-(sp)
                jsr     sub_FFC34E36
                moveq   #0,d0
                move.w  4(a3),d0
                moveq   #2,d1
                cmp.l   d0,d1
                addq.w  #4,sp
                bne.w   loc_FFC3373E
                lea     $F86(a4),a0
                move.l  a0,var_C(a6)
                tst.l   $3E(a3)
                bne.s   loc_FFC3367A
                clr.b   $100(a0)
                bra.s   loc_FFC336C4
; ---------------------------------------------------------------------------

loc_FFC3367A:                           ; CODE XREF: sub_FFC335F0+82↑j
                move.l  $3E(a3),-(sp)
                jsr     sub_FFC35650
                move.l  d0,var_4(a6)
                addq.w  #4,sp
                bne.s   loc_FFC336A8
                move.l  #$FFFFFC60,-(sp)
                move.l  a3,-(sp)
                jsr     sub_FFC318F4
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC33094
                lea     $10(sp),sp
                bra.w   loc_FFC337B2
; ---------------------------------------------------------------------------

loc_FFC336A8:                           ; CODE XREF: sub_FFC335F0+98↑j
                movea.l var_C(a6),a0
                pea     $100(a0)
                movea.l var_4(a6),a0
                pea     8(a0)
                pea     ($A5).w
                jsr     sub_FFC356F8
                lea     $C(sp),sp

loc_FFC336C4:                           ; CODE XREF: sub_FFC335F0+88↑j
                move.w  #$A,4(a4)
                movea.l var_C(a6),a0
                move.l  #$53524551,(a0)
                movea.l var_C(a6),a0
                move.l  $3A(a3),4(a0)
                movea.l $12(a4),a1
                lea     $1C(a1),a1
                movea.l a1,a0
                movea.l var_C(a6),a2
                addq.l  #8,a2
                movea.l a2,a1
                moveq   #$48,d0 ; 'H'
                _BlockMove
                movea.l $2E(a3),a0
                movea.l var_C(a6),a2
                lea     $50(a2),a2
                movea.l a2,a1
                moveq   #$48,d0 ; 'H'
                _BlockMove
                movea.l var_C(a6),a0
                pea     $98(a0)
                move.l  $12(a4),-(sp)
                jsr     sub_FFC30D10
                move.l  d0,-(sp)
                jsr     sub_FFC32050
                pea     $F42(a4)
                pea     sub_FFC33854(pc)
                moveq   #1,d0
                move.l  d0,-(sp)
                move.l  d0,-(sp)
                move.l  d0,-(sp)
                move.l  var_C(a6),-(sp)
                pea     ($122).w
                jsr     sub_FFC35B24
                lea     $28(sp),sp
                bra.s   loc_FFC337B2
; ---------------------------------------------------------------------------

loc_FFC3373E:                           ; CODE XREF: sub_FFC335F0+72↑j
                moveq   #0,d0
                move.w  4(a3),d0
                moveq   #$A,d1
                cmp.l   d0,d1
                bne.s   loc_FFC337B2
                move.w  #$11,4(a4)
                lea     $F86(a4),a0
                move.l  a0,var_10(a6)
                move.l  a3,var_C(a6)
                move.l  #$4C505254,(a0)
                movea.l var_C(a6),a0
                movea.l var_10(a6),a1
                move.w  $28(a0),4(a1)
                movea.l var_C(a6),a0
                movea.l var_10(a6),a1
                move.w  $2A(a0),6(a1)
                movea.l var_C(a6),a1
                movea.l $2E(a1),a0
                movea.l var_10(a6),a2
                addq.l  #8,a2
                movea.l a2,a1
                moveq   #$48,d0 ; 'H'
                _BlockMove
                pea     $F42(a4)
                pea     sub_FFC33AC6(pc)
                moveq   #1,d0
                move.l  d0,-(sp)
                move.l  d0,-(sp)
                move.l  d0,-(sp)
                move.l  var_10(a6),-(sp)
                moveq   #$72,d1 ; 'r'
                move.l  d1,-(sp)
                jsr     sub_FFC35B24
                lea     $1C(sp),sp

loc_FFC337B2:                           ; CODE XREF: sub_FFC335F0+5C↑j
                                        ; sub_FFC335F0+B4↑j ...
                movem.l var_20(a6),d3/a2-a4
                unlk    a6
                rts
; End of function sub_FFC335F0


; =============== S U B R O U T I N E =======================================


sub_FFC337BC:                           ; DATA XREF: sub_FFC33570+46↑o
                movea.l ($2050).w,a1
                movea.l $1D4(a1),a1
                jmp     (a1)
; End of function sub_FFC337BC

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC337D0:                           ; DATA XREF: ROM:FFC06E08↑o

var_10          = -$10

                link    a6,#-4
                movem.l a2-a4,-(sp)
                move.l  a0,d0
                movea.l d0,a3
                movea.l a3,a4
                lea     -$F42(a4),a4
                tst.w   $10(a3)
                beq.s   loc_FFC33814
                movea.l $3A(a4),a2
                move.l  a2,d0
                beq.s   loc_FFC33806
                moveq   #0,d0
                move.l  d0,$3A(a4)
                move.w  $10(a3),d0
                ext.l   d0
                move.l  d0,-(sp)
                move.l  a2,-(sp)
                jsr     sub_FFC318F4
                addq.w  #8,sp

loc_FFC33806:                           ; CODE XREF: sub_FFC337D0+1E↑j
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC33094
                addq.w  #8,sp
                bra.s   loc_FFC3384A
; ---------------------------------------------------------------------------

loc_FFC33814:                           ; CODE XREF: sub_FFC337D0+16↑j
                moveq   #0,d0
                move.w  4(a4),d0
                moveq   #$A,d1
                cmp.l   d0,d1
                bne.s   loc_FFC33828
                move.w  #6,4(a4)
                bra.s   loc_FFC3382E
; ---------------------------------------------------------------------------

loc_FFC33828:                           ; CODE XREF: sub_FFC337D0+4E↑j
                move.w  #$1A,4(a4)

loc_FFC3382E:                           ; CODE XREF: sub_FFC337D0+56↑j
                pea     $DD0(a4)
                pea     sub_FFC33A3C(pc)
                moveq   #1,d0
                move.l  d0,-(sp)
                pea     $E14(a4)
                pea     ($122).w
                jsr     sub_FFC35B88
                lea     $14(sp),sp

loc_FFC3384A:                           ; CODE XREF: sub_FFC337D0+42↑j
                movem.l var_10(a6),a2-a4
                unlk    a6
                rts
; End of function sub_FFC337D0


; =============== S U B R O U T I N E =======================================


sub_FFC33854:                           ; DATA XREF: sub_FFC335F0+130↑o
                                        ; sub_FFC33860+116↓o
                movea.l ($2050).w,a1
                movea.l $1D8(a1),a1
                jmp     (a1)
; End of function sub_FFC33854

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC33860:                           ; DATA XREF: ROM:FFC06E0C↑o

var_20          = -$20
var_10          = -$10
var_C           = -$C
var_4           = -4

                link    a6,#-$14
                movem.l a2-a4,-(sp)
                move.l  a0,d0
                movea.l d0,a2
                movea.l a2,a3
                lea     -$DD0(a3),a3
                lea     $DD0(a3),a0
                move.l  a0,var_10(a6)
                movea.l $3A(a3),a4
                moveq   #0,d0
                move.l  d0,$36(a4)
                moveq   #0,d1
                move.w  4(a3),d1
                moveq   #6,d2
                cmp.l   d1,d2
                beq.s   loc_FFC338A6
                moveq   #0,d0
                move.w  4(a3),d0
                moveq   #$1A,d1
                cmp.l   d0,d1
                beq.s   loc_FFC338A6
                move.w  #$FC6C,$10(a4)
                bra.w   loc_FFC33A10
; ---------------------------------------------------------------------------

loc_FFC338A6:                           ; CODE XREF: sub_FFC33860+2E↑j
                                        ; sub_FFC33860+3A↑j
                tst.w   $10(a2)
                beq.s   loc_FFC338B6
                move.w  $10(a2),$10(a4)
                bra.w   loc_FFC33A10
; ---------------------------------------------------------------------------

loc_FFC338B6:                           ; CODE XREF: sub_FFC33860+4A↑j
                tst.w   $24(a2)
                bne.s   loc_FFC338CC
                tst.b   $2A(a2)
                bne.s   loc_FFC338CC
                move.w  #$FC76,$10(a4)
                bra.w   loc_FFC33A10
; ---------------------------------------------------------------------------

loc_FFC338CC:                           ; CODE XREF: sub_FFC33860+5A↑j
                                        ; sub_FFC33860+60↑j
                movea.l var_10(a6),a0
                lea     $44(a0),a0
                move.l  a0,var_C(a6)
                move.l  (a0),d0
                subi.l  #$41434E54,d0
                beq.s   loc_FFC3392A
                subi.l  #$11FE0200,d0
                beq.s   loc_FFC33902
                subi.l  #$10F4F6,d0
                beq.w   loc_FFC33996
                subi.l  #$2000000,d0
                beq.w   loc_FFC339F8
                bra.w   loc_FFC33A0A
; ---------------------------------------------------------------------------

loc_FFC33902:                           ; CODE XREF: sub_FFC33860+88↑j
                move.w  #8,4(a3)
                moveq   #0,d0
                move.l  d0,$3A(a3)
                move.b  #1,9(a3)
                move.l  $A(a3),$28(a4)
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC318F4
                addq.w  #8,sp
                bra.w   loc_FFC33A32
; ---------------------------------------------------------------------------

loc_FFC3392A:                           ; CODE XREF: sub_FFC33860+80↑j
                movea.l var_C(a6),a2
                move.l  $3E(a4),-(sp)
                pea     4(a2)
                jsr     sub_FFC3504A
                tst.b   d0
                addq.w  #8,sp
                bne.s   loc_FFC3394A
                move.w  #$FC60,$10(a4)
                bra.w   loc_FFC33A10
; ---------------------------------------------------------------------------

loc_FFC3394A:                           ; CODE XREF: sub_FFC33860+DE↑j
                move.w  #$19,4(a3)
                lea     $F86(a3),a0
                move.l  a0,var_4(a6)
                move.l  #$41525350,(a0)
                movea.l var_4(a6),a0
                move.l  4(a2),4(a0)
                movea.l var_4(a6),a0
                move.l  8(a2),8(a0)
                pea     $F42(a3)
                pea     sub_FFC33854(pc)
                moveq   #1,d0
                move.l  d0,-(sp)
                move.l  d0,-(sp)
                move.l  d0,-(sp)
                move.l  var_4(a6),-(sp)
                moveq   #$C,d1
                move.l  d1,-(sp)
                jsr     sub_FFC35B24
                lea     $1C(sp),sp
                bra.w   loc_FFC33A32
; ---------------------------------------------------------------------------

loc_FFC33996:                           ; CODE XREF: sub_FFC33860+90↑j
                movea.l var_C(a6),a0
                move.l  4(a0),d0
                subq.l  #1,d0
                bcs.s   loc_FFC339F0
                cmpi.l  #6,d0
                bhi.s   loc_FFC339F0
                add.l   d0,d0
                move.w  word_FFC339B4(pc,d0.l),d0
                jmp     (pc,d0.w)
; ---------------------------------------------------------------------------
word_FFC339B4:  dc.w $10                ; DATA XREF: sub_FFC33860+14C↑r
                dc.b   0
                dc.b $10
                dc.b   0
                dc.b $30 ; 0
                dc.b   0
                dc.b $38 ; 8
                dc.b   0
                dc.b $18
                dc.b   0
                dc.b $20
                dc.b   0
                dc.b $28 ; (
                dc.b $39 ; 9
                dc.b $7C ; |
                dc.b $FC
                dc.b $76 ; v
                dc.b   0
                dc.b $10
                dc.b $60 ; `
                dc.b $26 ; &
                dc.b $39 ; 9
                dc.b $7C ; |
                dc.b $FC
                dc.b $62 ; b
                dc.b   0
                dc.b $10
                dc.b $60 ; `
                dc.b $1E
                dc.b $39 ; 9
                dc.b $7C ; |
                dc.b $FC
                dc.b $5C ; \
                dc.b   0
                dc.b $10
                dc.b $60 ; `
                dc.b $16
                dc.b $39 ; 9
                dc.b $7C ; |
                dc.b $FC
                dc.b $70 ; p
                dc.b   0
                dc.b $10
                dc.b $60 ; `
                dc.b  $E
                dc.b $39 ; 9
                dc.b $7C ; |
                dc.b $FC
                dc.b $71 ; q
                dc.b   0
                dc.b $10
                dc.b $60 ; `
                dc.b   6
                dc.b $39 ; 9
                dc.b $7C ; |
                dc.b $FC
                dc.b $61 ; a
                dc.b   0
                dc.b $10
; ---------------------------------------------------------------------------

loc_FFC339F0:                           ; CODE XREF: sub_FFC33860+140↑j
                                        ; sub_FFC33860+148↑j
                moveq   #0,d0
                move.l  d0,$36(a4)
                bra.s   loc_FFC33A10
; ---------------------------------------------------------------------------

loc_FFC339F8:                           ; CODE XREF: sub_FFC33860+9A↑j
                move.w  #$FC70,$10(a4)
                movea.l var_C(a6),a0
                move.l  4(a0),$36(a4)
                bra.s   loc_FFC33A10
; ---------------------------------------------------------------------------

loc_FFC33A0A:                           ; CODE XREF: sub_FFC33860+9E↑j
                move.w  #$FC63,$10(a4)

loc_FFC33A10:                           ; CODE XREF: sub_FFC33860+42↑j
                                        ; sub_FFC33860+52↑j ...
                move.w  $10(a4),d0
                ext.l   d0
                move.l  d0,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC318F4
                moveq   #0,d0
                move.l  d0,$3A(a3)
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  a3,-(sp)
                jsr     sub_FFC33094
                lea     $10(sp),sp

loc_FFC33A32:                           ; CODE XREF: sub_FFC33860+C6↑j
                                        ; sub_FFC33860+132↑j
                movem.l var_20(a6),a2-a4
                unlk    a6
                rts
; End of function sub_FFC33860


; =============== S U B R O U T I N E =======================================


sub_FFC33A3C:                           ; DATA XREF: sub_FFC337D0+62↑o
                movea.l ($2050).w,a1
                movea.l $1DC(a1),a1
                jmp     (a1)
; End of function sub_FFC33A3C

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC33A50:                           ; DATA XREF: ROM:FFC06E10↑o

var_10          = -$10

                link    a6,#-4
                movem.l a2-a4,-(sp)
                move.l  a0,d0
                movea.l d0,a2
                movea.l a2,a4
                lea     -$F42(a4),a4
                movea.l $3A(a4),a3
                tst.w   $10(a2)
                beq.s   loc_FFC33A90
                move.w  $10(a2),d0
                ext.l   d0
                move.l  d0,-(sp)
                move.l  a3,-(sp)
                jsr     sub_FFC318F4
                moveq   #0,d0
                move.l  d0,$3A(a4)
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC33094
                lea     $10(sp),sp
                bra.s   loc_FFC33ABC
; ---------------------------------------------------------------------------

loc_FFC33A90:                           ; CODE XREF: sub_FFC33A50+1A↑j
                move.w  #$12,4(a4)
                pea     $DD0(a4)
                pea     sub_FFC33B3C(pc)
                moveq   #1,d0
                move.l  d0,-(sp)
                move.l  $36(a3),-(sp)
                moveq   #0,d1
                move.w  $2A(a3),d1
                moveq   #$4A,d2 ; 'J'
                muls.l  d2,d1
                move.l  d1,-(sp)
                jsr     sub_FFC35B88
                lea     $14(sp),sp

loc_FFC33ABC:                           ; CODE XREF: sub_FFC33A50+3E↑j
                movem.l var_10(a6),a2-a4
                unlk    a6
                rts
; End of function sub_FFC33A50


; =============== S U B R O U T I N E =======================================


sub_FFC33AC6:                           ; DATA XREF: sub_FFC335F0+1A6↑o
                movea.l ($2050).w,a1
                movea.l $1E0(a1),a1
                jmp     (a1)
; End of function sub_FFC33AC6


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC33AD0:                           ; DATA XREF: ROM:FFC06E14↑o

var_10          = -$10

                link    a6,#-4
                movem.l a2-a4,-(sp)
                move.l  a0,d0
                movea.l d0,a3
                movea.l a3,a4
                lea     -$DD0(a4),a4
                movea.l $3A(a4),a2
                tst.w   $10(a3)
                beq.s   loc_FFC33B10
                move.w  $10(a3),d0
                ext.l   d0
                move.l  d0,-(sp)
                move.l  a2,-(sp)
                jsr     sub_FFC318F4
                moveq   #0,d0
                move.l  d0,$3A(a4)
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC33094
                lea     $10(sp),sp
                bra.s   loc_FFC33B32
; ---------------------------------------------------------------------------

loc_FFC33B10:                           ; CODE XREF: sub_FFC33AD0+1A↑j
                move.w  #$13,4(a4)
                pea     $DD0(a4)
                pea     sub_FFC33BD4(pc)
                moveq   #1,d0
                move.l  d0,-(sp)
                pea     $E14(a4)
                moveq   #6,d0
                move.l  d0,-(sp)
                jsr     sub_FFC35B88
                lea     $14(sp),sp

loc_FFC33B32:                           ; CODE XREF: sub_FFC33AD0+3E↑j
                movem.l var_10(a6),a2-a4
                unlk    a6
                rts
; End of function sub_FFC33AD0


; =============== S U B R O U T I N E =======================================


sub_FFC33B3C:                           ; DATA XREF: sub_FFC33A50+4A↑o
                movea.l ($2050).w,a1
                movea.l $1E4(a1),a1
                jmp     (a1)
; End of function sub_FFC33B3C

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC33B50:                           ; DATA XREF: ROM:FFC06E18↑o

var_18          = -$18
var_8           = -8

                link    a6,#-$C
                movem.l a2-a4,-(sp)
                move.l  a0,d0
                movea.l d0,a2
                move.l  a2,var_8(a6)
                movea.l a2,a3
                lea     -$DD0(a3),a3
                movea.l $3A(a3),a4
                moveq   #0,d0
                move.l  d0,$3A(a3)
                tst.w   $10(a2)
                beq.s   loc_FFC33B7E
                move.w  $10(a2),$10(a4)
                bra.s   loc_FFC33BA0
; ---------------------------------------------------------------------------

loc_FFC33B7E:                           ; CODE XREF: sub_FFC33B50+24↑j
                movea.l var_8(a6),a0
                lea     $44(a0),a1
                cmpi.l  #$4C525350,(a1)
                bne.s   loc_FFC33B9A
                clr.w   $10(a4)
                move.w  4(a1),$2C(a4)
                bra.s   loc_FFC33BA0
; ---------------------------------------------------------------------------

loc_FFC33B9A:                           ; CODE XREF: sub_FFC33B50+3C↑j
                move.w  #$FC63,$10(a4)

loc_FFC33BA0:                           ; CODE XREF: sub_FFC33B50+2C↑j
                                        ; sub_FFC33B50+48↑j
                move.l  a1,-(sp)
                move.w  $10(a4),d0
                ext.l   d0
                move.l  d0,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC318F4
                addq.l  #8,sp
                movea.l (sp)+,a1
                moveq   #0,d0
                move.l  d0,$3A(a3)
                move.l  a1,-(sp)
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  a3,-(sp)
                jsr     sub_FFC33094
                addq.l  #8,sp
                movea.l (sp)+,a1
                movem.l var_18(a6),a2-a4
                unlk    a6
                rts
; End of function sub_FFC33B50


; =============== S U B R O U T I N E =======================================


sub_FFC33BD4:                           ; DATA XREF: sub_FFC33AD0+4A↑o
                movea.l ($2050).w,a1
                movea.l $1E8(a1),a1
                jmp     (a1)
; End of function sub_FFC33BD4

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC33BE0:                           ; DATA XREF: ROM:FFC06E1C↑o

var_1C          = -$1C
var_10          = -$10
var_8           = -8

                link    a6,#-$10
                movem.l a2-a4,-(sp)
                move.l  a0,d0
                move.l  d0,var_10(a6)
                move.l  a1,-(sp)
                jsr     sub_FFC30D10
                movea.l (sp)+,a1
                movea.l d0,a1
                movea.l var_10(a6),a0
                cmpi.w  #$FB01,$10(a0)
                beq.w   loc_FFC33CDC
                tst.b   7(a1)
                beq.s   loc_FFC33C1E
                move.l  a1,-(sp)
                move.l  a1,-(sp)
                jsr     sub_FFC32F7A
                addq.l  #4,sp
                movea.l (sp)+,a1
                movea.l d0,a4
                move.l  a4,d0
                bne.s   loc_FFC33C3A

loc_FFC33C1E:                           ; CODE XREF: sub_FFC33BE0+2A↑j
                move.l  a1,-(sp)
                pea     sub_FFC34540(pc)
                moveq   #1,d0
                move.l  d0,-(sp)
                move.l  var_10(a6),-(sp)
                jsr     sub_FFC35896
                lea     $C(sp),sp
                movea.l (sp)+,a1
                bra.w   loc_FFC33CDC
; ---------------------------------------------------------------------------

loc_FFC33C3A:                           ; CODE XREF: sub_FFC33BE0+3C↑j
                moveq   #0,d0
                move.l  d0,$12(a4)
                move.l  d0,$16(a4)
                lea     $F42(a4),a0
                move.l  a0,var_8(a6)
                movea.l var_10(a6),a0
                lea     $22(a0),a2
                movea.l var_8(a6),a0
                lea     $22(a0),a3
                move.w  2(a2),2(a3)
                move.w  4(a2),4(a3)
                move.b  6(a2),6(a3)
                move.b  7(a2),7(a3)
                move.l  $C(a2),$C(a3)
                move.w  $10(a2),$10(a3)
                move.l  $16(a2),$16(a3)
                move.w  #$E,4(a4)
                move.l  a1,-(sp)
                pea     $DD0(a4)
                pea     sub_FFC33D6A(pc)
                moveq   #1,d0
                move.l  d0,-(sp)
                move.w  $BE(a1),d1
                ext.l   d1
                move.l  d1,-(sp)
                moveq   #0,d1
                move.b  $C0(a1),d1
                move.l  d1,-(sp)
                pea     $294(a4)
                pea     $94F(a4)
                pea     ($481).w
                pea     $4CE(a4)
                pea     ($481).w
                moveq   #0,d1
                move.l  d1,-(sp)
                pea     $1A2(a4)
                jsr     sub_FFC35982
                lea     $30(sp),sp
                movea.l (sp),a1
                move.l  var_10(a6),-(sp)
                jsr     sub_FFC34580
                addq.l  #4,sp
                movea.l (sp)+,a1

loc_FFC33CDC:                           ; CODE XREF: sub_FFC33BE0+22↑j
                                        ; sub_FFC33BE0+56↑j
                movem.l var_1C(a6),a2-a4
                unlk    a6
                rts
; End of function sub_FFC33BE0


; =============== S U B R O U T I N E =======================================


sub_FFC33CE6:                           ; DATA XREF: sub_FFC30690+50↑o
                                        ; sub_FFC30690+68↑o ...
                movea.l ($2050).w,a1
                movea.l $1EC(a1),a1
                jmp     (a1)
; End of function sub_FFC33CE6


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC33CF0:                           ; DATA XREF: ROM:FFC06E20↑o

var_14          = -$14

                link    a6,#-8
                movem.l a2-a4,-(sp)
                move.l  a0,d0
                movea.l d0,a2
                movea.l a2,a3
                lea     -$DD0(a3),a3
                lea     $F42(a3),a1
                lea     $22(a1),a4
                tst.w   $10(a2)
                beq.s   loc_FFC33D1E
                move.l  a1,-(sp)
                move.l  a3,-(sp)
                jsr     sub_FFC32FD6
                addq.l  #4,sp
                movea.l (sp)+,a1
                bra.s   loc_FFC33D60
; ---------------------------------------------------------------------------

loc_FFC33D1E:                           ; CODE XREF: sub_FFC33CF0+1E↑j
                move.w  #$F,4(a3)
                move.l  a1,-(sp)
                pea     $DD0(a3)
                pea     sub_FFC33DD2(pc)
                moveq   #1,d0
                move.l  d0,-(sp)
                moveq   #3,d1
                move.l  d1,-(sp)
                move.l  $16(a4),-(sp)
                moveq   #0,d0
                move.w  $10(a4),d0
                move.l  d0,-(sp)
                move.l  $C(a4),-(sp)
                pea     4(a4)
                pea     4(a4)
                moveq   #0,d0
                move.w  2(a4),d0
                move.l  d0,-(sp)
                jsr     sub_FFC35A56
                lea     $28(sp),sp
                movea.l (sp)+,a1

loc_FFC33D60:                           ; CODE XREF: sub_FFC33CF0+2C↑j
                movem.l var_14(a6),a2-a4
                unlk    a6
                rts
; End of function sub_FFC33CF0


; =============== S U B R O U T I N E =======================================


sub_FFC33D6A:                           ; DATA XREF: sub_FFC33BE0+B2↑o
                movea.l ($2050).w,a1
                movea.l $1F0(a1),a1
                jmp     (a1)
; End of function sub_FFC33D6A

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC33D80:                           ; DATA XREF: ROM:FFC06E24↑o

var_8           = -8

                link    a6,#0
                movem.l a3-a4,-(sp)
                move.l  a0,d0
                movea.l d0,a3
                movea.l a3,a4
                lea     -$DD0(a4),a4
                tst.w   $10(a3)
                beq.s   loc_FFC33DA6
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC33094
                addq.w  #8,sp
                bra.s   loc_FFC33DC8
; ---------------------------------------------------------------------------

loc_FFC33DA6:                           ; CODE XREF: sub_FFC33D80+16↑j
                move.w  #$10,4(a4)
                pea     $DD0(a4)
                pea     sub_FFC34022(pc)
                moveq   #1,d0
                move.l  d0,-(sp)
                pea     $E14(a4)
                pea     ($122).w
                jsr     sub_FFC35B88
                lea     $14(sp),sp

loc_FFC33DC8:                           ; CODE XREF: sub_FFC33D80+24↑j
                movem.l var_8(a6),a3-a4
                unlk    a6
                rts
; End of function sub_FFC33D80


; =============== S U B R O U T I N E =======================================


sub_FFC33DD2:                           ; DATA XREF: sub_FFC33CF0+3A↑o
                movea.l ($2050).w,a1
                movea.l $1F4(a1),a1
                jmp     (a1)
; End of function sub_FFC33DD2

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC33DE0:                           ; DATA XREF: ROM:FFC06E28↑o

var_46          = -$46
var_2A          = -$2A
var_26          = -$26
var_24          = -$24
var_18          = -$18
var_14          = -$14
var_10          = -$10
var_C           = -$C
var_8           = -8
var_4           = -4

                link    a6,#-$18
                movem.l d7/a3-a4,-(sp)
                move.l  a0,d0
                move.l  d0,var_18(a6)
                jsr     sub_FFC30D10
                movea.l d0,a3
                movea.l var_18(a6),a4
                move.l  a4,var_14(a6)
                lea     -$DD0(a4),a4
                movea.l var_14(a6),a0
                lea     $44(a0),a0
                move.l  a0,var_10(a6)
                lea     $F86(a4),a0
                move.l  a0,var_8(a6)
                movea.l var_18(a6),a0
                tst.w   $10(a0)
                bne.w   loc_FFC3400C
                moveq   #0,d0
                move.w  $24(a0),d0
                tst.l   d0
                beq.w   loc_FFC3400C
                move.l  a4,-(sp)
                jsr     sub_FFC34E36
                movea.l var_10(a6),a0
                move.l  (a0),d0
                subi.l  #$4C505254,d0
                addq.w  #4,sp
                beq.w   loc_FFC33F3E
                subi.l  #$701F2FD,d0
                bne.w   loc_FFC3400C
                move.l  a3,-(sp)
                movea.l var_10(a6),a0
                pea     $50(a0)
                jsr     sub_FFC31EBC
                move.l  d0,var_C(a6)
                addq.w  #8,sp
                beq.w   loc_FFC33F18
                move.l  a3,-(sp)
                move.l  var_C(a6),-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC326AE
                movea.l var_C(a6),a0
                tst.b   $A(a0)
                lea     $C(sp),sp
                beq.w   loc_FFC33F0C
                tst.b   9(a0)
                beq.s   loc_FFC33EFC
                movea.l var_10(a6),a0
                moveq   #0,d0
                move.b  $100(a0),d0
                tst.l   d0
                bne.s   loc_FFC33E9E
                move.w  #1,$176(a4)
                bra.s   loc_FFC33EA2
; ---------------------------------------------------------------------------

loc_FFC33E9E:                           ; CODE XREF: sub_FFC33DE0+B4↑j
                clr.w   $176(a4)

loc_FFC33EA2:                           ; CODE XREF: sub_FFC33DE0+BC↑j
                move.w  #$16,4(a4)
                tst.w   $5B2(a3)
                beq.s   loc_FFC33ED6
                move.w  $5B2(a3),d0
                ext.l   d0
                move.l  d0,-(sp)
                pea     sub_FFC34194(pc)
                movea.l var_10(a6),a0
                pea     $100(a0)
                moveq   #0,d0
                move.l  d0,-(sp)
                pea     $40(a4)
                jsr     sub_FFC34F30
                lea     $14(sp),sp
                bra.w   loc_FFC34018
; ---------------------------------------------------------------------------

loc_FFC33ED6:                           ; CODE XREF: sub_FFC33DE0+CC↑j
                movea.l var_8(a6),a0
                moveq   #3,d0
                move.l  d0,4(a0)
                movea.l var_8(a6),a0
                move.l  #$5352454A,(a0)
                moveq   #0,d1
                move.l  d1,$3A(a4)
                move.l  a4,-(sp)
                jsr     sub_FFC33494
                addq.w  #4,sp
                bra.w   loc_FFC34018
; ---------------------------------------------------------------------------

loc_FFC33EFC:                           ; CODE XREF: sub_FFC33DE0+A6↑j
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC3444E
                addq.w  #8,sp
                bra.w   loc_FFC34018
; ---------------------------------------------------------------------------

loc_FFC33F0C:                           ; CODE XREF: sub_FFC33DE0+9E↑j
                movea.l var_8(a6),a0
                moveq   #1,d0
                move.l  d0,4(a0)
                bra.s   loc_FFC33F22
; ---------------------------------------------------------------------------

loc_FFC33F18:                           ; CODE XREF: sub_FFC33DE0+82↑j
                movea.l var_8(a6),a0
                moveq   #2,d0
                move.l  d0,4(a0)

loc_FFC33F22:                           ; CODE XREF: sub_FFC33DE0+136↑j
                movea.l var_8(a6),a0
                move.l  #$5352454A,(a0)
                moveq   #0,d0
                move.l  d0,$3A(a4)
                move.l  a4,-(sp)
                jsr     sub_FFC33494
                addq.w  #4,sp
                bra.w   loc_FFC34018
; ---------------------------------------------------------------------------

loc_FFC33F3E:                           ; CODE XREF: sub_FFC33DE0+60↑j
                pea     sub_FFC2FB0C(pc)
                move.l  a4,-(sp)
                pea     $78(a3)
                jsr     sub_FFC2FCC2
                move.l  a3,-(sp)
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC326AE
                moveq   #0,d0
                move.l  d0,$3A(a4)
                move.l  d0,$12(a4)
                move.w  #$14,4(a4)
                movea.l var_10(a6),a0
                move.l  a0,var_4(a6)
                clr.b   $50(a0)
                move.w  #1,$176(a4)
                pea     $A8(a3)
                move.l  a4,-(sp)
                jsr     sub_FFC2FB70
                pea     ($2500).w
                move    sr,d0
                move    $48+var_46(sp),sr
                move.w  d0,d7
                tst.l   $B4(a3)
                lea     $24(sp),sp
                bne.s   loc_FFC33FFC
                pea     $A8(a3)
                jsr     sub_FFC2FBC2
                move.l  d0,$B4(a3)
                moveq   #0,d0
                move.w  d7,d0
                move.l  d0,-(sp)
                move    sr,d0
                move    $2C+var_2A(sp),sr
                clr.w   $596(a3)
                movea.l var_4(a6),a0
                move.w  4(a0),$598(a3)
                tst.w   $5B2(a3)
                addq.w  #8,sp
                beq.s   loc_FFC33FEE
                move.w  $5B2(a3),d0
                ext.l   d0
                move.l  d0,-(sp)
                pea     sub_FFC3407E(pc)
                movea.l var_4(a6),a0
                pea     $50(a0)
                moveq   #0,d0
                move.l  d0,-(sp)
                pea     $40(a4)
                jsr     sub_FFC34F30
                lea     $14(sp),sp
                bra.s   loc_FFC34018
; ---------------------------------------------------------------------------

loc_FFC33FEE:                           ; CODE XREF: sub_FFC33DE0+1E6↑j
                clr.b   $C1(a3)
                move.l  a4,-(sp)
                jsr     sub_FFC34674
                addq.w  #4,sp
                bra.s   loc_FFC34018
; ---------------------------------------------------------------------------

loc_FFC33FFC:                           ; CODE XREF: sub_FFC33DE0+1B8↑j
                moveq   #0,d0
                move.w  d7,d0
                move.l  d0,-(sp)
                move    sr,d0
                move    $28+var_26(sp),sr
                addq.w  #4,sp
                bra.s   loc_FFC34018
; ---------------------------------------------------------------------------

loc_FFC3400C:                           ; CODE XREF: sub_FFC33DE0+3C↑j
                                        ; sub_FFC33DE0+48↑j ...
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC33094
                addq.w  #8,sp

loc_FFC34018:                           ; CODE XREF: sub_FFC33DE0+F2↑j
                                        ; sub_FFC33DE0+118↑j ...
                movem.l var_24(a6),d7/a3-a4
                unlk    a6
                rts
; End of function sub_FFC33DE0


; =============== S U B R O U T I N E =======================================


sub_FFC34022:                           ; DATA XREF: sub_FFC33D80+30↑o
                movea.l ($2050).w,a1
                movea.l $1F8(a1),a1
                jmp     (a1)
; End of function sub_FFC34022

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC34030:                           ; DATA XREF: ROM:FFC06E2C↑o

var_10          = -$10
arg_0           =  8

                link    a6,#-4
                movem.l a2-a4,-(sp)
                movea.l arg_0(a6),a4
                movea.l a4,a2
                lea     -$40(a2),a2
                jsr     sub_FFC30D10
                movea.l d0,a3
                moveq   #0,d0
                move.w  4(a2),d0
                moveq   #$14,d1
                cmp.l   d0,d1
                bne.s   loc_FFC34074
                clr.b   $C1(a3)
                tst.w   $10(a4)
                bne.s   loc_FFC3406C
                moveq   #$10,d0
                and.b   $80(a4),d0
                beq.s   loc_FFC3406C
                move.b  #1,$C1(a3)

loc_FFC3406C:                           ; CODE XREF: sub_FFC34030+2C↑j
                                        ; sub_FFC34030+34↑j
                move.l  a2,-(sp)
                jsr     sub_FFC34674
                addq.w  #4,sp

loc_FFC34074:                           ; CODE XREF: sub_FFC34030+22↑j
                movem.l var_10(a6),a2-a4
                unlk    a6
                rts
; End of function sub_FFC34030


; =============== S U B R O U T I N E =======================================


sub_FFC3407E:                           ; DATA XREF: sub_FFC33DE0+1F0↑o
                                        ; sub_FFC34680+70↓o ...
                movea.l ($2050).w,a1
                movea.l $1FC(a1),a1
                jmp     (a1)
; End of function sub_FFC3407E

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC34090:                           ; DATA XREF: ROM:FFC06E30↑o

var_14          = -$14
arg_0           =  8

                link    a6,#-8
                movem.l a2-a4,-(sp)
                movea.l arg_0(a6),a3
                movea.l a3,a4
                lea     -$40(a4),a4
                lea     $F86(a4),a2
                moveq   #0,d0
                move.w  4(a4),d0
                moveq   #$16,d1
                cmp.l   d0,d1
                beq.s   loc_FFC340C2
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC33094
                addq.w  #8,sp
                bra.w   loc_FFC3418A
; ---------------------------------------------------------------------------

loc_FFC340C2:                           ; CODE XREF: sub_FFC34090+20↑j
                tst.w   $10(a3)
                beq.s   loc_FFC340E6
                moveq   #3,d0
                move.l  d0,4(a2)
                move.l  #$5352454A,(a2)
                moveq   #0,d1
                move.l  d1,$3A(a4)
                move.l  a4,-(sp)
                jsr     sub_FFC33494
                addq.w  #4,sp
                bra.w   loc_FFC3418A
; ---------------------------------------------------------------------------

loc_FFC340E6:                           ; CODE XREF: sub_FFC34090+36↑j
                tst.w   $136(a3)
                beq.s   loc_FFC34120
                moveq   #$10,d0
                and.b   $80(a3),d0
                beq.s   loc_FFC34104
                moveq   #1,d0
                move.l  d0,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC3444E
                addq.w  #8,sp
                bra.w   loc_FFC3418A
; ---------------------------------------------------------------------------

loc_FFC34104:                           ; CODE XREF: sub_FFC34090+62↑j
                moveq   #6,d0
                move.l  d0,4(a2)
                move.l  #$5352454A,(a2)
                moveq   #0,d1
                move.l  d1,$3A(a4)
                move.l  a4,-(sp)
                jsr     sub_FFC33494
                addq.w  #4,sp
                bra.s   loc_FFC3418A
; ---------------------------------------------------------------------------

loc_FFC34120:                           ; CODE XREF: sub_FFC34090+5A↑j
                move.w  $66(a3),d0
                btst    #0,d0
                beq.s   loc_FFC3416C
                move.w  #$17,4(a4)
                lea     $F86(a4),a1
                move.l  #$41434E54,(a1)
                move.l  $126(a3),4(a1)
                move.l  $12A(a3),8(a1)
                move.l  a1,-(sp)
                pea     $F42(a4)
                pea     sub_FFC341FE(pc)
                moveq   #1,d0
                move.l  d0,-(sp)
                move.l  d0,-(sp)
                move.l  d0,-(sp)
                pea     $F86(a4)
                moveq   #$C,d1
                move.l  d1,-(sp)
                jsr     sub_FFC35B24
                lea     $1C(sp),sp
                movea.l (sp)+,a1
                bra.s   loc_FFC3418A
; ---------------------------------------------------------------------------

loc_FFC3416C:                           ; CODE XREF: sub_FFC34090+98↑j
                moveq   #7,d0
                move.l  d0,4(a2)
                move.l  #$5352454A,(a2)
                moveq   #0,d1
                move.l  d1,$3A(a4)
                move.l  a1,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC33494
                addq.l  #4,sp
                movea.l (sp)+,a1

loc_FFC3418A:                           ; CODE XREF: sub_FFC34090+2E↑j
                                        ; sub_FFC34090+52↑j ...
                movem.l var_14(a6),a2-a4
                unlk    a6
                rts
; End of function sub_FFC34090


; =============== S U B R O U T I N E =======================================


sub_FFC34194:                           ; DATA XREF: sub_FFC33DE0+D6↑o
                movea.l ($2050).w,a1
                movea.l $200(a1),a1
                jmp     (a1)
; End of function sub_FFC34194

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC341A0:                           ; DATA XREF: ROM:FFC06E34↑o

var_8           = -8

                link    a6,#0
                movem.l a3-a4,-(sp)
                move.l  a0,d0
                movea.l d0,a3
                movea.l a3,a4
                lea     -$F42(a4),a4
                tst.w   $10(a3)
                bne.s   loc_FFC341C4
                moveq   #0,d0
                move.w  4(a4),d0
                moveq   #$17,d1
                cmp.l   d0,d1
                beq.s   loc_FFC341D2

loc_FFC341C4:                           ; CODE XREF: sub_FFC341A0+16↑j
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC33094
                addq.w  #8,sp
                bra.s   loc_FFC341F4
; ---------------------------------------------------------------------------

loc_FFC341D2:                           ; CODE XREF: sub_FFC341A0+22↑j
                move.w  #$18,4(a4)
                pea     $DD0(a4)
                pea     sub_FFC342AA(pc)
                moveq   #1,d0
                move.l  d0,-(sp)
                pea     $F36(a4)
                moveq   #$C,d1
                move.l  d1,-(sp)
                jsr     sub_FFC35B88
                lea     $14(sp),sp

loc_FFC341F4:                           ; CODE XREF: sub_FFC341A0+30↑j
                movem.l var_8(a6),a3-a4
                unlk    a6
                rts
; End of function sub_FFC341A0


; =============== S U B R O U T I N E =======================================


sub_FFC341FE:                           ; DATA XREF: sub_FFC34090+BC↑o
                movea.l ($2050).w,a1
                movea.l $204(a1),a1
                jmp     (a1)
; End of function sub_FFC341FE

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC34210:                           ; DATA XREF: ROM:FFC06E38↑o

var_10          = -$10

                link    a6,#-4
                movem.l a2-a4,-(sp)
                move.l  a0,d0
                movea.l d0,a3
                movea.l a3,a4
                lea     -$DD0(a4),a4
                lea     $F36(a4),a2
                tst.w   $10(a3)
                bne.s   loc_FFC3424A
                moveq   #0,d0
                move.w  4(a4),d0
                moveq   #$18,d1
                cmp.l   d0,d1
                bne.s   loc_FFC3424A
                moveq   #0,d0
                move.w  $24(a3),d0
                tst.l   d0
                beq.s   loc_FFC3424A
                cmpi.l  #$41525350,(a2)
                beq.s   loc_FFC34258

loc_FFC3424A:                           ; CODE XREF: sub_FFC34210+1A↑j
                                        ; sub_FFC34210+26↑j ...
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC33094
                addq.w  #8,sp
                bra.s   loc_FFC342A0
; ---------------------------------------------------------------------------

loc_FFC34258:                           ; CODE XREF: sub_FFC34210+38↑j
                lea     $40(a4),a3
                move.l  4(a2),d0
                cmp.l   $12E(a3),d0
                bne.s   loc_FFC34282
                move.l  8(a2),d0
                cmp.l   $132(a3),d0
                bne.s   loc_FFC34282
                move.w  $66(a3),d0
                ext.l   d0
                move.l  d0,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC3444E
                addq.w  #8,sp
                bra.s   loc_FFC342A0
; ---------------------------------------------------------------------------

loc_FFC34282:                           ; CODE XREF: sub_FFC34210+54↑j
                                        ; sub_FFC34210+5E↑j
                lea     $F86(a4),a3
                moveq   #4,d0
                move.l  d0,4(a3)
                move.l  #$5352454A,(a3)
                moveq   #0,d1
                move.l  d1,$3A(a4)
                move.l  a4,-(sp)
                jsr     sub_FFC33494
                addq.w  #4,sp

loc_FFC342A0:                           ; CODE XREF: sub_FFC34210+46↑j
                                        ; sub_FFC34210+70↑j
                movem.l var_10(a6),a2-a4
                unlk    a6
                rts
; End of function sub_FFC34210


; =============== S U B R O U T I N E =======================================


sub_FFC342AA:                           ; DATA XREF: sub_FFC341A0+3C↑o
                movea.l ($2050).w,a1
                movea.l $208(a1),a1
                jmp     (a1)
; End of function sub_FFC342AA

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC342C0:                           ; DATA XREF: ROM:FFC06E3C↑o

var_1C          = -$1C
var_10          = -$10
var_C           = -$C
var_8           = -8
var_4           = -4
arg_0           =  8
arg_6           =  $E

                link    a6,#-$10
                movem.l a2-a4,-(sp)
                movea.l arg_0(a6),a3
                lea     $E14(a3),a0
                move.l  a0,var_10(a6)
                move.l  $12(a3),var_C(a6)
                lea     $F86(a3),a0
                move.l  a0,var_8(a6)
                movea.l var_C(a6),a0
                pea     $C(a0)
                jsr     sub_FFC2FBC2
                movea.l d0,a4
                move.l  a4,d0
                addq.w  #4,sp
                bne.s   loc_FFC3431C
                movea.l var_8(a6),a0
                move.l  #$5352454A,(a0)
                movea.l var_8(a6),a0
                moveq   #5,d0
                move.l  d0,4(a0)
                moveq   #0,d1
                move.l  d1,$3A(a3)
                move.l  a3,-(sp)
                jsr     sub_FFC33494
                addq.w  #4,sp
                bra.w   loc_FFC3443A
; ---------------------------------------------------------------------------

loc_FFC3431C:                           ; CODE XREF: sub_FFC342C0+34↑j
                move.l  $A(a3),$28(a4)
                movea.l var_10(a6),a0
                move.l  4(a0),$3A(a4)
                move.b  #1,$2C(a4)
                move.b  #2,$3E(a4)
                lea     $12(a4),a0
                move.l  a0,var_4(a6)
                moveq   #0,d0
                move.w  arg_6(a6),d0
                tst.l   d0
                btst    #0,d0
                beq.s   loc_FFC34356
                move.b  #1,3(a0)
                bra.s   loc_FFC3435E
; ---------------------------------------------------------------------------

loc_FFC34356:                           ; CODE XREF: sub_FFC342C0+8C↑j
                movea.l var_4(a6),a0
                clr.b   3(a0)

loc_FFC3435E:                           ; CODE XREF: sub_FFC342C0+94↑j
                tst.l   $2E(a4)
                beq.s   loc_FFC34374
                movea.l var_10(a6),a1
                addq.l  #8,a1
                movea.l a1,a0
                movea.l $2E(a4),a1
                moveq   #$48,d0 ; 'H'
                _BlockMove

loc_FFC34374:                           ; CODE XREF: sub_FFC342C0+A2↑j
                tst.l   $32(a4)
                beq.s   loc_FFC3438C
                movea.l var_10(a6),a1
                lea     $98(a1),a1
                movea.l a1,a0
                movea.l $32(a4),a1
                moveq   #$68,d0 ; 'h'
                _BlockMove

loc_FFC3438C:                           ; CODE XREF: sub_FFC342C0+B8↑j
                movea.l var_10(a6),a0
                moveq   #0,d0
                move.b  $100(a0),d0
                cmpi.b  #$1F,d0
                bcc.s   loc_FFC34400
                moveq   #0,d0
                move.b  $100(a0),d0
                tst.l   d0
                bne.s   loc_FFC343B8
                lea     aGuest(pc),a1   ; "\a<Guest>"
                movea.l a1,a0
                lea     $10A8(a3),a2
                movea.l a2,a1
                moveq   #8,d0
                _BlockMove
                bra.s   loc_FFC343DA
; ---------------------------------------------------------------------------

loc_FFC343B8:                           ; CODE XREF: sub_FFC342C0+E4↑j
                movea.l var_10(a6),a1
                lea     $100(a1),a1
                movea.l a1,a0
                lea     $10A8(a3),a2
                movea.l a2,a1
                movea.l var_10(a6),a2
                moveq   #0,d1
                move.b  $100(a2),d1
                addq.w  #1,d1
                ext.l   d1
                move.l  d1,d0
                _BlockMove

loc_FFC343DA:                           ; CODE XREF: sub_FFC342C0+F6↑j
                tst.l   $36(a4)
                beq.s   loc_FFC34400
                movea.l var_10(a6),a1
                lea     $100(a1),a1
                movea.l a1,a0
                movea.l $36(a4),a1
                movea.l var_10(a6),a2
                moveq   #0,d1
                move.b  $100(a2),d1
                addq.w  #1,d1
                ext.l   d1
                move.l  d1,d0
                _BlockMove

loc_FFC34400:                           ; CODE XREF: sub_FFC342C0+DA↑j
                                        ; sub_FFC342C0+11E↑j
                clr.b   9(a3)
                tst.b   $2D(a4)
                beq.s   loc_FFC34422
                move.l  a4,$3A(a3)
                movea.l var_8(a6),a0
                move.l  #$53415054,(a0)
                move.l  a3,-(sp)
                jsr     sub_FFC33494
                addq.w  #4,sp
                bra.s   loc_FFC3443A
; ---------------------------------------------------------------------------

loc_FFC34422:                           ; CODE XREF: sub_FFC342C0+148↑j
                moveq   #0,d0
                move.l  d0,$3A(a3)
                move.w  #7,4(a3)
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC318F4
                addq.w  #8,sp

loc_FFC3443A:                           ; CODE XREF: sub_FFC342C0+58↑j
                                        ; sub_FFC342C0+160↑j
                movem.l var_1C(a6),a2-a4
                unlk    a6
                rts
; End of function sub_FFC342C0

; ---------------------------------------------------------------------------
aGuest:         dc.b 7,'<Guest>',0      ; DATA XREF: sub_FFC342C0+E6↑o
                dc.b   0

; =============== S U B R O U T I N E =======================================


sub_FFC3444E:                           ; CODE XREF: sub_FFC33DE0+122↑p
                                        ; sub_FFC34090+6A↑p ...
                movea.l ($2050).w,a1
                movea.l $20C(a1),a1
                jmp     (a1)
; End of function sub_FFC3444E

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC34460:                           ; DATA XREF: ROM:FFC06E40↑o

var_14          = -$14
var_8           = -8
var_4           = -4

                link    a6,#-8
                movem.l d7/a3-a4,-(sp)
                move.l  a0,d0
                move.l  d0,var_8(a6)
                movea.l d0,a3
                lea     -$F42(a3),a3
                movea.l $3A(a3),a4
                lea     $12(a4),a0
                move.l  a0,var_4(a6)
                move.l  a4,d0
                beq.s   loc_FFC34496
                moveq   #0,d0
                move.w  4(a4),d0
                moveq   #5,d1
                cmp.l   d0,d1
                bne.s   loc_FFC34496
                moveq   #0,d0
                move.l  d0,$3A(a3)

loc_FFC34496:                           ; CODE XREF: sub_FFC34460+22↑j
                                        ; sub_FFC34460+2E↑j
                movea.l var_8(a6),a0
                move.w  $10(a0),d7
                bne.s   loc_FFC344B0
                move.l  a4,d0
                beq.s   loc_FFC344B0
                moveq   #0,d0
                move.w  4(a4),d0
                moveq   #5,d1
                cmp.l   d0,d1
                bne.s   loc_FFC344C4

loc_FFC344B0:                           ; CODE XREF: sub_FFC34460+3E↑j
                                        ; sub_FFC34460+42↑j
                moveq   #0,d0
                move.l  d0,$3A(a3)
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  a3,-(sp)
                jsr     sub_FFC33094
                addq.w  #8,sp
                bra.s   loc_FFC344D0
; ---------------------------------------------------------------------------

loc_FFC344C4:                           ; CODE XREF: sub_FFC34460+4E↑j
                move.w  #8,4(a3)
                moveq   #0,d0
                move.l  d0,$3A(a3)

loc_FFC344D0:                           ; CODE XREF: sub_FFC34460+62↑j
                tst.w   d7
                beq.s   loc_FFC344F2
                move.l  a4,d0
                beq.s   loc_FFC344F2
                moveq   #0,d0
                move.w  4(a4),d0
                moveq   #3,d1
                cmp.l   d0,d1
                bne.s   loc_FFC344F2
                move.l  $12(a3),-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC322B8
                addq.w  #8,sp
                bra.s   loc_FFC3450E
; ---------------------------------------------------------------------------

loc_FFC344F2:                           ; CODE XREF: sub_FFC34460+72↑j
                                        ; sub_FFC34460+76↑j ...
                move.l  a4,d0
                beq.s   loc_FFC3450E
                tst.w   d7
                beq.s   loc_FFC34502
                move.l  #$FFFFFC74,d0
                bra.s   loc_FFC34504
; ---------------------------------------------------------------------------

loc_FFC34502:                           ; CODE XREF: sub_FFC34460+98↑j
                moveq   #0,d0

loc_FFC34504:                           ; CODE XREF: sub_FFC34460+A0↑j
                move.l  d0,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC318F4
                addq.w  #8,sp

loc_FFC3450E:                           ; CODE XREF: sub_FFC34460+90↑j
                                        ; sub_FFC34460+94↑j
                movem.l var_14(a6),d7/a3-a4
                unlk    a6
                rts
; End of function sub_FFC34460


; =============== S U B R O U T I N E =======================================


sub_FFC34518:                           ; DATA XREF: sub_FFC33460+14↑o
                movea.l ($2050).w,a1
                movea.l $210(a1),a1
                jmp     (a1)
; End of function sub_FFC34518

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC34530:                           ; DATA XREF: ROM:FFC06E44↑o
                link    a6,#0
                move.l  a0,d0
                move.l  d0,-(sp)
                jsr     sub_FFC34580
                unlk    a6
                rts
; End of function sub_FFC34530


; =============== S U B R O U T I N E =======================================


sub_FFC34540:                           ; DATA XREF: sub_FFC33BE0+40↑o
                movea.l ($2050).w,a1
                movea.l $214(a1),a1
                jmp     (a1)
; End of function sub_FFC34540

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC34550:                           ; DATA XREF: ROM:FFC06E48↑o

var_4           = -4
arg_0           =  8

                link    a6,#0
                move.l  a4,-(sp)
                jsr     sub_FFC30D10
                movea.l d0,a4
                tst.b   7(a4)
                beq.s   loc_FFC34578
                pea     sub_FFC33CE6(pc)
                moveq   #1,d0
                move.l  d0,-(sp)
                move.l  arg_0(a6),-(sp)
                jsr     sub_FFC3583A
                tst.w   d0
                lea     $C(sp),sp

loc_FFC34578:                           ; CODE XREF: sub_FFC34550+10↑j
                movea.l var_4(a6),a4
                unlk    a6
                rts
; End of function sub_FFC34550


; =============== S U B R O U T I N E =======================================


sub_FFC34580:                           ; CODE XREF: sub_FFC33BE0+F4↑p
                                        ; sub_FFC34530+8↑p
                movea.l ($2050).w,a1
                movea.l $218(a1),a1
                jmp     (a1)
; End of function sub_FFC34580

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC34590:                           ; DATA XREF: ROM:FFC06E4C↑o

var_1A          = -$1A
var_2           = -2
arg_0           =  8

                link    a6,#-6
                movem.l d6-d7/a2-a4,-(sp)
                movea.l arg_0(a6),a2
                clr.w   var_2(a6)
                jsr     sub_FFC30D10
                movea.l d0,a4
                lea     $DD0(a2),a1
                lea     $44(a1),a3
                moveq   #0,d0
                move.w  6(a3),d0
                moveq   #0,d1
                move.w  $596(a4),d1
                move.l  d0,d6
                sub.l   d1,d6
                moveq   #0,d0
                move.w  d6,d0
                cmpi.w  #7,d0
                bls.s   loc_FFC345CC
                moveq   #7,d7
                bra.s   loc_FFC345CE
; ---------------------------------------------------------------------------

loc_FFC345CC:                           ; CODE XREF: sub_FFC34590+36↑j
                move.w  d6,d7

loc_FFC345CE:                           ; CODE XREF: sub_FFC34590+3A↑j
                moveq   #1,d6
                clr.b   $59A(a4)
                move.l  a1,-(sp)
                pea     var_2(a6)
                moveq   #0,d0
                move.w  d7,d0
                move.l  d0,-(sp)
                pea     $390(a4)
                moveq   #0,d0
                move.w  $598(a4),d0
                move.l  d0,-(sp)
                moveq   #0,d0
                move.b  $C1(a4),d0
                move.l  d0,-(sp)
                moveq   #0,d0
                move.l  d0,-(sp)
                pea     8(a3)
                move.l  a4,-(sp)
                jsr     sub_FFC3239E
                lea     $20(sp),sp
                movea.l (sp)+,a1
                tst.b   d0
                bne.s   loc_FFC34628
                move.w  var_2(a6),d0
                add.w   d0,$596(a4)
                move.w  6(a3),d0
                cmp.w   $596(a4),d0
                bls.s   loc_FFC34630
                clr.b   d6
                move.b  #1,$59A(a4)
                bra.s   loc_FFC34630
; ---------------------------------------------------------------------------

loc_FFC34628:                           ; CODE XREF: sub_FFC34590+7A↑j
                move.w  var_2(a6),d0
                add.w   d0,$596(a4)

loc_FFC34630:                           ; CODE XREF: sub_FFC34590+8C↑j
                                        ; sub_FFC34590+96↑j
                move.w  var_2(a6),d0
                add.w   d0,$598(a4)
                move.l  a1,-(sp)
                pea     $F42(a2)
                pea     sub_FFC34778(pc)
                moveq   #1,d0
                move.l  d0,-(sp)
                move.l  d0,-(sp)
                moveq   #0,d1
                move.b  d6,d1
                move.l  d1,-(sp)
                pea     $390(a4)
                moveq   #0,d1
                move.w  var_2(a6),d1
                moveq   #$4A,d2 ; 'J'
                muls.l  d2,d1
                move.l  d1,-(sp)
                jsr     sub_FFC35B24
                lea     $1C(sp),sp
                movea.l (sp)+,a1
                movem.l var_1A(a6),d6-d7/a2-a4
                unlk    a6
                rts
; End of function sub_FFC34590


; =============== S U B R O U T I N E =======================================


sub_FFC34674:                           ; CODE XREF: sub_FFC33DE0+214↑p
                                        ; sub_FFC34030+3E↑p ...
                movea.l ($2050).w,a1
                movea.l $21C(a1),a1
                jmp     (a1)
; End of function sub_FFC34674

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC34680:                           ; DATA XREF: ROM:FFC06E50↑o

var_20          = -$20
var_14          = -$14

                link    a6,#-$14
                movem.l a2-a4,-(sp)
                move.l  a0,d0
                move.l  d0,var_14(a6)
                jsr     sub_FFC30D10
                movea.l d0,a4
                movea.l var_14(a6),a1
                movea.l a1,a3
                lea     -$F42(a3),a3
                lea     $44(a1),a2
                movea.l a1,a0
                tst.w   $10(a0)
                beq.s   loc_FFC34720
                move.l  a1,-(sp)
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  a3,-(sp)
                jsr     sub_FFC33094
                addq.l  #8,sp
                movea.l (sp),a1
                pea     $A8(a4)
                jsr     sub_FFC2FBC2
                addq.l  #4,sp
                movea.l (sp)+,a1
                movea.l d0,a1
                move.l  a1,$B4(a4)
                move.l  a1,d0
                beq.w   loc_FFC3476E
                lea     $E14(a1),a2
                clr.w   $596(a4)
                move.w  4(a2),$598(a4)
                tst.w   $5B2(a4)
                beq.s   loc_FFC3470C
                move.l  a1,-(sp)
                move.w  $5B2(a4),d0
                ext.l   d0
                move.l  d0,-(sp)
                pea     sub_FFC3407E(pc)
                pea     $50(a2)
                moveq   #0,d0
                move.l  d0,-(sp)
                pea     $40(a1)
                jsr     sub_FFC34F30
                lea     $14(sp),sp
                movea.l (sp)+,a1
                bra.s   loc_FFC3476E
; ---------------------------------------------------------------------------

loc_FFC3470C:                           ; CODE XREF: sub_FFC34680+64↑j
                clr.b   $C1(a4)
                move.l  a1,-(sp)
                move.l  $B4(a4),-(sp)
                jsr     sub_FFC34674
                addq.l  #4,sp
                movea.l (sp)+,a1
                bra.s   loc_FFC3476E
; ---------------------------------------------------------------------------

loc_FFC34720:                           ; CODE XREF: sub_FFC34680+28↑j
                tst.b   $59A(a4)
                beq.s   loc_FFC34734
                move.l  a1,-(sp)
                move.l  a3,-(sp)
                jsr     sub_FFC34674
                addq.l  #4,sp
                movea.l (sp)+,a1
                bra.s   loc_FFC3476E
; ---------------------------------------------------------------------------

loc_FFC34734:                           ; CODE XREF: sub_FFC34680+A4↑j
                lea     $F86(a3),a2
                move.l  #$4C525350,(a2)
                move.w  $596(a4),4(a2)
                move.w  #$15,4(a3)
                move.l  a1,-(sp)
                pea     $F42(a3)
                pea     sub_FFC3482E(pc)
                moveq   #1,d0
                move.l  d0,-(sp)
                move.l  d0,-(sp)
                move.l  d0,-(sp)
                pea     $F86(a3)
                moveq   #6,d0
                move.l  d0,-(sp)
                jsr     sub_FFC35B24
                lea     $1C(sp),sp
                movea.l (sp)+,a1

loc_FFC3476E:                           ; CODE XREF: sub_FFC34680+4E↑j
                                        ; sub_FFC34680+8A↑j ...
                movem.l var_20(a6),a2-a4
                unlk    a6
                rts
; End of function sub_FFC34680


; =============== S U B R O U T I N E =======================================


sub_FFC34778:                           ; DATA XREF: sub_FFC34590+AE↑o
                movea.l ($2050).w,a1
                movea.l $220(a1),a1
                jmp     (a1)
; End of function sub_FFC34778

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC34790:                           ; DATA XREF: ROM:FFC06E54↑o

var_18          = -$18
var_C           = -$C

                link    a6,#-$C
                movem.l a2-a4,-(sp)
                move.l  a0,d0
                movea.l d0,a3
                jsr     sub_FFC30D10
                movea.l d0,a4
                move.l  a3,var_C(a6)
                movea.l a3,a1
                lea     -$F42(a1),a1
                movea.l a3,a0
                lea     $44(a0),a3
                move.l  a1,-(sp)
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  a1,-(sp)
                jsr     sub_FFC33094
                addq.l  #8,sp
                movea.l (sp),a1
                pea     $A8(a4)
                jsr     sub_FFC2FBC2
                addq.l  #4,sp
                movea.l (sp)+,a1
                movea.l d0,a2
                move.l  a2,$B4(a4)
                move.l  a2,d0
                beq.s   loc_FFC34824
                lea     $E14(a2),a3
                clr.w   $596(a4)
                move.w  4(a3),$598(a4)
                tst.w   $5B2(a4)
                beq.s   loc_FFC34812
                move.l  a1,-(sp)
                move.w  $5B2(a4),d0
                ext.l   d0
                move.l  d0,-(sp)
                pea     sub_FFC3407E(pc)
                pea     $50(a3)
                moveq   #0,d0
                move.l  d0,-(sp)
                pea     $40(a2)
                jsr     sub_FFC34F30
                lea     $14(sp),sp
                movea.l (sp)+,a1
                bra.s   loc_FFC34824
; ---------------------------------------------------------------------------

loc_FFC34812:                           ; CODE XREF: sub_FFC34790+5A↑j
                clr.b   $C1(a4)
                move.l  a1,-(sp)
                move.l  $B4(a4),-(sp)
                jsr     sub_FFC34674
                addq.l  #4,sp
                movea.l (sp)+,a1

loc_FFC34824:                           ; CODE XREF: sub_FFC34790+46↑j
                                        ; sub_FFC34790+80↑j
                movem.l var_18(a6),a2-a4
                unlk    a6
                rts
; End of function sub_FFC34790


; =============== S U B R O U T I N E =======================================


sub_FFC3482E:                           ; DATA XREF: sub_FFC34680+D0↑o
                movea.l ($2050).w,a1
                movea.l $224(a1),a1
                jmp     (a1)
; End of function sub_FFC3482E

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC34840:                           ; DATA XREF: ROM:FFC06E58↑o

var_18          = -$18
var_8           = -8
var_4           = -4
arg_0           =  8

                link    a6,#-8
                movem.l d3/d7/a3-a4,-(sp)
                movea.l arg_0(a6),a3
                movea.l $36(a3),a4
                lea     $12(a4),a0
                move.l  a0,var_4(a6)
                move.l  $2C(a4),$C(a0)
                movea.l var_4(a6),a0
                move.l  $34(a4),8(a0)
                tst.b   8(a3)
                beq.s   loc_FFC348D6
                lea     $F86(a3),a0
                move.l  a0,var_8(a6)
                move.l  $3E(a4),(a0)
                movea.l var_8(a6),a0
                move.l  $42(a4),4(a0)
                movea.l var_8(a6),a0
                move.l  $3A(a4),8(a0)
                moveq   #0,d3
                tst.b   $38(a4)
                bne.s   loc_FFC3489E
                tst.l   $2C(a4)
                bne.s   loc_FFC3489E
                moveq   #1,d3

loc_FFC3489E:                           ; CODE XREF: sub_FFC34840+54↑j
                                        ; sub_FFC34840+5A↑j
                move.b  d3,d7
                tst.b   $38(a4)
                seq     d3
                neg.b   d3
                move.b  d3,8(a3)
                pea     $F42(a3)
                pea     sub_FFC34950(pc)
                moveq   #1,d0
                move.l  d0,-(sp)
                moveq   #0,d1
                move.b  d7,d1
                move.l  d1,-(sp)
                moveq   #0,d1
                move.b  d7,d1
                move.l  d1,-(sp)
                move.l  var_8(a6),-(sp)
                moveq   #$C,d1
                move.l  d1,-(sp)
                jsr     sub_FFC35B24
                lea     $1C(sp),sp
                bra.s   loc_FFC348DE
; ---------------------------------------------------------------------------

loc_FFC348D6:                           ; CODE XREF: sub_FFC34840+2C↑j
                move.l  a3,-(sp)
                jsr     sub_FFC349D8
                addq.w  #4,sp

loc_FFC348DE:                           ; CODE XREF: sub_FFC34840+94↑j
                movem.l var_18(a6),d3/d7/a3-a4
                unlk    a6
                rts
; End of function sub_FFC34840


; =============== S U B R O U T I N E =======================================


sub_FFC348E8:                           ; CODE XREF: sub_FFC33250+46↑p
                                        ; sub_FFC34A80+46↓p
                movea.l ($2050).w,a1
                movea.l $228(a1),a1
                jmp     (a1)
; End of function sub_FFC348E8

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC34900:                           ; DATA XREF: ROM:FFC06E5C↑o

var_8           = -8

                link    a6,#0
                movem.l a3-a4,-(sp)
                move.l  a0,d0
                movea.l d0,a3
                movea.l a3,a4
                lea     -$F42(a4),a4
                tst.w   $10(a3)
                beq.s   loc_FFC34926
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC33094
                addq.w  #8,sp
                bra.s   loc_FFC34946
; ---------------------------------------------------------------------------

loc_FFC34926:                           ; CODE XREF: sub_FFC34900+16↑j
                movea.l $36(a4),a3
                tst.l   $2C(a3)
                beq.s   loc_FFC3493A
                move.l  a4,-(sp)
                jsr     sub_FFC349D8
                addq.w  #4,sp
                bra.s   loc_FFC34946
; ---------------------------------------------------------------------------

loc_FFC3493A:                           ; CODE XREF: sub_FFC34900+2E↑j
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC34AE4
                addq.w  #8,sp

loc_FFC34946:                           ; CODE XREF: sub_FFC34900+24↑j
                                        ; sub_FFC34900+38↑j
                movem.l var_8(a6),a3-a4
                unlk    a6
                rts
; End of function sub_FFC34900


; =============== S U B R O U T I N E =======================================


sub_FFC34950:                           ; DATA XREF: sub_FFC34840+70↑o
                movea.l ($2050).w,a1
                movea.l $22C(a1),a1
                jmp     (a1)
; End of function sub_FFC34950

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC34960:                           ; DATA XREF: ROM:FFC06E60↑o

var_14          = -$14
arg_0           =  8

                link    a6,#0
                movem.l d3/d6-d7/a3-a4,-(sp)
                movea.l arg_0(a6),a0
                movea.l $36(a0),a4
                lea     $12(a4),a3
                cmpi.l  #$7FFF,$C(a3)
                bls.s   loc_FFC34986
                move.w  #$7FFF,d6
                clr.b   d7
                bra.s   loc_FFC34994
; ---------------------------------------------------------------------------

loc_FFC34986:                           ; CODE XREF: sub_FFC34960+1C↑j
                move.w  $E(a3),d6
                tst.b   $38(a4)
                seq     d3
                neg.b   d3
                move.b  d3,d7

loc_FFC34994:                           ; CODE XREF: sub_FFC34960+24↑j
                tst.b   $38(a4)
                seq     d3
                neg.b   d3
                movea.l arg_0(a6),a0
                move.b  d3,8(a0)
                movea.l arg_0(a6),a0
                pea     $F42(a0)
                pea     sub_FFC34A6E(pc)
                moveq   #1,d0
                move.l  d0,-(sp)
                moveq   #0,d1
                move.b  d7,d1
                move.l  d1,-(sp)
                moveq   #0,d1
                move.b  d7,d1
                move.l  d1,-(sp)
                move.l  8(a3),-(sp)
                moveq   #0,d1
                move.w  d6,d1
                move.l  d1,-(sp)
                jsr     sub_FFC35B24
                movem.l var_14(a6),d3/d6-d7/a3-a4
                unlk    a6
                rts
; End of function sub_FFC34960


; =============== S U B R O U T I N E =======================================


sub_FFC349D8:                           ; CODE XREF: sub_FFC34840+98↑p
                                        ; sub_FFC34900+32↑p ...
                movea.l ($2050).w,a1
                movea.l $230(a1),a1
                jmp     (a1)
; End of function sub_FFC349D8

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC349F0:                           ; DATA XREF: ROM:FFC06E64↑o

var_14          = -$14

                link    a6,#-8
                movem.l a2-a4,-(sp)
                move.l  a0,d0
                movea.l d0,a4
                movea.l a4,a3
                lea     -$F42(a3),a3
                movea.l $36(a3),a1
                lea     $12(a1),a2
                moveq   #0,d0
                move.w  $24(a4),d0
                sub.l   d0,$C(a2)
                moveq   #0,d0
                move.w  $24(a4),d0
                add.l   d0,8(a2)
                moveq   #0,d0
                move.w  $24(a4),d0
                add.l   d0,$30(a1)
                tst.w   $10(a4)
                beq.s   loc_FFC34A40
                move.l  a1,-(sp)
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  a3,-(sp)
                jsr     sub_FFC33094
                addq.l  #8,sp
                movea.l (sp)+,a1
                bra.s   loc_FFC34A64
; ---------------------------------------------------------------------------

loc_FFC34A40:                           ; CODE XREF: sub_FFC349F0+3C↑j
                tst.l   $C(a2)
                beq.s   loc_FFC34A54
                move.l  a1,-(sp)
                move.l  a3,-(sp)
                jsr     sub_FFC349D8
                addq.l  #4,sp
                movea.l (sp)+,a1
                bra.s   loc_FFC34A64
; ---------------------------------------------------------------------------

loc_FFC34A54:                           ; CODE XREF: sub_FFC349F0+54↑j
                move.l  a1,-(sp)
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  a3,-(sp)
                jsr     sub_FFC34AE4
                addq.l  #8,sp
                movea.l (sp)+,a1

loc_FFC34A64:                           ; CODE XREF: sub_FFC349F0+4E↑j
                                        ; sub_FFC349F0+62↑j
                movem.l var_14(a6),a2-a4
                unlk    a6
                rts
; End of function sub_FFC349F0


; =============== S U B R O U T I N E =======================================


sub_FFC34A6E:                           ; DATA XREF: sub_FFC34960+4C↑o
                movea.l ($2050).w,a1
                movea.l $234(a1),a1
                jmp     (a1)
; End of function sub_FFC34A6E

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC34A80:                           ; DATA XREF: ROM:FFC06E68↑o

var_12          = -$12
var_A           = -$A
var_8           = -8
arg_0           =  8
arg_6           =  $E

                link    a6,#0
                movem.l d7/a4,-(sp)
                movea.l arg_0(a6),a4
                move.w  arg_6(a6),d0
                ext.l   d0
                move.l  d0,-(sp)
                move.l  $36(a4),-(sp)
                jsr     sub_FFC318F4
                pea     ($2500).w
                move    sr,d0
                move    $14+var_12(sp),sr
                move.w  d0,d7
                pea     $26(a4)
                jsr     sub_FFC2FBC2
                move.l  d0,$36(a4)
                lea     $10(sp),sp
                beq.s   loc_FFC34ACE
                ext.l   d7
                move.l  d7,-(sp)
                move    sr,d0
                move    $C+var_A(sp),sr
                move.l  a4,-(sp)
                jsr     sub_FFC348E8
                addq.w  #8,sp
                bra.s   loc_FFC34ADA
; ---------------------------------------------------------------------------

loc_FFC34ACE:                           ; CODE XREF: sub_FFC34A80+38↑j
                ext.l   d7
                move.l  d7,-(sp)
                move    sr,d0
                move    $C+var_A(sp),sr
                addq.w  #4,sp

loc_FFC34ADA:                           ; CODE XREF: sub_FFC34A80+4C↑j
                movem.l var_8(a6),d7/a4
                unlk    a6
                rts
; End of function sub_FFC34A80


; =============== S U B R O U T I N E =======================================


sub_FFC34AE4:                           ; CODE XREF: sub_FFC34900+40↑p
                                        ; sub_FFC349F0+6C↑p
                movea.l ($2050).w,a1
                movea.l $238(a1),a1
                jmp     (a1)
; End of function sub_FFC34AE4

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC34AF0:                           ; DATA XREF: ROM:FFC06E6C↑o

var_14          = -$14
arg_0           =  8

                link    a6,#-8
                movem.l a2-a4,-(sp)
                movea.l arg_0(a6),a3
                movea.l $32(a3),a4
                lea     $12(a4),a1
                move.l  $2C(a4),$C(a1)
                move.l  $34(a4),8(a1)
                tst.b   7(a3)
                bne.s   loc_FFC34B38
                move.l  a1,-(sp)
                pea     $DD0(a3)
                pea     sub_FFC34C2E(pc)
                moveq   #1,d0
                move.l  d0,-(sp)
                pea     $E14(a3)
                moveq   #$C,d0
                move.l  d0,-(sp)
                jsr     sub_FFC35B88
                lea     $14(sp),sp
                movea.l (sp)+,a1
                bra.s   loc_FFC34B58
; ---------------------------------------------------------------------------

loc_FFC34B38:                           ; CODE XREF: sub_FFC34AF0+24↑j
                lea     $E14(a3),a2
                move.l  (a2),$3E(a4)
                move.l  4(a2),$42(a4)
                move.l  8(a2),$3A(a4)
                move.l  a1,-(sp)
                move.l  a3,-(sp)
                jsr     sub_FFC34CA8
                addq.l  #4,sp
                movea.l (sp)+,a1

loc_FFC34B58:                           ; CODE XREF: sub_FFC34AF0+46↑j
                movem.l var_14(a6),a2-a4
                unlk    a6
                rts
; End of function sub_FFC34AF0


; =============== S U B R O U T I N E =======================================


sub_FFC34B62:                           ; CODE XREF: sub_FFC332C0+46↑p
                                        ; sub_FFC34DA0+46↓p
                movea.l ($2050).w,a1
                movea.l $23C(a1),a1
                jmp     (a1)
; End of function sub_FFC34B62

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC34B70:                           ; DATA XREF: ROM:FFC06E70↑o

var_18          = -$18
var_C           = -$C
var_8           = -8
var_4           = -4

                link    a6,#-$C
                movem.l d3/a3-a4,-(sp)
                move.l  a0,d0
                move.l  d0,var_C(a6)
                movea.l d0,a4
                lea     -$DD0(a4),a4
                movea.l $32(a4),a3
                lea     $12(a3),a0
                move.l  a0,var_8(a6)
                movea.l var_C(a6),a0
                tst.b   $2A(a0)
                seq     d3
                neg.b   d3
                move.b  d3,7(a4)
                move.b  d3,$38(a3)
                movea.l var_C(a6),a0
                tst.w   $10(a0)
                bne.s   loc_FFC34BDA
                moveq   #0,d0
                move.w  $24(a0),d0
                tst.l   d0
                bne.s   loc_FFC34BE8
                moveq   #0,d0
                move.b  $2A(a0),d0
                tst.l   d0
                bne.s   loc_FFC34BE8
                moveq   #0,d0
                move.w  $1A8(a4),d0
                moveq   #5,d1
                cmp.l   d0,d1
                beq.s   loc_FFC34BDA
                moveq   #0,d0
                move.w  $1A8(a4),d0
                moveq   #6,d1
                cmp.l   d0,d1
                bne.s   loc_FFC34BE8

loc_FFC34BDA:                           ; CODE XREF: sub_FFC34B70+3C↑j
                                        ; sub_FFC34B70+5C↑j
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC33094
                addq.w  #8,sp
                bra.s   loc_FFC34C24
; ---------------------------------------------------------------------------

loc_FFC34BE8:                           ; CODE XREF: sub_FFC34B70+46↑j
                                        ; sub_FFC34B70+50↑j ...
                lea     $E14(a4),a0
                move.l  a0,var_4(a6)
                move.l  (a0),$3E(a3)
                movea.l var_4(a6),a0
                move.l  4(a0),$42(a3)
                movea.l var_4(a6),a0
                move.l  8(a0),$3A(a3)
                tst.b   7(a4)
                beq.s   loc_FFC34C18
                move.l  a4,-(sp)
                jsr     sub_FFC34CA8
                addq.w  #4,sp
                bra.s   loc_FFC34C24
; ---------------------------------------------------------------------------

loc_FFC34C18:                           ; CODE XREF: sub_FFC34B70+9C↑j
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC34E04
                addq.w  #8,sp

loc_FFC34C24:                           ; CODE XREF: sub_FFC34B70+76↑j
                                        ; sub_FFC34B70+A6↑j
                movem.l var_18(a6),d3/a3-a4
                unlk    a6
                rts
; End of function sub_FFC34B70


; =============== S U B R O U T I N E =======================================


sub_FFC34C2E:                           ; DATA XREF: sub_FFC34AF0+2C↑o
                movea.l ($2050).w,a1
                movea.l $240(a1),a1
                jmp     (a1)
; End of function sub_FFC34C2E

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC34C40:                           ; DATA XREF: ROM:FFC06E74↑o

var_10          = -$10
arg_0           =  8

                link    a6,#0
                movem.l d3/d7/a3-a4,-(sp)
                movea.l arg_0(a6),a3
                movea.l $32(a3),a0
                lea     $12(a0),a4
                cmpi.l  #$7FFF,$C(a4)
                scs     d3
                neg.b   d3
                beq.s   loc_FFC34C68
                move.l  $C(a4),d0
                bra.s   loc_FFC34C6E
; ---------------------------------------------------------------------------

loc_FFC34C68:                           ; CODE XREF: sub_FFC34C40+20↑j
                move.l  #$7FFF,d0

loc_FFC34C6E:                           ; CODE XREF: sub_FFC34C40+26↑j
                move.w  d0,d7
                beq.s   loc_FFC34C92
                pea     $DD0(a3)
                pea     sub_FFC34D8C(pc)
                moveq   #1,d0
                move.l  d0,-(sp)
                move.l  8(a4),-(sp)
                moveq   #0,d1
                move.w  d7,d1
                move.l  d1,-(sp)
                jsr     sub_FFC35B88
                lea     $14(sp),sp
                bra.s   loc_FFC34C9E
; ---------------------------------------------------------------------------

loc_FFC34C92:                           ; CODE XREF: sub_FFC34C40+30↑j
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  a3,-(sp)
                jsr     sub_FFC34E04
                addq.w  #8,sp

loc_FFC34C9E:                           ; CODE XREF: sub_FFC34C40+50↑j
                movem.l var_10(a6),d3/d7/a3-a4
                unlk    a6
                rts
; End of function sub_FFC34C40


; =============== S U B R O U T I N E =======================================


sub_FFC34CA8:                           ; CODE XREF: sub_FFC34AF0+60↑p
                                        ; sub_FFC34B70+A0↑p ...
                movea.l ($2050).w,a1
                movea.l $244(a1),a1
                jmp     (a1)
; End of function sub_FFC34CA8

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC34CC0:                           ; DATA XREF: ROM:FFC06E78↑o

var_14          = -$14
var_8           = -8
var_4           = -4

                link    a6,#-8
                movem.l d3/a3-a4,-(sp)
                move.l  a0,d0
                movea.l d0,a3
                movea.l a3,a4
                lea     -$DD0(a4),a4
                movea.l $32(a4),a0
                move.l  a0,var_8(a6)
                lea     $12(a0),a0
                move.l  a0,var_4(a6)
                moveq   #0,d0
                move.w  $24(a3),d0
                sub.l   d0,$C(a0)
                movea.l var_4(a6),a0
                moveq   #0,d0
                move.w  $24(a3),d0
                add.l   d0,8(a0)
                movea.l var_8(a6),a0
                moveq   #0,d0
                move.w  $24(a3),d0
                add.l   d0,$30(a0)
                tst.b   $2A(a3)
                seq     d3
                neg.b   d3
                move.b  d3,7(a4)
                movea.l var_8(a6),a0
                move.b  d3,$38(a0)
                tst.w   $10(a3)
                bne.s   loc_FFC34D4E
                moveq   #0,d0
                move.w  $24(a3),d0
                tst.l   d0
                bne.s   loc_FFC34D5C
                moveq   #0,d0
                move.b  $2A(a3),d0
                tst.l   d0
                bne.s   loc_FFC34D5C
                moveq   #0,d0
                move.w  $1A8(a4),d0
                moveq   #5,d1
                cmp.l   d0,d1
                beq.s   loc_FFC34D4E
                moveq   #0,d0
                move.w  $1A8(a4),d0
                moveq   #6,d1
                cmp.l   d0,d1
                bne.s   loc_FFC34D5C

loc_FFC34D4E:                           ; CODE XREF: sub_FFC34CC0+60↑j
                                        ; sub_FFC34CC0+80↑j
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC33094
                addq.w  #8,sp
                bra.s   loc_FFC34D82
; ---------------------------------------------------------------------------

loc_FFC34D5C:                           ; CODE XREF: sub_FFC34CC0+6A↑j
                                        ; sub_FFC34CC0+74↑j ...
                movea.l var_4(a6),a0
                tst.l   $C(a0)
                beq.s   loc_FFC34D76
                tst.b   7(a4)
                beq.s   loc_FFC34D76
                move.l  a4,-(sp)
                jsr     sub_FFC34CA8
                addq.w  #4,sp
                bra.s   loc_FFC34D82
; ---------------------------------------------------------------------------

loc_FFC34D76:                           ; CODE XREF: sub_FFC34CC0+A4↑j
                                        ; sub_FFC34CC0+AA↑j
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC34E04
                addq.w  #8,sp

loc_FFC34D82:                           ; CODE XREF: sub_FFC34CC0+9A↑j
                                        ; sub_FFC34CC0+B4↑j
                movem.l var_14(a6),d3/a3-a4
                unlk    a6
                rts
; End of function sub_FFC34CC0


; =============== S U B R O U T I N E =======================================


sub_FFC34D8C:                           ; DATA XREF: sub_FFC34C40+36↑o
                movea.l ($2050).w,a1
                movea.l $248(a1),a1
                jmp     (a1)
; End of function sub_FFC34D8C

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC34DA0:                           ; DATA XREF: ROM:FFC06E7C↑o

var_12          = -$12
var_A           = -$A
var_8           = -8
arg_0           =  8
arg_6           =  $E

                link    a6,#0
                movem.l d7/a4,-(sp)
                movea.l arg_0(a6),a4
                move.w  arg_6(a6),d0
                ext.l   d0
                move.l  d0,-(sp)
                move.l  $32(a4),-(sp)
                jsr     sub_FFC318F4
                pea     ($2500).w
                move    sr,d0
                move    $14+var_12(sp),sr
                move.w  d0,d7
                pea     $1A(a4)
                jsr     sub_FFC2FBC2
                move.l  d0,$32(a4)
                lea     $10(sp),sp
                beq.s   loc_FFC34DEE
                ext.l   d7
                move.l  d7,-(sp)
                move    sr,d0
                move    $C+var_A(sp),sr
                move.l  a4,-(sp)
                jsr     sub_FFC34B62
                addq.w  #8,sp
                bra.s   loc_FFC34DFA
; ---------------------------------------------------------------------------

loc_FFC34DEE:                           ; CODE XREF: sub_FFC34DA0+38↑j
                ext.l   d7
                move.l  d7,-(sp)
                move    sr,d0
                move    $C+var_A(sp),sr
                addq.w  #4,sp

loc_FFC34DFA:                           ; CODE XREF: sub_FFC34DA0+4C↑j
                movem.l var_8(a6),d7/a4
                unlk    a6
                rts
; End of function sub_FFC34DA0


; =============== S U B R O U T I N E =======================================


sub_FFC34E04:                           ; CODE XREF: sub_FFC34B70+AE↑p
                                        ; sub_FFC34C40+58↑p ...
                movea.l ($2050).w,a1
                movea.l $24C(a1),a1
                jmp     (a1)
; End of function sub_FFC34E04

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC34E10:                           ; DATA XREF: ROM:FFC06E80↑o

var_8           = -8
arg_0           =  8

                link    a6,#0
                movem.l a2/a4,-(sp)
                movea.l arg_0(a6),a4
                lea     $DD0(a4),a1
                movea.l a1,a0
                lea     $F42(a4),a2
                movea.l a2,a1
                moveq   #$44,d0 ; 'D'
                _BlockMove
                movem.l var_8(a6),a2/a4
                unlk    a6
                rts
; End of function sub_FFC34E10


; =============== S U B R O U T I N E =======================================


sub_FFC34E36:                           ; CODE XREF: sub_FFC33570+3E↑p
                                        ; sub_FFC335F0+62↑p ...
                movea.l ($2050).w,a1
                movea.l $250(a1),a1
                jmp     (a1)
; End of function sub_FFC34E36


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC34E40:                           ; DATA XREF: ROM:FFC06C6C↑o

var_14          = -$14
arg_0           =  8
arg_7           =  $F
arg_B           =  $13

                link    a6,#0
                movem.l d3/d6-d7/a3-a4,-(sp)
                movea.l arg_0(a6),a4
                lea     aRpcgtprk(pc),a3 ; "rpcgtprk"
                move.b  arg_7(a6),d6
                tst.b   arg_B(a6)
                beq.s   loc_FFC34E7C
                clr.w   d7
                moveq   #8,d3

loc_FFC34E5E:                           ; CODE XREF: sub_FFC34E40+38↓j
                move.b  (a3,d7.w),d0
                move.b  (a4,d7.w),d1
                eor.b   d0,d1
                move.b  d6,d0
                eor.b   d0,d1
                move.b  d1,d6
                move.b  d1,(a4,d7.w)
                move.w  d7,d0
                addq.w  #1,d7
                cmp.w   d7,d3
                bgt.s   loc_FFC34E5E
                bra.s   loc_FFC34EA4
; ---------------------------------------------------------------------------

loc_FFC34E7C:                           ; CODE XREF: sub_FFC34E40+18↑j
                moveq   #7,d7
                moveq   #0,d3

loc_FFC34E80:                           ; CODE XREF: sub_FFC34E40+5A↓j
                ext.l   d7
                move.l  d7,d0
                subq.l  #1,d0
                move.b  (a4,d0.l),d0
                move.b  (a3,d7.w),d1
                eor.b   d0,d1
                eor.b   d1,(a4,d7.w)
                move.w  d7,d0
                subq.w  #1,d7
                cmp.w   d7,d3
                blt.s   loc_FFC34E80
                move.b  d6,d0
                move.b  (a3),d1
                eor.b   d0,d1
                eor.b   d1,(a4)

loc_FFC34EA4:                           ; CODE XREF: sub_FFC34E40+3A↑j
                movem.l var_14(a6),d3/d6-d7/a3-a4
                unlk    a6
                rts
; End of function sub_FFC34E40

; ---------------------------------------------------------------------------
aRpcgtprk:      dc.b 'rpcgtprk',0       ; DATA XREF: sub_FFC34E40+C↑o
                dc.b   0

; =============== S U B R O U T I N E =======================================


sub_FFC34EB8:                           ; CODE XREF: sub_FFC34F40+22↓p
                                        ; sub_FFC35470+8C↓p
                movea.l ($2050).w,a1
                movea.l $3C(a1),a1
                jmp     (a1)
; End of function sub_FFC34EB8

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC34ED0:                           ; DATA XREF: ROM:FFC06C70↑o

var_4           = -4
arg_0           =  8
arg_4           =  $C
arg_8           =  $10
arg_C           =  $14
arg_12          =  $1A

                link    a6,#0
                move.l  a4,-(sp)
                movea.l arg_0(a6),a4
                lea     $138(a4),a0
                move.l  a0,$2C(a4)
                subq.l  #2,sp
                move.l  arg_4(a6),-(sp)
                move.l  arg_8(a6),-(sp)
                move.l  $2C(a4),-(sp)
                jsr     sub_FFC35E92
                lea     $5A(a4),a0
                move.l  a0,$20(a4)
                move.l  #$CC,$24(a4)
                move.w  arg_12(a6),$18(a4)
                lea     sub_FFC34FBA(pc),a0
                move.l  a0,$C(a4)
                moveq   #0,d0
                move.l  d0,$34(a4)
                move.l  arg_C(a6),$56(a4)
                moveq   #1,d0
                move.l  d0,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC35D82
                movea.l var_4(a6),a4
                unlk    a6
                rts
; End of function sub_FFC34ED0


; =============== S U B R O U T I N E =======================================


sub_FFC34F30:                           ; CODE XREF: sub_FFC33DE0+EA↑p
                                        ; sub_FFC33DE0+204↑p ...
                movea.l ($2050).w,a1
                movea.l $40(a1),a1
                jmp     (a1)
; End of function sub_FFC34F30

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC34F40:                           ; DATA XREF: ROM:FFC06C74↑o

var_8C          = -$8C
var_84          = -$84
var_4           = -4

                link    a6,#-$84
                movem.l a3-a4,-(sp)
                lea     var_84(a6),a3
                move.l  a0,d0
                movea.l d0,a4
                tst.w   $10(a4)
                bne.s   loc_FFC34FA6
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  $62(a4),-(sp)
                pea     $5A(a4)
                jsr     sub_FFC34EB8
                jsr     sub_FFC35060
                move.l  d0,$12E(a4)
                move.l  d0,$126(a4)
                jsr     sub_FFC35060
                move.l  d0,$132(a4)
                move.l  d0,$12A(a4)
                subq.l  #4,sp
                pea     $5A(a4)
                move.l  a3,-(sp)
                jsr     sub_FFC36D5A
                lea     $12E(a4),a0
                move.l  a0,var_4(a6)
                subq.l  #4,sp
                move.l  a3,-(sp)
                moveq   #8,d0
                move.l  d0,-(sp)
                pea     var_4(a6)
                jsr     sub_FFC36BD4
                lea     $14(sp),sp

loc_FFC34FA6:                           ; CODE XREF: sub_FFC34F40+14↑j
                move.l  a4,-(sp)
                movea.l $56(a4),a0
                jsr     (a0)
                addq.w  #4,sp
                movem.l var_8C(a6),a3-a4
                unlk    a6
                rts
; End of function sub_FFC34F40


; =============== S U B R O U T I N E =======================================


sub_FFC34FBA:                           ; DATA XREF: sub_FFC34ED0+3A↑o
                movea.l ($2050).w,a1
                movea.l $44(a1),a1
                jmp     (a1)
; End of function sub_FFC34FBA

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC34FD0:                           ; DATA XREF: ROM:FFC06C78↑o

var_A2          = -$A2
var_96          = -$96
var_12          = -$12
var_8           = -8
arg_0           =  8
arg_4           =  $C

                link    a6,#-$96
                movem.l a2-a4,-(sp)
                lea     var_8(a6),a3
                lea     var_12(a6),a4
                move.l  arg_4(a6),-(sp)
                jsr     sub_FFC35650
                movea.l d0,a2
                move.l  a2,d0
                addq.w  #4,sp
                bne.s   loc_FFC34FF4
                moveq   #0,d0
                bra.s   loc_FFC35040
; ---------------------------------------------------------------------------

loc_FFC34FF4:                           ; CODE XREF: sub_FFC34FD0+1E↑j
                moveq   #9,d0
                move.l  d0,-(sp)
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC300B0
                move.l  a4,-(sp)
                pea     $29(a2)
                moveq   #$5A,d0 ; 'Z'
                move.l  d0,-(sp)
                jsr     sub_FFC356F8
                movea.l a4,a1
                addq.l  #1,a1
                movea.l a1,a0
                movea.l a3,a1
                moveq   #8,d0
                _BlockMove
                subq.l  #4,sp
                move.l  a3,-(sp)
                pea     var_96(a6)
                jsr     sub_FFC36D5A
                subq.l  #4,sp
                pea     var_96(a6)
                moveq   #8,d0
                move.l  d0,-(sp)
                pea     arg_0(a6)
                jsr     sub_FFC36BD4
                moveq   #1,d0
                lea     $20(sp),sp

loc_FFC35040:                           ; CODE XREF: sub_FFC34FD0+22↑j
                movem.l var_A2(a6),a2-a4
                unlk    a6
                rts
; End of function sub_FFC34FD0


; =============== S U B R O U T I N E =======================================


sub_FFC3504A:                           ; CODE XREF: sub_FFC33860+D6↑p
                movea.l ($2050).w,a1
                movea.l $48(a1),a1
                jmp     (a1)
; End of function sub_FFC3504A

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC35060:                           ; CODE XREF: sub_FFC34F40+26↑p
                                        ; sub_FFC34F40+32↑p

var_4           = -4

                link    a6,#-4
                lea     var_4(a6),a1
                movea.l a1,a0
                move.l  ($20C).w,(a0)
                move.l  var_4(a6),d0
                unlk    a6
                rts
; End of function sub_FFC35060

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC35080:                           ; DATA XREF: ROM:FFC06C7C↑o

var_4           = -4

                link    a6,#0
                move.l  a4,-(sp)
                jsr     sub_FFC30D10
                movea.l d0,a4
                move.l  a4,d0
                beq.s   loc_FFC35096
                tst.b   $B(a4)
                bne.s   loc_FFC3509C

loc_FFC35096:                           ; CODE XREF: sub_FFC35080+E↑j
                move.w  #$FC7C,d0
                bra.s   loc_FFC3509E
; ---------------------------------------------------------------------------

loc_FFC3509C:                           ; CODE XREF: sub_FFC35080+14↑j
                moveq   #0,d0

loc_FFC3509E:                           ; CODE XREF: sub_FFC35080+1A↑j
                movea.l var_4(a6),a4
                unlk    a6
                rts
; End of function sub_FFC35080


; =============== S U B R O U T I N E =======================================


sub_FFC350A6:                           ; CODE XREF: sub_FFC350B0+C↓p
                                        ; sub_FFC35470+C↓p
                movea.l ($2050).w,a1
                movea.l $4C(a1),a1
                jmp     (a1)
; End of function sub_FFC350A6


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC350B0:                           ; DATA XREF: ROM:FFC06C80↑o

var_4E          = -$4E
var_3A          = -$3A
var_36          = -$36
var_34          = -$34
var_2A          = -$2A
var_4           = -4
arg_0           =  8

                link    a6,#-$3A
                movem.l d6-d7/a2-a4,-(sp)
                movea.l arg_0(a6),a3
                jsr     sub_FFC350A6
                move.w  d0,d6
                beq.s   loc_FFC350CA
                move.w  d6,d0
                bra.w   loc_FFC35296
; ---------------------------------------------------------------------------

loc_FFC350CA:                           ; CODE XREF: sub_FFC350B0+12↑j
                jsr     sub_FFC30D10
                movea.l d0,a2
                movea.l $10(a3),a4
                move.l  $2E(a4),-(sp)
                jsr     sub_FFC31F1A
                tst.b   d0
                addq.w  #4,sp
                bne.s   loc_FFC350F0
                move.w  #$FC69,$10(a4)
                move.w  #$FC69,d0
                bra.w   loc_FFC35296
; ---------------------------------------------------------------------------

loc_FFC350F0:                           ; CODE XREF: sub_FFC350B0+30↑j
                moveq   #0,d0
                move.b  $2C(a4),d0
                cmpi.w  #1,d0
                beq.s   loc_FFC3510A
                move.w  #$FC5E,$10(a4)
                move.w  #$FC5E,d0
                bra.w   loc_FFC35296
; ---------------------------------------------------------------------------

loc_FFC3510A:                           ; CODE XREF: sub_FFC350B0+4A↑j
                move.l  a2,-(sp)
                move.w  $26(a4),d0
                ext.l   d0
                move.l  d0,-(sp)
                jsr     sub_FFC320E4
                tst.l   d0
                addq.w  #8,sp
                bne.s   loc_FFC3512C
                move.w  #$FC79,$10(a4)
                move.w  #$FC79,d0
                bra.w   loc_FFC35296
; ---------------------------------------------------------------------------

loc_FFC3512C:                           ; CODE XREF: sub_FFC350B0+6C↑j
                move.l  $32(a4),-(sp)
                jsr     sub_FFC3196A
                move.w  d0,d6
                addq.w  #4,sp
                beq.s   loc_FFC35144
                move.w  d6,$10(a4)
                move.w  d6,d0
                bra.w   loc_FFC35296
; ---------------------------------------------------------------------------

loc_FFC35144:                           ; CODE XREF: sub_FFC350B0+88↑j
                movea.l $10(a3),a0
                move.l  $32(a0),-(sp)
                jsr     sub_FFC31A92
                tst.b   d0
                addq.w  #4,sp
                beq.s   loc_FFC35168
                moveq   #0,d0
                move.l  d0,$3E(a4)
                movea.l a4,a0
                moveq   #2,d0
                _PPC
                move.w  d0,d7
                bra.w   loc_FFC35296
; ---------------------------------------------------------------------------

loc_FFC35168:                           ; CODE XREF: sub_FFC350B0+A4↑j
                tst.b   $A(a3)
                beq.s   loc_FFC351B4
                subq.l  #2,sp
                movea.l $10(a3),a0
                pea     $3E(a0)
                pea     var_2A(a6)
                jsr     sub_FFC352B0
                move.w  (sp)+,d7
                bne.s   loc_FFC351B4
                movea.l a4,a0
                moveq   #2,d0
                _PPC
                move.w  d0,d7
                bne.s   loc_FFC351A2
                lea     var_2A(a6),a1
                movea.l a1,a0
                movea.l $C(a3),a1
                moveq   #$21,d0 ; '!'
                _BlockMove
                moveq   #0,d0
                bra.w   loc_FFC35296
; ---------------------------------------------------------------------------

loc_FFC351A2:                           ; CODE XREF: sub_FFC350B0+DC↑j
                cmpi.w  #$FC70,d7
                beq.s   loc_FFC351B4
                cmpi.w  #$FC61,d7
                beq.s   loc_FFC351B4
                move.w  d7,d0
                bra.w   loc_FFC35296
; ---------------------------------------------------------------------------

loc_FFC351B4:                           ; CODE XREF: sub_FFC350B0+BC↑j
                                        ; sub_FFC350B0+D2↑j ...
                moveq   #7,d7
                move.w  #3,var_36(a6)
                clr.b   var_34(a6)
                movea.l $C(a3),a0
                tst.b   (a0)
                bne.s   loc_FFC351F4
                subq.l  #4,sp
                move.l  #$53545220,-(sp)
                move.w  #$C120,-(sp)
                _GetResource
                move.l  (sp)+,var_3A(a6)
                bne.s   loc_FFC351E6
                movea.l $C(a3),a0
                clr.b   (a0)
                moveq   #5,d7
                bra.s   loc_FFC351F4
; ---------------------------------------------------------------------------

loc_FFC351E6:                           ; CODE XREF: sub_FFC350B0+12A↑j
                movea.l var_3A(a6),a1
                movea.l (a1),a0
                movea.l $C(a3),a1
                moveq   #$20,d0 ; ' '
                _BlockMove

loc_FFC351F4:                           ; CODE XREF: sub_FFC350B0+116↑j
                                        ; sub_FFC350B0+134↑j
                subq.l  #4,sp
                move.l  #$49434E23,-(sp)
                move.w  #$BFE5,-(sp)
                _GetResource
                movea.l (sp)+,a0
                move.l  a0,$5B4(a2)
                _MoveHHi
                movea.l $5B4(a2),a0
                _HLock
                tst.l   (a3)
                beq.s   loc_FFC35220
                movea.l (a3),a0
                tst.b   (a0)
                beq.s   loc_FFC35220
                move.l  a0,var_4(a6)
                bra.s   loc_FFC3523E
; ---------------------------------------------------------------------------

loc_FFC35220:                           ; CODE XREF: sub_FFC350B0+162↑j
                                        ; sub_FFC350B0+168↑j
                moveq   #0,d0
                move.l  d0,var_4(a6)
                movea.l $2E(a4),a0
                pea     2(a0)
                movea.l $32(a4),a0
                pea     2(a0)
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  d0,-(sp)
                _ParamText

loc_FFC3523E:                           ; CODE XREF: sub_FFC350B0+16E↑j
                subq.l  #2,sp
                move.l  var_4(a6),-(sp)
                move.l  $5B4(a2),-(sp)
                move.l  $C(a3),-(sp)
                pea     var_34(a6)
                move.w  d7,-(sp)
                move.b  8(a3),-(sp)
                pea     var_36(a6)
                pea     sub_FFC353DA(pc)
                move.l  a4,-(sp)
                jsr     sub_FFC3680E
                move.w  (sp)+,d6
                movea.l $5B4(a2),a0
                _HUnlock
                tst.w   d6
                beq.s   loc_FFC3527A
                move.w  #$FF80,$10(a4)
                moveq   #$FFFFFF80,d0
                bra.s   loc_FFC35296
; ---------------------------------------------------------------------------

loc_FFC3527A:                           ; CODE XREF: sub_FFC350B0+1BE↑j
                moveq   #1,d0
                cmp.w   var_36(a6),d0
                bne.s   loc_FFC3528C
                movea.l 4(a3),a0
                move.b  #1,(a0)
                bra.s   loc_FFC35292
; ---------------------------------------------------------------------------

loc_FFC3528C:                           ; CODE XREF: sub_FFC350B0+1D0↑j
                movea.l 4(a3),a0
                clr.b   (a0)

loc_FFC35292:                           ; CODE XREF: sub_FFC350B0+1DA↑j
                move.w  $10(a4),d0

loc_FFC35296:                           ; CODE XREF: sub_FFC350B0+16↑j
                                        ; sub_FFC350B0+3C↑j ...
                movem.l var_4E(a6),d6-d7/a2-a4
                unlk    a6
                rts
; End of function sub_FFC350B0


; =============== S U B R O U T I N E =======================================


sub_FFC352A0:                           ; DATA XREF: ROM:FFC2FFD4↑o
                movea.l ($2050).w,a1
                movea.l $50(a1),a1
                jmp     (a1)
; End of function sub_FFC352A0

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: thunk

sub_FFC352B0:                           ; CODE XREF: sub_FFC350B0+CC↑p
                bra.l   sub_FFCC9DE0
; End of function sub_FFC352B0

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC352C0:                           ; DATA XREF: ROM:FFC06C84↑o

var_114         = -$114
var_100         = -$100
arg_0           =  8
arg_4           =  $C
arg_A           =  $12
arg_C           =  $14

                link    a6,#-$100
                movem.l d5-d7/a3-a4,-(sp)
                movea.l arg_C(a6),a4
                clr.b   d6
                moveq   #1,d0
                cmp.w   arg_A(a6),d0
                bne.s   loc_FFC352E6
                moveq   #0,d0
                move.l  d0,$3E(a4)
                movea.l a4,a0
                moveq   #2,d0
                _PPC
                move.w  d0,d7
                bra.s   loc_FFC3535C
; ---------------------------------------------------------------------------

loc_FFC352E6:                           ; CODE XREF: sub_FFC352C0+14↑j
                movea.l arg_4(a6),a0
                tst.b   (a0)
                beq.w   loc_FFC35382
                move.l  arg_0(a6),-(sp)
                move.l  a0,-(sp)
                jsr     sub_FFC35608
                movea.l d0,a3
                move.l  a3,d0
                addq.w  #8,sp
                bne.s   loc_FFC3533E
                jsr     sub_FFC356AA
                movea.l d0,a3
                move.l  a3,d0
                bne.s   loc_FFC35318
                move.w  #$FC64,$10(a4)
                moveq   #0,d0
                bra.w   loc_FFC353D0
; ---------------------------------------------------------------------------

loc_FFC35318:                           ; CODE XREF: sub_FFC352C0+4A↑j
                moveq   #1,d6
                pea     8(a3)
                move.l  arg_4(a6),-(sp)
                pea     ($A5).w
                jsr     sub_FFC356F8
                pea     $29(a3)
                move.l  arg_0(a6),-(sp)
                moveq   #$5A,d0 ; 'Z'
                move.l  d0,-(sp)
                jsr     sub_FFC356F8
                lea     $18(sp),sp

loc_FFC3533E:                           ; CODE XREF: sub_FFC352C0+40↑j
                move.l  4(a3),$3E(a4)
                movea.l a4,a0
                moveq   #2,d0
                _PPC
                move.w  d0,d7
                beq.s   loc_FFC3535C
                tst.b   d6
                beq.s   loc_FFC3535C
                pea     4(a3)
                jsr     sub_FFC35464
                addq.w  #4,sp

loc_FFC3535C:                           ; CODE XREF: sub_FFC352C0+24↑j
                                        ; sub_FFC352C0+8C↑j ...
                cmpi.w  #$FC61,d7
                bne.s   loc_FFC35376
                moveq   #7,d5
                pea     var_100(a6)
                move.w  #$BFE5,-(sp)
                moveq   #1,d0
                move.w  d0,-(sp)
                jsr     sub_FFC30540
                bra.s   loc_FFC3539A
; ---------------------------------------------------------------------------

loc_FFC35376:                           ; CODE XREF: sub_FFC352C0+A0↑j
                cmpi.w  #$FC70,d7
                beq.s   loc_FFC35382
                cmpi.w  #$FC71,d7
                bne.s   loc_FFC35396

loc_FFC35382:                           ; CODE XREF: sub_FFC352C0+2C↑j
                                        ; sub_FFC352C0+BA↑j
                moveq   #5,d5
                pea     var_100(a6)
                move.w  #$BFE5,-(sp)
                moveq   #2,d0
                move.w  d0,-(sp)
                jsr     sub_FFC30540
                bra.s   loc_FFC3539A
; ---------------------------------------------------------------------------

loc_FFC35396:                           ; CODE XREF: sub_FFC352C0+C0↑j
                moveq   #0,d0
                bra.s   loc_FFC353D0
; ---------------------------------------------------------------------------

loc_FFC3539A:                           ; CODE XREF: sub_FFC352C0+B4↑j
                                        ; sub_FFC352C0+D4↑j
                pea     var_100(a6)
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  d0,-(sp)
                move.l  d0,-(sp)
                _ParamText
                subq.l  #2,sp
                move.w  #$BFE5,-(sp)
                moveq   #0,d0
                move.l  d0,-(sp)
                _StopAlert
                movea.l $2E(a4),a0
                pea     2(a0)
                movea.l $32(a4),a0
                pea     2(a0)
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  d0,-(sp)
                _ParamText
                move.w  d5,d0
                addq.w  #2,sp

loc_FFC353D0:                           ; CODE XREF: sub_FFC352C0+54↑j
                                        ; sub_FFC352C0+D8↑j
                movem.l var_114(a6),d5-d7/a3-a4
                unlk    a6
                rts
; End of function sub_FFC352C0


; =============== S U B R O U T I N E =======================================


sub_FFC353DA:                           ; DATA XREF: sub_FFC350B0+1AA↑o
                movea.l ($2050).w,a1
                movea.l $54(a1),a1
                jmp     (a1)
; End of function sub_FFC353DA

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC353F0:                           ; DATA XREF: ROM:FFC06C88↑o

var_4           = -4
arg_0           =  8
arg_4           =  $C

                link    a6,#0
                move.l  d3,-(sp)
                movea.l arg_0(a6),a0
                move.l  4(a0),d0
                cmp.l   arg_4(a6),d0
                seq     d3
                neg.b   d3
                move.b  d3,d0
                move.l  var_4(a6),d3
                unlk    a6
                rts
; End of function sub_FFC353F0


; =============== S U B R O U T I N E =======================================


sub_FFC35410:                           ; DATA XREF: sub_FFC35420+E↓o
                movea.l ($2050).w,a1
                movea.l $58(a1),a1
                jmp     (a1)
; End of function sub_FFC35410

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC35420:                           ; DATA XREF: ROM:FFC06C8C↑o

var_8           = -8
arg_0           =  8

                link    a6,#0
                movem.l a3-a4,-(sp)
                jsr     sub_FFC30D10
                movea.l d0,a3
                pea     sub_FFC35410(pc)
                movea.l arg_0(a6),a0
                move.l  (a0),-(sp)
                pea     $C(a3)
                jsr     sub_FFC2FCC2
                movea.l d0,a4
                move.l  a4,d0
                lea     $C(sp),sp
                beq.s   loc_FFC35456
                move.l  a4,-(sp)
                jsr     sub_FFC2FD5E
                moveq   #0,d0
                addq.w  #4,sp
                bra.s   loc_FFC3545A
; ---------------------------------------------------------------------------

loc_FFC35456:                           ; CODE XREF: sub_FFC35420+28↑j
                move.w  #$FC60,d0

loc_FFC3545A:                           ; CODE XREF: sub_FFC35420+34↑j
                movem.l var_8(a6),a3-a4
                unlk    a6
                rts
; End of function sub_FFC35420


; =============== S U B R O U T I N E =======================================


sub_FFC35464:                           ; CODE XREF: sub_FFC352C0+96↑p
                                        ; DATA XREF: ROM:FFC2FFD0↑o
                movea.l ($2050).w,a1
                movea.l $5C(a1),a1
                jmp     (a1)
; End of function sub_FFC35464

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC35470:                           ; DATA XREF: ROM:FFC06C90↑o

var_16A         = -$16A
var_15A         = -$15A
var_142         = -$142
var_13A         = -$13A
var_136         = -$136
var_12E         = -$12E
var_126         = -$126
var_104         = -$104
var_FC          = -$FC
var_38          = -$38
var_12          = -$12
var_E           = -$E
var_A           = -$A
arg_0           =  8

                link    a6,#-$15A
                movem.l d7/a2-a4,-(sp)
                lea     var_A(a6),a4
                jsr     sub_FFC350A6
                move.w  d0,d7
                bne.w   loc_FFC35552
                jsr     sub_FFC30D10
                move.l  d0,var_12(a6)
                subq.l  #4,sp
                move.l  #$53545220,-(sp)
                move.w  #$C120,-(sp)
                _GetResource
                movea.l (sp)+,a3
                move.l  a3,d0
                bne.s   loc_FFC354AA
                move.w  #$FC66,d7
                bra.w   loc_FFC35552
; ---------------------------------------------------------------------------

loc_FFC354AA:                           ; CODE XREF: sub_FFC35470+30↑j
                subq.l  #2,sp
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  (a3),-(sp)
                pea     var_38(a6)
                jsr     sub_FFC35E92
                lea     var_38(a6),a0
                move.l  a0,var_12E(a6)
                lea     var_104(a6),a0
                move.l  a0,var_13A(a6)
                move.l  #$CC,var_136(a6)
                movea.l var_12(a6),a0
                move.w  $5B2(a0),var_142(a6)
                moveq   #0,d0
                move.l  d0,var_126(a6)
                moveq   #0,d0
                move.l  d0,-(sp)
                pea     var_15A(a6)
                jsr     sub_FFC35D82
                move.w  d0,d7
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  var_FC(a6),-(sp)
                pea     var_104(a6)
                jsr     sub_FFC34EB8
                lea     var_104(a6),a1
                movea.l a1,a0
                movea.l a4,a1
                moveq   #8,d0
                _BlockMove
                clr.b   8(a4)
                move.l  a4,-(sp)
                jsr     sub_FFC35570
                move.l  a4,-(sp)
                move.l  (a3),-(sp)
                jsr     sub_FFC35608
                move.l  d0,var_E(a6)
                lea     $22(sp),sp
                bne.s   loc_FFC3552E
                move.w  #$FC65,d7
                bra.s   loc_FFC35552
; ---------------------------------------------------------------------------

loc_FFC3552E:                           ; CODE XREF: sub_FFC35470+B6↑j
                movea.l var_E(a6),a0
                movea.l arg_0(a6),a1
                movea.l 4(a1),a1
                move.l  4(a0),(a1)
                movea.l arg_0(a6),a0
                tst.l   (a0)
                beq.s   loc_FFC35552
                movea.l (a3),a0
                movea.l arg_0(a6),a2
                movea.l (a2),a1
                moveq   #$21,d0 ; '!'
                _BlockMove

loc_FFC35552:                           ; CODE XREF: sub_FFC35470+12↑j
                                        ; sub_FFC35470+36↑j ...
                move.w  d7,d0
                movem.l var_16A(a6),d7/a2-a4
                unlk    a6
                rts
; End of function sub_FFC35470


; =============== S U B R O U T I N E =======================================


sub_FFC3555E:                           ; DATA XREF: ROM:FFC2FFD2↑o
                movea.l ($2050).w,a1
                movea.l $60(a1),a1
                jmp     (a1)
; End of function sub_FFC3555E

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: thunk

sub_FFC35570:                           ; CODE XREF: sub_FFC35470+A2↑p
                bra.l   sub_FFCC9EC0
; End of function sub_FFC35570

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC35580:                           ; DATA XREF: ROM:FFC06C94↑o

var_38          = -$38
var_30          = -$30
var_2C          = -$2C
var_A           = -$A
arg_0           =  8
arg_4           =  $C

                link    a6,#-$30
                movem.l a3-a4,-(sp)
                lea     var_A(a6),a3
                jsr     sub_FFC30D10
                move.l  d0,var_30(a6)
                movea.l d0,a0
                movea.l $C(a0),a4
                bra.s   loc_FFC355F8
; ---------------------------------------------------------------------------

loc_FFC3559C:                           ; CODE XREF: sub_FFC35580+7A↓j
                pea     var_2C(a6)
                pea     8(a4)
                pea     ($A5).w
                jsr     sub_FFC356F8
                subq.l  #2,sp
                pea     var_2C(a6)
                move.l  arg_0(a6),-(sp)
                moveq   #0,d0
                move.b  d0,-(sp)
                moveq   #1,d1
                move.b  d1,-(sp)
                jsr     sub_FFC30840
                tst.b   (sp)+
                lea     $C(sp),sp
                beq.s   loc_FFC355F6
                tst.l   arg_4(a6)
                beq.s   loc_FFC355FC
                move.l  a3,-(sp)
                pea     $29(a4)
                moveq   #$5A,d0 ; 'Z'
                move.l  d0,-(sp)
                jsr     sub_FFC356F8
                move.b  (a3),d0
                extb.l  d0
                move.l  d0,-(sp)
                move.l  arg_4(a6),-(sp)
                move.l  a3,-(sp)
                jsr     sub_FFC31FD0
                tst.l   d0
                lea     $18(sp),sp
                beq.s   loc_FFC355FC

loc_FFC355F6:                           ; CODE XREF: sub_FFC35580+48↑j
                movea.l (a4),a4

loc_FFC355F8:                           ; CODE XREF: sub_FFC35580+1A↑j
                move.l  a4,d0
                bne.s   loc_FFC3559C

loc_FFC355FC:                           ; CODE XREF: sub_FFC35580+4E↑j
                                        ; sub_FFC35580+74↑j
                move.l  a4,d0
                movem.l var_38(a6),a3-a4
                unlk    a6
                rts
; End of function sub_FFC35580


; =============== S U B R O U T I N E =======================================


sub_FFC35608:                           ; CODE XREF: sub_FFC352C0+36↑p
                                        ; sub_FFC35470+AA↑p
                movea.l ($2050).w,a1
                movea.l $64(a1),a1
                jmp     (a1)
; End of function sub_FFC35608

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC35620:                           ; DATA XREF: ROM:FFC06C98↑o

var_C           = -$C
arg_0           =  8

                link    a6,#0
                movem.l d7/a3-a4,-(sp)
                move.l  arg_0(a6),d7
                jsr     sub_FFC30D10
                movea.l d0,a3
                movea.l $C(a3),a4
                bra.s   loc_FFC35640
; ---------------------------------------------------------------------------

loc_FFC35638:                           ; CODE XREF: sub_FFC35620+22↓j
                cmp.l   4(a4),d7
                beq.s   loc_FFC35644
                movea.l (a4),a4

loc_FFC35640:                           ; CODE XREF: sub_FFC35620+16↑j
                move.l  a4,d0
                bne.s   loc_FFC35638

loc_FFC35644:                           ; CODE XREF: sub_FFC35620+1C↑j
                move.l  a4,d0
                movem.l var_C(a6),d7/a3-a4
                unlk    a6
                rts
; End of function sub_FFC35620


; =============== S U B R O U T I N E =======================================


sub_FFC35650:                           ; CODE XREF: sub_FFC33150+16↑p
                                        ; sub_FFC335F0+8E↑p ...
                movea.l ($2050).w,a1
                movea.l $68(a1),a1
                jmp     (a1)
; End of function sub_FFC35650

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC35660:                           ; DATA XREF: ROM:FFC06C9C↑o

var_8           = -8

                link    a6,#0
                movem.l a3-a4,-(sp)
                jsr     sub_FFC30D10
                movea.l d0,a4
                moveq   #$34,d0 ; '4'
                move.l  d0,-(sp)
                jsr     sub_FFC2FD40
                movea.l d0,a3
                move.l  a3,d0
                addq.w  #4,sp
                beq.s   loc_FFC3569E
                move.l  $C8(a4),4(a3)
                addq.l  #1,$C8(a4)
                tst.l   $C8(a4)
                bne.s   loc_FFC35692
                addq.l  #1,$C8(a4)

loc_FFC35692:                           ; CODE XREF: sub_FFC35660+2C↑j
                pea     $C(a4)
                move.l  a3,-(sp)
                jsr     sub_FFC2FB70
                addq.w  #8,sp

loc_FFC3569E:                           ; CODE XREF: sub_FFC35660+1C↑j
                move.l  a3,d0
                movem.l var_8(a6),a3-a4
                unlk    a6
                rts
; End of function sub_FFC35660


; =============== S U B R O U T I N E =======================================


sub_FFC356AA:                           ; CODE XREF: sub_FFC352C0+42↑p
                movea.l ($2050).w,a1
                movea.l $6C(a1),a1
                jmp     (a1)
; End of function sub_FFC356AA

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC356C0:                           ; DATA XREF: ROM:FFC06CA0↑o

var_10          = -$10
arg_3           =  $B
arg_4           =  $C
arg_8           =  $10

                link    a6,#0
                movem.l d6-d7/a3-a4,-(sp)
                move.b  arg_3(a6),d6
                movea.l arg_4(a6),a3
                movea.l arg_8(a6),a4
                move.l  a4,d0
                beq.s   loc_FFC356EE
                moveq   #0,d7
                move.b  (a3)+,d7
                move.b  d7,(a4)+
                bra.s   loc_FFC356EA
; ---------------------------------------------------------------------------

loc_FFC356E0:                           ; CODE XREF: sub_FFC356C0+2C↓j
                move.b  d6,d0
                move.b  (a3)+,d1
                eor.b   d0,d1
                move.b  d1,(a4)+
                subq.w  #1,d7

loc_FFC356EA:                           ; CODE XREF: sub_FFC356C0+1E↑j
                tst.w   d7
                bne.s   loc_FFC356E0

loc_FFC356EE:                           ; CODE XREF: sub_FFC356C0+16↑j
                movem.l var_10(a6),d6-d7/a3-a4
                unlk    a6
                rts
; End of function sub_FFC356C0


; =============== S U B R O U T I N E =======================================


sub_FFC356F8:                           ; CODE XREF: sub_FFC335F0+CC↑p
                                        ; sub_FFC34FD0+3C↑p ...
                movea.l ($2050).w,a1
                movea.l $70(a1),a1
                jmp     (a1)
; End of function sub_FFC356F8

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC35710:                           ; DATA XREF: ROM:FFC06CAC↑o

arg_0           =  8

                link    a6,#0
                subq.l  #2,sp
                pea     sub_FFC35728(pc)
                move.l  arg_0(a6),-(sp)
                jsr     sub_FFC35740
                move.w  (sp)+,d0
                unlk    a6
                rts
; End of function sub_FFC35710


; =============== S U B R O U T I N E =======================================


sub_FFC35728:                           ; DATA XREF: sub_FFC35710+6↑o
                subi.b  #$53,$5000(a6) ; 'S'
; End of function sub_FFC35728


; =============== S U B R O U T I N E =======================================


sub_FFC3572E:                           ; CODE XREF: sub_FFC30100+7E↑p
                                        ; sub_FFC30220+2A↑p
                movea.l ($2050).w,a1
                movea.l $7C(a1),a1
                jmp     (a1)
; End of function sub_FFC3572E

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: thunk

sub_FFC35740:                           ; CODE XREF: sub_FFC35710+E↑p
                bra.l   sub_FFCC9530
; End of function sub_FFC35740

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC35750:                           ; DATA XREF: ROM:FFC06CB0↑o

var_8           = -8
arg_0           =  8
arg_4           =  $C
arg_A           =  $12
arg_F           =  $17
arg_13          =  $1B
arg_14          =  $1C

                link    a6,#0
                movem.l a3-a4,-(sp)
                movea.l arg_4(a6),a3
                lea     $22(a3),a4
                move.w  arg_A(a6),$18(a3)
                move.w  #$FB,$1A(a3)
                move.l  arg_14(a6),$C(a3)
                move.l  arg_0(a6),(a4)
                moveq   #0,d0
                move.l  d0,4(a4)
                clr.w   8(a4)
                clr.w   $E(a4)
                move.l  d0,$A(a4)
                move.l  d0,$10(a4)
                move.l  d0,$14(a4)
                move.b  arg_F(a6),$18(a4)
                tst.b   arg_13(a6)
                beq.s   loc_FFC357AE
                move.l  a3,-(sp)
                movea.l a3,a0
                _PBControlAsync
                ext.l   d0
                move.l  d0,-(sp)
                jsr     sub_FFC31D56
                addq.w  #8,sp
                bra.s   loc_FFC357BE
; ---------------------------------------------------------------------------

loc_FFC357AE:                           ; CODE XREF: sub_FFC35750+4A↑j
                move.l  a3,-(sp)
                movea.l a3,a0
                _Control
                ext.l   d0
                move.l  d0,-(sp)
                jsr     sub_FFC31D56
                addq.w  #8,sp

loc_FFC357BE:                           ; CODE XREF: sub_FFC35750+5C↑j
                movem.l var_8(a6),a3-a4
                unlk    a6
                rts
; End of function sub_FFC35750


; =============== S U B R O U T I N E =======================================


sub_FFC357C8:                           ; CODE XREF: sub_FFC30690+2A↑p
                movea.l ($2050).w,a1
                movea.l $80(a1),a1
                jmp     (a1)
; End of function sub_FFC357C8

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC357E0:                           ; DATA XREF: ROM:FFC06CB4↑o

var_8           = -8
arg_0           =  8
arg_7           =  $F
arg_8           =  $10

                link    a6,#0
                movem.l a3-a4,-(sp)
                movea.l arg_0(a6),a4
                lea     $22(a4),a3
                move.w  #$F9,$1A(a4)
                move.l  arg_8(a6),$C(a4)
                clr.b   $A(a3)
                clr.w   8(a3)
                clr.b   $B(a3)
                tst.b   arg_7(a6)
                beq.s   loc_FFC35820
                move.l  a4,-(sp)
                movea.l a4,a0
                _PBControlAsync
                ext.l   d0
                move.l  d0,-(sp)
                jsr     sub_FFC31D56
                addq.w  #8,sp
                bra.s   loc_FFC35830
; ---------------------------------------------------------------------------

loc_FFC35820:                           ; CODE XREF: sub_FFC357E0+2C↑j
                move.l  a4,-(sp)
                movea.l a4,a0
                _Control
                ext.l   d0
                move.l  d0,-(sp)
                jsr     sub_FFC31D56
                addq.w  #8,sp

loc_FFC35830:                           ; CODE XREF: sub_FFC357E0+3E↑j
                movem.l var_8(a6),a3-a4
                unlk    a6
                rts
; End of function sub_FFC357E0


; =============== S U B R O U T I N E =======================================


sub_FFC3583A:                           ; CODE XREF: sub_FFC30690+5C↑p
                                        ; sub_FFC30690+74↑p ...
                movea.l ($2050).w,a1
                movea.l $84(a1),a1
                jmp     (a1)
; End of function sub_FFC3583A

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC35850:                           ; DATA XREF: ROM:FFC06CB8↑o

var_4           = -4
arg_0           =  8
arg_7           =  $F
arg_8           =  $10

                link    a6,#0
                move.l  a4,-(sp)
                movea.l arg_0(a6),a4
                move.l  arg_8(a6),$C(a4)
                move.w  #$F8,$1A(a4)
                tst.b   arg_7(a6)
                beq.s   loc_FFC3587E
                move.l  a4,-(sp)
                movea.l a4,a0
                _PBControlAsync
                ext.l   d0
                move.l  d0,-(sp)
                jsr     sub_FFC31D56
                addq.w  #8,sp
                bra.s   loc_FFC3588E
; ---------------------------------------------------------------------------

loc_FFC3587E:                           ; CODE XREF: sub_FFC35850+1A↑j
                move.l  a4,-(sp)
                movea.l a4,a0
                _Control
                ext.l   d0
                move.l  d0,-(sp)
                jsr     sub_FFC31D56
                addq.w  #8,sp

loc_FFC3588E:                           ; CODE XREF: sub_FFC35850+2C↑j
                movea.l var_4(a6),a4
                unlk    a6
                rts
; End of function sub_FFC35850


; =============== S U B R O U T I N E =======================================


sub_FFC35896:                           ; CODE XREF: sub_FFC33BE0+4C↑p
                movea.l ($2050).w,a1
                movea.l $88(a1),a1
                jmp     (a1)
; End of function sub_FFC35896


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC358A0:                           ; DATA XREF: ROM:FFC06CBC↑o

var_8           = -8
arg_3           =  $B
arg_7           =  $F
arg_8           =  $10
arg_C           =  $14

                link    a6,#0
                movem.l a3-a4,-(sp)
                movea.l arg_C(a6),a4
                lea     $22(a4),a3
                move.w  #$FA,$1A(a4)
                move.l  arg_8(a6),$C(a4)
                move.b  arg_3(a6),(a3)
                tst.b   arg_7(a6)
                beq.s   loc_FFC358D8
                move.l  a4,-(sp)
                movea.l a4,a0
                _PBControlAsync
                ext.l   d0
                move.l  d0,-(sp)
                jsr     sub_FFC31D56
                addq.w  #8,sp
                bra.s   loc_FFC358E8
; ---------------------------------------------------------------------------

loc_FFC358D8:                           ; CODE XREF: sub_FFC358A0+24↑j
                move.l  a4,-(sp)
                movea.l a4,a0
                _Control
                ext.l   d0
                move.l  d0,-(sp)
                jsr     sub_FFC31D56
                addq.w  #8,sp

loc_FFC358E8:                           ; CODE XREF: sub_FFC358A0+36↑j
                movem.l var_8(a6),a3-a4
                unlk    a6
                rts
; End of function sub_FFC358A0


; =============== S U B R O U T I N E =======================================


sub_FFC358F2:                           ; CODE XREF: sub_FFC30550+24↑p
                movea.l ($2050).w,a1
                movea.l $8C(a1),a1
                jmp     (a1)
; End of function sub_FFC358F2

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC35900:                           ; DATA XREF: ROM:FFC06CC0↑o

var_8           = -8
arg_0           =  8
arg_4           =  $C
arg_A           =  $12
arg_C           =  $14
arg_12          =  $1A
arg_14          =  $1C
arg_18          =  $20
arg_1F          =  $27
arg_22          =  $2A
arg_27          =  $2F
arg_28          =  $30
arg_2C          =  $34

                link    a6,#0
                movem.l a3-a4,-(sp)
                movea.l arg_2C(a6),a3
                lea     $22(a3),a4
                move.w  arg_22(a6),$18(a3)
                move.w  #$FF,$1A(a3)
                move.l  arg_28(a6),$C(a3)
                move.l  arg_0(a6),(a4)
                move.l  arg_4(a6),4(a4)
                move.w  arg_A(a6),8(a4)
                move.w  arg_12(a6),$E(a4)
                move.l  arg_C(a6),$A(a4)
                move.l  arg_14(a6),$10(a4)
                move.l  arg_18(a6),$14(a4)
                move.b  arg_1F(a6),$18(a4)
                tst.b   arg_27(a6)
                beq.s   loc_FFC35968
                move.l  a3,-(sp)
                movea.l a3,a0
                _PBControlAsync
                ext.l   d0
                move.l  d0,-(sp)
                jsr     sub_FFC31D56
                addq.w  #8,sp
                bra.s   loc_FFC35978
; ---------------------------------------------------------------------------

loc_FFC35968:                           ; CODE XREF: sub_FFC35900+54↑j
                move.l  a3,-(sp)
                movea.l a3,a0
                _Control
                ext.l   d0
                move.l  d0,-(sp)
                jsr     sub_FFC31D56
                addq.w  #8,sp

loc_FFC35978:                           ; CODE XREF: sub_FFC35900+66↑j
                movem.l var_8(a6),a3-a4
                unlk    a6
                rts
; End of function sub_FFC35900


; =============== S U B R O U T I N E =======================================


sub_FFC35982:                           ; CODE XREF: sub_FFC334A0+A6↑p
                                        ; sub_FFC33BE0+E6↑p
                movea.l ($2050).w,a1
                movea.l $90(a1),a1
                jmp     (a1)
; End of function sub_FFC35982

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC35990:                           ; DATA XREF: ROM:FFC06CC4↑o

var_C           = -$C
var_4           = -4
arg_2           =  $A
arg_4           =  $C
arg_8           =  $10
arg_C           =  $14
arg_12          =  $1A
arg_14          =  $1C
arg_1B          =  $23
arg_1F          =  $27
arg_20          =  $28
arg_24          =  $2C

                link    a6,#-4
                movem.l a3-a4,-(sp)
                movea.l arg_24(a6),a3
                jsr     sub_FFC30D10
                movea.l d0,a4
                lea     $CC(a4),a0
                move.l  a0,var_4(a6)
                lea     $22(a3),a4
                move.w  #$FD,$1A(a3)
                move.l  arg_20(a6),$C(a3)
                movea.l arg_4(a6),a0
                move.w  (a0),4(a4)
                movea.l arg_4(a6),a0
                move.b  2(a0),6(a4)
                movea.l arg_4(a6),a0
                move.b  3(a0),7(a4)
                movea.l arg_8(a6),a0
                move.w  (a0),8(a4)
                movea.l arg_8(a6),a0
                move.b  2(a0),$A(a4)
                movea.l arg_8(a6),a0
                move.b  3(a0),$B(a4)
                move.b  arg_1B(a6),$1E(a4)
                move.l  arg_C(a6),$C(a4)
                move.w  arg_12(a6),$10(a4)
                move.l  arg_14(a6),$16(a4)
                move.w  arg_2(a6),2(a4)
                movea.l var_4(a6),a0
                move.b  8(a0),$1F(a4)
                movea.l var_4(a6),a0
                move.b  9(a0),$20(a4)
                tst.b   arg_1F(a6)
                beq.s   loc_FFC35A3C
                move.l  a3,-(sp)
                movea.l a3,a0
                _PBControlAsync
                ext.l   d0
                move.l  d0,-(sp)
                jsr     sub_FFC31D56
                addq.w  #8,sp
                bra.s   loc_FFC35A4C
; ---------------------------------------------------------------------------

loc_FFC35A3C:                           ; CODE XREF: sub_FFC35990+98↑j
                move.l  a3,-(sp)
                movea.l a3,a0
                _Control
                ext.l   d0
                move.l  d0,-(sp)
                jsr     sub_FFC31D56
                addq.w  #8,sp

loc_FFC35A4C:                           ; CODE XREF: sub_FFC35990+AA↑j
                movem.l var_C(a6),a3-a4
                unlk    a6
                rts
; End of function sub_FFC35990


; =============== S U B R O U T I N E =======================================


sub_FFC35A56:                           ; CODE XREF: sub_FFC33570+62↑p
                                        ; sub_FFC33CF0+66↑p
                movea.l ($2050).w,a1
                movea.l $94(a1),a1
                jmp     (a1)
; End of function sub_FFC35A56


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC35A60:                           ; DATA XREF: ROM:FFC06CC8↑o

var_8           = -8
arg_3           =  $B
arg_7           =  $F
arg_8           =  $10
arg_C           =  $14

                link    a6,#0
                movem.l a3-a4,-(sp)
                movea.l arg_C(a6),a4
                lea     $22(a4),a3
                move.w  #$FE,$1A(a4)
                move.l  arg_8(a6),$C(a4)
                move.b  arg_3(a6),(a3)
                tst.b   arg_7(a6)
                beq.s   loc_FFC35A98
                move.l  a4,-(sp)
                movea.l a4,a0
                _PBControlAsync
                ext.l   d0
                move.l  d0,-(sp)
                jsr     sub_FFC31D56
                addq.w  #8,sp
                bra.s   loc_FFC35AA8
; ---------------------------------------------------------------------------

loc_FFC35A98:                           ; CODE XREF: sub_FFC35A60+24↑j
                move.l  a4,-(sp)
                movea.l a4,a0
                _Control
                ext.l   d0
                move.l  d0,-(sp)
                jsr     sub_FFC31D56
                addq.w  #8,sp

loc_FFC35AA8:                           ; CODE XREF: sub_FFC35A60+36↑j
                movem.l var_8(a6),a3-a4
                unlk    a6
                rts
; End of function sub_FFC35A60


; =============== S U B R O U T I N E =======================================


sub_FFC35AB2:                           ; CODE XREF: sub_FFC32FE0+94↑p
                                        ; sub_FFC330A0+8A↑p
                movea.l ($2050).w,a1
                movea.l $98(a1),a1
                jmp     (a1)
; End of function sub_FFC35AB2

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC35AC0:                           ; DATA XREF: ROM:FFC06CCC↑o

var_8           = -8
arg_2           =  $A
arg_4           =  $C
arg_B           =  $13
arg_F           =  $17
arg_13          =  $1B
arg_14          =  $1C
arg_18          =  $20

                link    a6,#0
                movem.l a3-a4,-(sp)
                movea.l arg_18(a6),a4
                lea     $22(a4),a3
                move.w  #$F5,$1A(a4)
                move.l  arg_14(a6),$C(a4)
                move.w  arg_2(a6),(a3)
                move.l  arg_4(a6),4(a3)
                move.b  arg_B(a6),8(a3)
                move.b  arg_F(a6),9(a3)
                tst.b   arg_13(a6)
                beq.s   loc_FFC35B0A
                move.l  a4,-(sp)
                movea.l a4,a0
                _PBControlAsync
                ext.l   d0
                move.l  d0,-(sp)
                jsr     sub_FFC31D56
                addq.w  #8,sp
                bra.s   loc_FFC35B1A
; ---------------------------------------------------------------------------

loc_FFC35B0A:                           ; CODE XREF: sub_FFC35AC0+36↑j
                move.l  a4,-(sp)
                movea.l a4,a0
                _Control
                ext.l   d0
                move.l  d0,-(sp)
                jsr     sub_FFC31D56
                addq.w  #8,sp

loc_FFC35B1A:                           ; CODE XREF: sub_FFC35AC0+48↑j
                movem.l var_8(a6),a3-a4
                unlk    a6
                rts
; End of function sub_FFC35AC0


; =============== S U B R O U T I N E =======================================


sub_FFC35B24:                           ; CODE XREF: sub_FFC33460+28↑p
                                        ; sub_FFC335F0+144↑p ...
                movea.l ($2050).w,a1
                movea.l $9C(a1),a1
                jmp     (a1)
; End of function sub_FFC35B24

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC35B30:                           ; DATA XREF: ROM:FFC06CD0↑o

var_8           = -8
arg_2           =  $A
arg_4           =  $C
arg_B           =  $13
arg_C           =  $14
arg_10          =  $18

                link    a6,#0
                movem.l a3-a4,-(sp)
                movea.l arg_10(a6),a4
                lea     $22(a4),a3
                move.w  #$F6,$1A(a4)
                move.l  arg_C(a6),$C(a4)
                move.w  arg_2(a6),(a3)
                move.l  arg_4(a6),4(a3)
                tst.b   arg_B(a6)
                beq.s   loc_FFC35B6E
                move.l  a4,-(sp)
                movea.l a4,a0
                _PBControlAsync
                ext.l   d0
                move.l  d0,-(sp)
                jsr     sub_FFC31D56
                addq.w  #8,sp
                bra.s   loc_FFC35B7E
; ---------------------------------------------------------------------------

loc_FFC35B6E:                           ; CODE XREF: sub_FFC35B30+2A↑j
                move.l  a4,-(sp)
                movea.l a4,a0
                _Control
                ext.l   d0
                move.l  d0,-(sp)
                jsr     sub_FFC31D56
                addq.w  #8,sp

loc_FFC35B7E:                           ; CODE XREF: sub_FFC35B30+3C↑j
                movem.l var_8(a6),a3-a4
                unlk    a6
                rts
; End of function sub_FFC35B30


; =============== S U B R O U T I N E =======================================


sub_FFC35B88:                           ; CODE XREF: sub_FFC337D0+72↑p
                                        ; sub_FFC33A50+64↑p ...
                movea.l ($2050).w,a1
                movea.l $A0(a1),a1
                jmp     (a1)
; End of function sub_FFC35B88

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC35BA0:                           ; DATA XREF: ROM:FFC06DBC↑o

var_8           = -8
arg_0           =  8
arg_4           =  $C
arg_8           =  $10
arg_F           =  $17
arg_13          =  $1B
arg_14          =  $1C
arg_18          =  $20
arg_1C          =  $24

                link    a6,#0
                movem.l a3-a4,-(sp)
                movea.l arg_1C(a6),a4
                jsr     sub_FFC30D10
                movea.l d0,a3
                move.l  arg_18(a6),-(sp)
                move.l  arg_0(a6),-(sp)
                move.l  arg_4(a6),-(sp)
                move.l  arg_8(a6),-(sp)
                moveq   #0,d0
                move.b  arg_F(a6),d0
                move.w  d0,-(sp)
                jsr     sub_FFC35C20
                move.l  arg_14(a6),$C(a4)
                move.b  $D6(a3),$1C(a4)
                move.b  $D7(a3),$1D(a4)
                move.l  arg_18(a6),$1E(a4)
                move.b  #1,$22(a4)
                move.l  a4,-(sp)
                subq.l  #2,sp
                move.l  a4,-(sp)
                move.b  arg_13(a6),-(sp)
                jsr     sub_FFC35C30
                move.w  (sp)+,d0
                ext.l   d0
                move.l  d0,-(sp)
                jsr     sub_FFC31D56
                movem.l var_8(a6),a3-a4
                unlk    a6
                rts
; End of function sub_FFC35BA0


; =============== S U B R O U T I N E =======================================


sub_FFC35C0E:                           ; CODE XREF: sub_FFC30220+11C↑p
                                        ; sub_FFC30590+9A↑p ...
                movea.l ($2050).w,a1
                movea.l $18C(a1),a1
                jmp     (a1)
; End of function sub_FFC35C0E

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: thunk

sub_FFC35C20:                           ; CODE XREF: sub_FFC35BA0+2A↑p
                bra.l   sub_FFCC9B30
; End of function sub_FFC35C20

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: thunk

sub_FFC35C30:                           ; CODE XREF: sub_FFC35BA0+56↑p
                bra.l   sub_FFCC99AE
; End of function sub_FFC35C30

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC35C40:                           ; DATA XREF: ROM:FFC06DC0↑o

var_8           = -8
arg_0           =  8
arg_7           =  $F
arg_8           =  $10
arg_C           =  $14
arg_12          =  $1A
arg_14          =  $1C

                link    a6,#0
                movem.l a3-a4,-(sp)
                movea.l arg_14(a6),a4
                jsr     sub_FFC30D10
                movea.l d0,a3
                move.l  arg_8(a6),$C(a4)
                move.b  $D6(a3),$1C(a4)
                move.b  $D7(a3),$1D(a4)
                move.l  arg_0(a6),$1E(a4)
                move.l  arg_C(a6),$22(a4)
                move.w  arg_12(a6),$26(a4)
                move.w  #1,$28(a4)
                move.l  a4,-(sp)
                subq.l  #2,sp
                move.l  a4,-(sp)
                move.b  arg_7(a6),-(sp)
                jsr     sub_FFC35CB0
                move.w  (sp)+,d0
                ext.l   d0
                move.l  d0,-(sp)
                jsr     sub_FFC31D56
                movem.l var_8(a6),a3-a4
                unlk    a6
                rts
; End of function sub_FFC35C40


; =============== S U B R O U T I N E =======================================


sub_FFC35C9E:                           ; CODE XREF: sub_FFC333D0+5E↑p
                movea.l ($2050).w,a1
                movea.l $190(a1),a1
                jmp     (a1)
; End of function sub_FFC35C9E

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: thunk

sub_FFC35CB0:                           ; CODE XREF: sub_FFC35C40+46↑p
                bra.l   loc_FFCC99B4
; End of function sub_FFC35CB0

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC35CC0:                           ; DATA XREF: ROM:FFC06DC4↑o

var_4           = -4
arg_0           =  8
arg_7           =  $F
arg_8           =  $10
arg_C           =  $14

                link    a6,#0
                move.l  a4,-(sp)
                movea.l arg_C(a6),a4
                move.l  arg_8(a6),$C(a4)
                move.l  arg_0(a6),$1E(a4)
                move.l  a4,-(sp)
                subq.l  #2,sp
                move.l  a4,-(sp)
                move.b  arg_7(a6),-(sp)
                jsr     sub_FFC35D00
                move.w  (sp)+,d0
                ext.l   d0
                move.l  d0,-(sp)
                jsr     sub_FFC31D56
                movea.l var_4(a6),a4
                unlk    a6
                rts
; End of function sub_FFC35CC0


; =============== S U B R O U T I N E =======================================


sub_FFC35CF6:                           ; CODE XREF: sub_FFC30220+164↑p
                                        ; sub_FFC30650+28↑p ...
                movea.l ($2050).w,a1
                movea.l $194(a1),a1
                jmp     (a1)
; End of function sub_FFC35CF6


; =============== S U B R O U T I N E =======================================

; Attributes: thunk

sub_FFC35D00:                           ; CODE XREF: sub_FFC35CC0+20↑p
                bra.l   loc_FFCC99C0
; End of function sub_FFC35D00

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
; ---------------------------------------------------------------------------

loc_FFC35D10:                           ; DATA XREF: ROM:FFC06C3C↑o
                moveq   #0,d0
                bra.s   loc_FFC35D3E
; ---------------------------------------------------------------------------

loc_FFC35D14:                           ; DATA XREF: ROM:FFC06C40↑o
                moveq   #1,d0
                bra.s   loc_FFC35D3E
; ---------------------------------------------------------------------------

loc_FFC35D18:                           ; DATA XREF: ROM:FFC06C44↑o
                moveq   #2,d0
                bra.s   loc_FFC35D3E
; ---------------------------------------------------------------------------

loc_FFC35D1C:                           ; DATA XREF: ROM:FFC06C48↑o
                moveq   #3,d0
                bra.s   loc_FFC35D3E
; ---------------------------------------------------------------------------

loc_FFC35D20:                           ; DATA XREF: ROM:FFC06C4C↑o
                moveq   #4,d0
                bra.s   loc_FFC35D3E
; ---------------------------------------------------------------------------

loc_FFC35D24:                           ; DATA XREF: ROM:FFC06C50↑o
                moveq   #5,d0
                bra.s   loc_FFC35D3E
; ---------------------------------------------------------------------------

loc_FFC35D28:                           ; DATA XREF: ROM:FFC06C54↑o
                moveq   #6,d0
                bra.s   loc_FFC35D3E
; ---------------------------------------------------------------------------

loc_FFC35D2C:                           ; DATA XREF: ROM:FFC06C58↑o
                moveq   #6,d0
                bra.s   loc_FFC35D3E
; ---------------------------------------------------------------------------

loc_FFC35D30:                           ; DATA XREF: ROM:FFC06C5C↑o
                moveq   #7,d0
                bra.s   loc_FFC35D3E
; ---------------------------------------------------------------------------

loc_FFC35D34:                           ; DATA XREF: ROM:FFC06C60↑o
                moveq   #8,d0
                bra.s   loc_FFC35D3E
; ---------------------------------------------------------------------------

loc_FFC35D38:                           ; DATA XREF: ROM:FFC06C64↑o
                moveq   #9,d0
                bra.s   loc_FFC35D3E
; ---------------------------------------------------------------------------

loc_FFC35D3C:                           ; DATA XREF: ROM:FFC06C68↑o
                moveq   #$A,d0

loc_FFC35D3E:                           ; CODE XREF: ROM:FFC35D12↑j
                                        ; ROM:FFC35D16↑j ...
                movea.l 4(sp),a0
                tst.l   8(sp)
                beq.s   loc_FFC35D4C
; ---------------------------------------------------------------------------
                dc.w $A48E
; ---------------------------------------------------------------------------
                rts
; ---------------------------------------------------------------------------

loc_FFC35D4C:                           ; CODE XREF: ROM:FFC35D46↑j
                _A08E
                rts
; ---------------------------------------------------------------------------
                move.l  ([$2050],$38),-(sp)
                rts
; ---------------------------------------------------------------------------
                move.l  ([$2050],$20),-(sp)
                rts
; ---------------------------------------------------------------------------
                move.l  ([$2050],$1C),-(sp)
                rts
; ---------------------------------------------------------------------------
                move.l  ([$2050],$30),-(sp)
                rts
; ---------------------------------------------------------------------------
                move.l  ([$2050],$2C),-(sp)
                rts

; =============== S U B R O U T I N E =======================================


sub_FFC35D82:                           ; CODE XREF: sub_FFC309C0+66↑p
                                        ; sub_FFC34ED0+54↑p ...
                move.l  ([$2050],$28),-(sp)
                rts
; End of function sub_FFC35D82

; ---------------------------------------------------------------------------
                dc.b $2F ; /
                dc.b $30 ; 0
                dc.b $81
                dc.b $E2
                dc.b $20
                dc.b $50 ; P
                dc.b   0
                dc.b $24 ; $
                dc.b $4E ; N
                dc.b $75 ; u
                dc.b $2F ; /
                dc.b $30 ; 0
                dc.b $81
                dc.b $E2
                dc.b $20
                dc.b $50 ; P
                dc.b   0
                dc.b $18
                dc.b $4E ; N
                dc.b $75 ; u
                dc.b $2F ; /
                dc.b $30 ; 0
                dc.b $81
                dc.b $E2
                dc.b $20
                dc.b $50 ; P
                dc.b   0
                dc.b $34 ; 4
                dc.b $4E ; N
                dc.b $75 ; u
                dc.b $2F ; /
                dc.b $30 ; 0
                dc.b $81
                dc.b $E2
                dc.b $20
                dc.b $50 ; P
                dc.b   0
                dc.b $14
                dc.b $4E ; N
                dc.b $75 ; u
                dc.b $2F ; /
                dc.b $30 ; 0
                dc.b $81
                dc.b $E2
                dc.b $20
                dc.b $50 ; P
                dc.b   0
                dc.b $10
                dc.b $4E ; N
                dc.b $75 ; u
                dc.b $2F ; /
                dc.b $30 ; 0
                dc.b $81
                dc.b $E2
                dc.b $20
                dc.b $50 ; P
                dc.b   0
                dc.b  $C
                dc.b $4E ; N
                dc.b $75 ; u
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC35DD0:                           ; DATA XREF: ROM:FFC06C34↑o

var_3C          = -$3C
arg_0           =  8
arg_5           =  $D
arg_6           =  $E
arg_A           =  $12
arg_E           =  $16
arg_10          =  $18

                link    a6,#-$3C
                movea.l arg_0(a6),a1
                clr.w   (a1)

loc_FFC35DDA:                           ; CODE XREF: sub_FFC35DD0+58↓j
                lea     var_3C(a6),a0
                move.w  #$1D,d0

loc_FFC35DE2:                           ; CODE XREF: sub_FFC35DD0+14↓j
                clr.w   (a0)+
                dbf     d0,loc_FFC35DE2
                lea     var_3C(a6),a0
                move.w  arg_E(a6),$16(a0)
                move.l  arg_A(a6),$30(a0)
                move.l  arg_6(a6),$12(a0)
                move.b  arg_5(a6),$1B(a0)
                clr.l   $52(a0)
                moveq   #1,d0
                _A08E
                beq.s   loc_FFC35E2A
                cmpi.w  #$FE58,d0
                bne.s   loc_FFC35E2A
                lea     unk_FFC35E4C(pc),a1
                move.l  a1,$34(a0)
                clr.l   $38(a0)
                move.b  (a1),$3B(a0)
                moveq   #$F,d0
                _A08E
                beq.s   loc_FFC35DDA

loc_FFC35E2A:                           ; CODE XREF: sub_FFC35DD0+3C↑j
                                        ; sub_FFC35DD0+42↑j
                move.w  d0,arg_10(a6)
                bne.s   loc_FFC35E38
                movea.l arg_0(a6),a1
                move.w  $18(a0),(a1)

loc_FFC35E38:                           ; CODE XREF: sub_FFC35DD0+5E↑j
                unlk    a6
                movea.l (sp)+,a0
                lea     $10(sp),sp
                jmp     (a0)
; End of function sub_FFC35DD0

; ---------------------------------------------------------------------------
                dc.b $CF
                dc.b $50 ; P
                dc.b $45 ; E
                dc.b $4E ; N
                dc.b $55 ; U
                dc.b $47 ; G
                dc.b $42 ; B
                dc.b $54 ; T
                dc.b   0
                dc.b   0
unk_FFC35E4C:   dc.b   7                ; DATA XREF: sub_FFC35DD0+44↑o
                dc.b   0
                dc.b   1
                dc.b   6
                dc.b   1
                dc.b   3
                dc.b   1
                dc.b   0

; =============== S U B R O U T I N E =======================================


sub_FFC35E54:                           ; CODE XREF: sub_FFC304A0+78↑p
                move.l  ([$2050],4),-(sp)
                rts
; End of function sub_FFC35E54

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC35E60:                           ; DATA XREF: ROM:FFC06C38↑o

arg_0           =  8
arg_4           =  $C
arg_8           =  $10

                link    a6,#0
                movea.l arg_0(a6),a1
                movea.l arg_4(a6),a0
                moveq   #0,d0
                move.b  (a0),d0
                addq.l  #6,d0
                move.b  d0,(a1)+
                clr.b   (a1)+
                move.l  arg_8(a6),(a1)+
                subq.l  #5,d0
                _BlockMove
                unlk    a6
                movea.l (sp)+,a0
                lea     $C(sp),sp
                jmp     (a0)
; End of function sub_FFC35E60

; ---------------------------------------------------------------------------
                dc.b $C2
                dc.b $4C ; L
                dc.b $44 ; D
                dc.b $46 ; F
                dc.b $53 ; S
                dc.b $4B ; K
                dc.b $45 ; E
                dc.b $59 ; Y
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================


sub_FFC35E92:                           ; CODE XREF: sub_FFC309C0+36↑p
                                        ; sub_FFC34ED0+20↑p ...
                move.l  ([$2050],8),-(sp)
                rts
; End of function sub_FFC35E92

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
; ---------------------------------------------------------------------------
loc_FFC35EA0:                           ; DATA XREF: ROM:ToolboxTraps↓o
                movea.l ($BCC).w,a0
                movea.l ($2B6).w,a1
                lea     $126(a1),a1
                move.l  ($668).w,-(sp)
                rts
; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC35EC0:                           ; DATA XREF: ROM:FFC06F20↑o
                                        ; ROM:FFC06F24↑o

arg_0           =  8
arg_4           =  $C
arg_8           =  $10
arg_C           =  $14
arg_E           =  $16
arg_10          =  $18
arg_14          =  $1C
arg_18          =  $20
arg_1C          =  $24
arg_20          =  $28

                link    a6,#0
                movem.l d2-d5/a2-a5,-(sp)
                move.l  arg_0(a6),d5
                move.l  arg_4(a6),d4
                movea.l arg_8(a6),a4
                move.w  (a4),d1
                move.b  arg_C(a6),d3
                move.w  arg_E(a6),d2
                movea.l arg_10(a6),a3
                movea.l arg_14(a6),a2
                movea.l arg_18(a6),a0
                movea.l arg_1C(a6),a1
                bsr.s   sub_FFC35F08
                move.w  d0,arg_20(a6)
                movea.l arg_8(a6),a0
                move.w  d1,(a0)
                movem.l (sp)+,d2-d5/a2-a5
                unlk    a6
                movea.l (sp)+,a0
                lea     $20(sp),sp
                jmp     (a0)
; End of function sub_FFC35EC0


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC35F08:                           ; CODE XREF: sub_FFC35EC0+2E↑p

var_30          = -$30
var_2C          = -$2C
var_28          = -$28
var_26          = -$26
var_24          = -$24
var_20          = -$20
var_1C          = -$1C
var_18          = -$18
var_16          = -$16
var_12          = -$12
var_E           = -$E
var_6           = -6
var_2           = -2

                link    a6,#-$30
                movem.l d2-d5/a0-a4,-(sp)
                move.l  a4,var_24(a6)
                move.l  a2,var_1C(a6)
                move.l  a3,var_20(a6)
                move.w  d2,var_26(a6)
                move.l  d5,var_2C(a6)
                move.l  d4,var_30(a6)
                movea.l ($2B6).w,a4
                movea.l $148(a4),a4
                move.w  d1,(a4)
                move.w  d1,var_28(a6)
                move.b  d3,$12(a4)
                move.l  a1,$A(a4)
                move.l  a0,$E(a4)
                pea     var_12(a6)
                _GetPort
                subq.w  #4,sp
                move.w  #$BFE7,-(sp)
                clr.l   -(sp)
                move.l  #$FFFFFFFF,-(sp)
                _GetNewDialog
                movea.l (sp),a3
                move.l  a3,var_16(a6)
                _SetPort
                move.l  $A(a4),d0
                beq.s   loc_FFC35F70
                movea.l d0,a2
                move.w  #3,d0
                bsr.w   sub_FFC36760

loc_FFC35F70:                           ; CODE XREF: sub_FFC35F08+5C↑j
                clr.w   -(sp)
                _TextFont
                move.l  $E(a4),d0
                beq.s   loc_FFC35F84
                pea     loc_FFC367F8(pc)
                move.l  $E(a4),-(sp)
                _PlotIcon

loc_FFC35F84:                           ; CODE XREF: sub_FFC35F08+70↑j
                move.w  #5,d0
                movea.l var_1C(a6),a2
                bsr.w   sub_FFC36760
                move.l  a3,-(sp)
                move.w  #5,-(sp)
                pea     var_2(a6)
                pea     var_6(a6)
                pea     var_E(a6)
                _GetDialogItem
                move.l  var_6(a6),6(a4)
                subq.w  #4,sp
                pea     sub_FFC367F0(pc)
                pea     sub_FFC367F0(pc)
                _TENew
                move.l  (sp)+,2(a4)
                subq.w  #2,sp
                jsr     sub_FFC3685E
                move.b  (sp)+,$14(a4)
                move.l  2(a4),d2
                movea.l var_20(a6),a2
                bsr.w   sub_FFC3669E
                movem.l d0-d2/a0-a2,-(sp)
                movea.l ($2B6).w,a0
                movea.l $148(a0),a0
                lea     $16(a0),a0
                clr.w   (a0)
                move.w  var_26(a6),d0
                cmpi.w  #7,d0
                bne.w   loc_FFC3602C
                subq.w  #4,sp
                move.l  #$474E524C,-(sp)
                move.w  #$BF96,-(sp)
                _GetResource
                movea.l (sp)+,a0
                cmpa.w  #0,a0
                beq.w   loc_FFC3602C
                movea.l (a0),a1
                move.b  (a1),d0
                cmpi.b  #1,d0
                bne.w   loc_FFC3602C
                clr.w   -(sp)
                move.l  #$80020004,-(sp)
                _ScriptUtil
                movea.l ($2B6).w,a0
                movea.l $148(a0),a0
                lea     $16(a0),a0
                move.w  #1,(a0)

loc_FFC3602C:                           ; CODE XREF: sub_FFC35F08+E2↑j
                                        ; sub_FFC35F08+FA↑j ...
                movem.l (sp)+,d0-d2/a0-a2
                move.w  var_26(a6),d0
                bsr.w   sub_FFC36704
                tst.b   d3
                bne.s   loc_FFC36048
                move.w  #8,d0
                move.w  #$FF,d1
                bsr.w   sub_FFC3663E

loc_FFC36048:                           ; CODE XREF: sub_FFC35F08+132↑j
                move.w  (a4),d1
                bsr.w   sub_FFC36784
                move.w  #9,d0
                move.w  #1,d1
                bsr.w   sub_FFC3673A
                move.l  a3,-(sp)
                _ShowWindow

loc_FFC3605E:                           ; CODE XREF: sub_FFC35F08:loc_FFC36136↓j
                                        ; sub_FFC35F08+28A↓j ...
                movea.l var_16(a6),a3
                bsr.w   sub_FFC3672E
                pea     sub_FFC361C6(pc)
                pea     var_18(a6)
                _ModalDialog
                movem.l d0-d2/a0-a2,-(sp)
                cmpi.w  #7,var_18(a6)
                bne.s   loc_FFC360C4
                subq.w  #4,sp
                move.l  #$474E524C,-(sp)
                move.w  #$BF96,-(sp)
                _GetResource
                movea.l (sp)+,a0
                cmpa.w  #0,a0
                beq.w   loc_FFC360DA
                movea.l (a0),a1
                move.b  (a1),d0
                cmpi.b  #1,d0
                bne.w   loc_FFC360DA
                movea.l ($2B6).w,a0
                movea.l $148(a0),a0
                lea     $16(a0),a0
                move.w  (a0),d0
                bne.w   loc_FFC360DA
                move.w  #1,(a0)
                clr.w   -(sp)
                move.l  #$80020004,-(sp)
                _ScriptUtil
                bra.w   loc_FFC360DA
; ---------------------------------------------------------------------------

loc_FFC360C4:                           ; CODE XREF: sub_FFC35F08+172↑j
                cmpi.w  #5,var_18(a6)
                bne.s   loc_FFC360DA
                movea.l ($2B6).w,a0
                movea.l $148(a0),a0
                lea     $16(a0),a0
                clr.w   (a0)

loc_FFC360DA:                           ; CODE XREF: sub_FFC35F08+188↑j
                                        ; sub_FFC35F08+194↑j ...
                movem.l (sp)+,d0-d2/a0-a2
                cmpi.w  #8,var_18(a6)
                bne.s   loc_FFC36102
                bsr.w   sub_FFC36510
                move.w  #8,d0
                move.w  #1,d1
                bsr.w   sub_FFC3673A
                bsr.w   sub_FFC36614
                move.w  #1,var_28(a6)
                bra.s   loc_FFC36136
; ---------------------------------------------------------------------------

loc_FFC36102:                           ; CODE XREF: sub_FFC35F08+1DC↑j
                cmpi.w  #9,var_18(a6)
                bne.s   loc_FFC36124
                bsr.w   sub_FFC36510
                move.w  #9,d0
                move.w  #1,d1
                bsr.w   sub_FFC3673A
                bsr.w   sub_FFC366CC
                move.w  (a4),var_28(a6)
                bra.s   loc_FFC36136
; ---------------------------------------------------------------------------

loc_FFC36124:                           ; CODE XREF: sub_FFC35F08+200↑j
                cmpi.w  #1,var_18(a6)
                blt.s   loc_FFC36136
                beq.s   loc_FFC3613A
                cmpi.w  #2,var_18(a6)
                beq.s   loc_FFC361A2

loc_FFC36136:                           ; CODE XREF: sub_FFC35F08+1F8↑j
                                        ; sub_FFC35F08+21A↑j ...
                bra.w   loc_FFC3605E
; ---------------------------------------------------------------------------

loc_FFC3613A:                           ; CODE XREF: sub_FFC35F08+224↑j
                movea.l var_1C(a6),a2
                move.w  var_28(a6),d1
                bsr.w   sub_FFC36562
                movea.l 2(a4),a1
                movea.l var_20(a6),a3
                move.w  var_28(a6),d1
                bsr.w   sub_FFC3652E
                moveq   #0,d0
                cmpi.l  #0,var_30(a6)
                beq.s   loc_FFC361A4
                move.l  var_2C(a6),-(sp)
                moveq   #0,d1
                move.w  var_28(a6),d1
                ext.l   d1
                move.l  d1,-(sp)
                move.l  var_1C(a6),-(sp)
                move.l  var_20(a6),-(sp)
                movea.l var_30(a6),a0
                jsr     (a0)
                tst.w   d0
                beq.s   loc_FFC361A4
                cmpi.w  #5,d0
                beq.w   loc_FFC36196
                cmpi.w  #7,d0
                beq.w   loc_FFC36196
                bra.w   loc_FFC3605E
; ---------------------------------------------------------------------------

loc_FFC36196:                           ; CODE XREF: sub_FFC35F08+27E↑j
                                        ; sub_FFC35F08+286↑j
                movea.l var_16(a6),a3
                bsr.w   sub_FFC36704
                bra.w   loc_FFC3605E
; ---------------------------------------------------------------------------

loc_FFC361A2:                           ; CODE XREF: sub_FFC35F08+22C↑j
                moveq   #$FFFFFFFF,d0

loc_FFC361A4:                           ; CODE XREF: sub_FFC35F08+258↑j
                                        ; sub_FFC35F08+278↑j
                move.w  d0,-(sp)
                move.l  var_16(a6),-(sp)
                _DisposeDialog
                move.l  var_12(a6),-(sp)
                _SetPort
                move.l  2(a4),-(sp)
                _TEDispose
                move.w  (sp)+,d0
                move.w  var_28(a6),d1
                movem.l (sp)+,d2-d5/a0-a4
                unlk    a6
                rts
; End of function sub_FFC35F08


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC361C6:                           ; DATA XREF: sub_FFC35F08+15E↑o

arg_0           =  8
arg_4           =  $C
arg_8           =  $10
arg_C           =  $14

                link    a6,#-4
                movem.l d0-d4/a0-a4,-(sp)
                movea.l arg_4(a6),a1
                movea.l arg_0(a6),a2
                movea.l ($2B6).w,a4
                movea.l $148(a4),a4
                clr.w   (a2)
                clr.w   arg_C(a6)
                movea.l arg_8(a6),a3
                bsr.w   sub_FFC3659C
                move.w  (a1),d0
                cmpi.w  #3,d0
                beq.w   loc_FFC3622C
                cmpi.w  #5,d0
                beq.w   loc_FFC3622C
                cmpi.w  #6,d0
                beq.s   loc_FFC36208
                bra.w   loc_FFC363F4
; ---------------------------------------------------------------------------

loc_FFC36208:                           ; CODE XREF: sub_FFC361C6+3C↑j
                movea.l 2(a1),a3
                cmpa.l  arg_8(a6),a3
                bne.w   loc_FFC363F4
                move.w  #1,d0
                bsr.w   sub_FFC36474
                movea.l $E(a4),a0
                bsr.w   sub_FFC365E0
                movea.l arg_8(a6),a3
                bra.w   loc_FFC363F4
; ---------------------------------------------------------------------------

loc_FFC3622C:                           ; CODE XREF: sub_FFC361C6+2C↑j
                                        ; sub_FFC361C6+34↑j
                move.l  2(a1),d1
                andi.w  #$FF,d1
                move.w  $E(a1),d0
                andi.w  #$100,d0
                beq.w   loc_FFC362BA
                clr.w   d0
                cmpi.w  #$72,d1 ; 'r'
                beq.w   loc_FFC36276
                cmpi.w  #$67,d1 ; 'g'
                beq.w   loc_FFC3627E
                cmpi.w  #$2E,d1 ; '.'
                beq.w   loc_FFC3628E
                cmpi.w  #$78,d1 ; 'x'
                beq.w   loc_FFC3629C
                cmpi.w  #$63,d1 ; 'c'
                beq.w   loc_FFC3629C
                cmpi.w  #$76,d1 ; 'v'
                beq.w   loc_FFC3629C
                bra.w   loc_FFC362AE
; ---------------------------------------------------------------------------

loc_FFC36276:                           ; CODE XREF: sub_FFC361C6+80↑j
                move.w  #9,d0
                bra.w   loc_FFC362B4
; ---------------------------------------------------------------------------

loc_FFC3627E:                           ; CODE XREF: sub_FFC361C6+88↑j
                tst.b   $12(a4)
                beq.w   loc_FFC362B4
                move.w  #8,d0
                bra.w   loc_FFC362B4
; ---------------------------------------------------------------------------

loc_FFC3628E:                           ; CODE XREF: sub_FFC361C6+90↑j
                                        ; sub_FFC361C6+134↓j
                clr.w   d0
                move.w  #2,d0
                bsr.w   sub_FFC36664
                bra.w   loc_FFC362B4
; ---------------------------------------------------------------------------

loc_FFC3629C:                           ; CODE XREF: sub_FFC361C6+98↑j
                                        ; sub_FFC361C6+A0↑j ...
                movea.l arg_8(a6),a3
                move.w  $A4(a3),d0
                addq.w  #1,d0
                cmpi.w  #7,d0
                bne.w   loc_FFC363F4

loc_FFC362AE:                           ; CODE XREF: sub_FFC361C6+AC↑j
                                        ; sub_FFC361C6+152↓j ...
                move.w  #2,-(sp)
                _SysBeep

loc_FFC362B4:                           ; CODE XREF: sub_FFC361C6+B4↑j
                                        ; sub_FFC361C6+BC↑j ...
                move.w  d0,(a2)
                bra.w   loc_FFC363EE
; ---------------------------------------------------------------------------

loc_FFC362BA:                           ; CODE XREF: sub_FFC361C6+76↑j
                movea.l arg_8(a6),a3
                move.w  $A4(a3),d0
                addq.w  #1,d0
                cmpi.w  #$D,d1
                beq.w   loc_FFC363E2
                cmpi.w  #3,d1
                beq.w   loc_FFC363E2
                cmpi.w  #1,(a4)
                bne.s   loc_FFC362DE
                bra.w   loc_FFC363EE
; ---------------------------------------------------------------------------

loc_FFC362DE:                           ; CODE XREF: sub_FFC361C6+112↑j
                cmpi.w  #9,d1
                beq.w   loc_FFC363F4
                cmpi.w  #$1B,d1
                bne.s   loc_FFC36304
                move.l  2(a1),d1
                andi.w  #$FF00,d1
                lsr.w   #8,d1
                cmpi.w  #$47,d1 ; 'G'
                bne.s   loc_FFC3628E
                move.w  #8,d1
                move.l  d1,2(a1)

loc_FFC36304:                           ; CODE XREF: sub_FFC361C6+124↑j
                cmpi.w  #7,d0
                bne.w   loc_FFC363D0
                movea.l 2(a4),a1
                bsr.w   sub_FFC367CC
                cmpi.b  #$10,d1
                beq.s   loc_FFC362AE
                cmpi.b  #$7F,d1
                beq.s   loc_FFC362AE
                cmpi.b  #$1C,d1
                beq.w   loc_FFC363F4
                cmpi.b  #$1D,d1
                beq.w   loc_FFC363F4
                cmpi.b  #$1E,d1
                beq.w   loc_FFC363F4
                cmpi.b  #$1F,d1
                beq.w   loc_FFC363F4
                movea.l $A0(a3),a0
                movea.l (a0),a0
                move.w  $22(a0),d2
                sub.w   $20(a0),d2
                bne.w   loc_FFC36368
                move.w  d0,(a2)
                cmpi.b  #8,d1
                beq.w   loc_FFC36368
                move.w  #8,d0
                bsr.w   sub_FFC364E2
                bne.w   loc_FFC363EE

loc_FFC36368:                           ; CODE XREF: sub_FFC361C6+188↑j
                                        ; sub_FFC361C6+192↑j
                move.w  d1,-(sp)
                move.w  d1,-(sp)
                move.w  $20(a0),d0
                bne.w   loc_FFC363B0
                move.w  $22(a0),d0
                cmp.w   $3C(a0),d0
                bne.w   loc_FFC363B0
                clr.l   -(sp)
                move.l  #$7530,-(sp)
                move.l  2(a4),-(sp)
                _TESetSelect
                movea.l sp,a0
                addq.l  #1,a0
                subq.w  #2,sp
                move.l  a0,-(sp)
                clr.w   -(sp)
                move.l  #$82060010,-(sp)
                _ScriptUtil
                move.w  (sp)+,d0
                cmpi.w  #$FFFF,d0
                bne.w   loc_FFC363B0
                move.l  2(a4),-(sp)
                _TEDelete

loc_FFC363B0:                           ; CODE XREF: sub_FFC361C6+1AA↑j
                                        ; sub_FFC361C6+1B6↑j ...
                move.w  (sp)+,d1
                move.w  d1,-(sp)
                move.l  2(a4),-(sp)
                _TEKey
                move.w  (sp)+,d1
                cmpi.w  #8,d1
                beq.s   loc_FFC363F4
                movea.l arg_4(a6),a1
                move.b  $14(a4),d1
                move.l  d1,2(a1)
                bra.s   loc_FFC363F4
; ---------------------------------------------------------------------------

loc_FFC363D0:                           ; CODE XREF: sub_FFC361C6+142↑j
                cmpi.b  #8,d1
                beq.s   loc_FFC363F4
                move.w  #$1F,d0
                bsr.w   sub_FFC364E2
                bne.s   loc_FFC363EE
                bra.s   loc_FFC363F4
; ---------------------------------------------------------------------------

loc_FFC363E2:                           ; CODE XREF: sub_FFC361C6+102↑j
                                        ; sub_FFC361C6+10A↑j
                clr.w   d0
                move.w  #1,d0
                bsr.w   sub_FFC36664
                move.w  d0,(a2)

loc_FFC363EE:                           ; CODE XREF: sub_FFC361C6+F0↑j
                                        ; sub_FFC361C6+114↑j ...
                move.w  #$100,arg_C(a6)

loc_FFC363F4:                           ; CODE XREF: sub_FFC361C6+3E↑j
                                        ; sub_FFC361C6+4A↑j ...
                movem.l (sp)+,d0-d4/a0-a4
                unlk    a6
                movea.l (sp)+,a0
                adda.w  #$C,sp
                jmp     (a0)
; End of function sub_FFC361C6

; ---------------------------------------------------------------------------
                dc.b $48 ; H
                dc.b $E7
                dc.b $F8
                dc.b $E0
                dc.b $51 ; Q
                dc.b $C4
                dc.b $36 ; 6
                dc.b   0
                dc.b $24 ; $
                dc.b   9
                dc.b $52 ; R
                dc.b $42 ; B
                dc.b $42 ; B
                dc.b $41 ; A
                dc.b $12
                dc.b $10
                dc.b $61 ; a
                dc.b   0
                dc.b   3
                dc.b $98
                dc.b $48 ; H
                dc.b $E7
                dc.b $60 ; `
                dc.b $C0
                dc.b $55 ; U
                dc.b $4F ; O
                dc.b $2F ; /
                dc.b   2
                dc.b $42 ; B
                dc.b $67 ; g
                dc.b $3F ; ?
                dc.b   1
                dc.b $A8
                dc.b $86
                dc.b $30 ; 0
                dc.b $1F
                dc.b $4C ; L
                dc.b $DF
                dc.b   3
                dc.b   6
                dc.b $B6
                dc.b $40 ; @
                dc.b $6C ; l
                dc.b   6
                dc.b $50 ; P
                dc.b $C4
                dc.b $53 ; S
                dc.b $41 ; A
                dc.b $60 ; `
                dc.b $E2
                dc.b $4A ; J
                dc.b   4
                dc.b $67 ; g
                dc.b  $C
                dc.b $22 ; "
                dc.b $42 ; B
                dc.b $53 ; S
                dc.b $49 ; I
                dc.b $12
                dc.b $81
                dc.b $41 ; A
                dc.b $FA
                dc.b   3
                dc.b $C0
                dc.b $61 ; a
                dc.b   6
                dc.b $4C ; L
                dc.b $DF
                dc.b   7
                dc.b $1F
                dc.b $4E ; N
                dc.b $75 ; u
                dc.b $48 ; H
                dc.b $E7
                dc.b $E0
                dc.b $E0
                dc.b $24 ; $
                dc.b $49 ; I
                dc.b $42 ; B
                dc.b $41 ; A
                dc.b $12
                dc.b $11
                dc.b $67 ; g
                dc.b   4
                dc.b $43 ; C
                dc.b $F1
                dc.b $10
                dc.b   0
                dc.b $14
                dc.b $11
                dc.b $2F ; /
                dc.b   9
                dc.b $61 ; a
                dc.b   0
                dc.b   3
                dc.b $4C ; L
                dc.b $22 ; "
                dc.b $5F ; _
                dc.b $4A ; J
                dc.b   1
                dc.b $67 ; g
                dc.b   6
                dc.b $12
                dc.b $10
                dc.b $D3
                dc.b $12
                dc.b $12
                dc.b $82
                dc.b $4C ; L
                dc.b $DF
                dc.b   7
                dc.b   7
                dc.b $4E ; N
                dc.b $75 ; u

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC36474:                           ; CODE XREF: sub_FFC361C6+52↑p

var_E           = -$E
var_6           = -6
var_2           = -2

                link    a6,#-$E
                movem.l d0-d3/a0-a2,-(sp)
                move.l  a3,-(sp)
                move.w  d0,-(sp)
                pea     var_2(a6)
                pea     var_6(a6)
                pea     var_E(a6)
                _GetDialogItem
                movea.l var_6(a6),a0
                movea.l (a0),a0
                cmpi.b  #$FE,$11(a0)
                blt.s   loc_FFC364C8
                lea     var_E(a6),a0
                moveq   #3,d0
                moveq   #$10,d1
                moveq   #4,d2
                move.l  a0,-(sp)
                move.w  d2,-(sp)
                move.w  d2,-(sp)
                move.l  a0,-(sp)
                move.w  d1,-(sp)
                move.w  d1,-(sp)
                move.l  a0,-(sp)
                neg.w   d2
                move.w  d2,-(sp)
                move.w  d2,-(sp)
                move.w  d0,-(sp)
                move.w  d0,-(sp)
                _PenSize
                _InsetRect
                _FrameRoundRect
                _InsetRect
                _PenNormal

loc_FFC364C8:                           ; CODE XREF: sub_FFC36474+26↑j
                movem.l (sp)+,d0-d3/a0-a2
                unlk    a6
                rts
; End of function sub_FFC36474

; ---------------------------------------------------------------------------
                dc.b $70 ; p
                dc.b $FF
                dc.b  $C
                dc.b   1
                dc.b   0
                dc.b $1C
                dc.b $6D ; m
                dc.b   8
                dc.b  $C
                dc.b   1
                dc.b   0
                dc.b $1F
                dc.b $6E ; n
                dc.b   2
                dc.b $70 ; p
                dc.b   0
                dc.b $4E ; N
                dc.b $75 ; u

; =============== S U B R O U T I N E =======================================


sub_FFC364E2:                           ; CODE XREF: sub_FFC361C6+19A↑p
                                        ; sub_FFC361C6+214↑p
                movem.l d0-d2/a0-a4,-(sp)
                movea.l $A0(a3),a0
                movea.l (a0),a0
                move.w  $3C(a0),d2
                cmp.w   d0,d2
                blt.s   loc_FFC364FE
                move.w  $22(a0),d1
                sub.w   $20(a0),d1
                ble.s   loc_FFC36502

loc_FFC364FE:                           ; CODE XREF: sub_FFC364E2+10↑j
                clr.w   d2
                bra.s   loc_FFC3650A
; ---------------------------------------------------------------------------

loc_FFC36502:                           ; CODE XREF: sub_FFC364E2+1A↑j
                move.w  #5,-(sp)
                _SysBeep
                moveq   #$FFFFFFFF,d2

loc_FFC3650A:                           ; CODE XREF: sub_FFC364E2+1E↑j
                movem.l (sp)+,d0-d2/a0-a4
                rts
; End of function sub_FFC364E2


; =============== S U B R O U T I N E =======================================


sub_FFC36510:                           ; CODE XREF: sub_FFC35F08+1DE↑p
                                        ; sub_FFC35F08+202↑p
                movem.l d0-d1,-(sp)
                move.w  #8,d0
                clr.w   d1
                bsr.w   sub_FFC3673A
                move.w  #9,d0
                clr.w   d1
                bsr.w   sub_FFC3673A
                movem.l (sp)+,d0-d1
                rts
; End of function sub_FFC36510


; =============== S U B R O U T I N E =======================================


sub_FFC3652E:                           ; CODE XREF: sub_FFC35F08+24A↑p
                cmpi.w  #1,d1
                bne.s   loc_FFC36538
                clr.b   (a3)
                bra.s   locret_FFC36560
; ---------------------------------------------------------------------------

loc_FFC36538:                           ; CODE XREF: sub_FFC3652E+4↑j
                movem.l d0/d3/a0-a1/a3,-(sp)
                movea.l (a1),a0
                move.w  $3C(a0),d3
                bne.s   loc_FFC36548
                clr.b   (a3)
                beq.s   loc_FFC3655C

loc_FFC36548:                           ; CODE XREF: sub_FFC3652E+14↑j
                subq.w  #4,sp
                move.l  a1,-(sp)
                _TEGetText
                movea.l (sp)+,a0
                movea.l (a0),a0
                moveq   #0,d0
                move.w  d3,d0
                movea.l a3,a1
                move.b  d3,(a1)+
                _BlockMove

loc_FFC3655C:                           ; CODE XREF: sub_FFC3652E+18↑j
                movem.l (sp)+,d0/d3/a0-a1/a3

locret_FFC36560:                        ; CODE XREF: sub_FFC3652E+8↑j
                rts
; End of function sub_FFC3652E


; =============== S U B R O U T I N E =======================================


sub_FFC36562:                           ; CODE XREF: sub_FFC35F08+23A↑p
                cmpi.w  #1,d1
                bne.s   loc_FFC3656C
                clr.b   (a2)
                bra.s   locret_FFC3659A
; ---------------------------------------------------------------------------

loc_FFC3656C:                           ; CODE XREF: sub_FFC36562+4↑j
                link    a6,#-$100
                movem.l d0-d3/a0-a2,-(sp)
                move.l  6(a4),-(sp)
                pea     -$100(a6)
                _GetDialogItemText
                lea     -$100(a6),a0
                moveq   #0,d0
                cmpi.b  #$1F,(a0)
                ble.s   loc_FFC3658E
                move.b  #$1F,(a0)

loc_FFC3658E:                           ; CODE XREF: sub_FFC36562+26↑j
                movea.l a2,a1
                bsr.w   sub_FFC367AC
                movem.l (sp)+,d0-d3/a0-a2
                unlk    a6

locret_FFC3659A:                        ; CODE XREF: sub_FFC36562+8↑j
                rts
; End of function sub_FFC36562


; =============== S U B R O U T I N E =======================================


sub_FFC3659C:                           ; CODE XREF: sub_FFC361C6+22↑p
                movem.l d0-d4/a0-a3,-(sp)
                link    a6,#-4
                pea     -4(a6)
                _GetMouse
                move.l  a3,-(sp)
                move.l  -4(a6),-(sp)
                _FindDialogItem
                move.w  (sp)+,d0
                cmpi.w  #4,d0
                beq.w   loc_FFC365C8
                cmpi.w  #6,d0
                beq.w   loc_FFC365C8
                _InitCursor
                bra.s   loc_FFC365D8
; ---------------------------------------------------------------------------

loc_FFC365C8:                           ; CODE XREF: sub_FFC3659C+1C↑j
                                        ; sub_FFC3659C+24↑j
                subq.w  #4,sp
                move.w  #1,-(sp)
                _GetCursor
                movea.l (sp)+,a0
                movea.l (a0),a0
                move.l  a0,-(sp)
                _SetCursor

loc_FFC365D8:                           ; CODE XREF: sub_FFC3659C+2A↑j
                unlk    a6
                movem.l (sp)+,d0-d4/a0-a3
                rts
; End of function sub_FFC3659C


; =============== S U B R O U T I N E =======================================


sub_FFC365E0:                           ; CODE XREF: sub_FFC361C6+5A↑p
                movem.l d0-d4/a0-a3,-(sp)
                pea     loc_FFC367F8(pc)
                move.l  a0,-(sp)
                _PlotIcon
                movem.l (sp)+,d0-d4/a0-a3
                rts
; End of function sub_FFC365E0

; ---------------------------------------------------------------------------
                dc.b $48 ; H
                dc.b $E7
                dc.b $F0
                dc.b $C0
                dc.b $2F ; /
                dc.b  $B
                dc.b $3F ; ?
                dc.b   0
                dc.b $48 ; H
                dc.b $6E ; n
                dc.b $FF
                dc.b $FE
                dc.b $48 ; H
                dc.b $6E ; n
                dc.b $FF
                dc.b $FA
                dc.b $48 ; H
                dc.b $6E ; n
                dc.b $FF
                dc.b $F2
                dc.b $A9
                dc.b $8D
                dc.b $2F ; /
                dc.b $2E ; .
                dc.b $FF
                dc.b $FA
                dc.b $A9
                dc.b $58 ; X
                dc.b $4C ; L
                dc.b $DF
                dc.b   3
                dc.b  $F
                dc.b $4E ; N
                dc.b $75 ; u

; =============== S U B R O U T I N E =======================================


sub_FFC36614:                           ; CODE XREF: sub_FFC35F08+1EE↑p
                movem.l d0-d3/a0-a2,-(sp)
                move.l  a3,-(sp)
                move.w  #4,-(sp)
                _HideDialogItem
                move.l  a3,-(sp)
                move.w  #5,-(sp)
                _HideDialogItem
                move.l  a3,-(sp)
                move.w  #6,-(sp)
                _HideDialogItem
                move.l  a3,-(sp)
                move.w  #7,-(sp)
                _HideDialogItem
                movem.l (sp)+,d0-d3/a0-a2
                rts
; End of function sub_FFC36614


; =============== S U B R O U T I N E =======================================


sub_FFC3663E:                           ; CODE XREF: sub_FFC35F08+13C↑p
                movem.l d0-d3/a0-a1,-(sp)
                move.w  d1,d3
                move.l  a3,-(sp)
                move.w  d0,-(sp)
                pea     -2(a6)
                pea     -6(a6)
                pea     -$E(a6)
                _GetDialogItem
                move.l  -6(a6),-(sp)
                move.w  d3,-(sp)
                _HiliteControl
                movem.l (sp)+,d0-d3/a0-a1
                rts
; End of function sub_FFC3663E


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC36664:                           ; CODE XREF: sub_FFC361C6+CE↑p
                                        ; sub_FFC361C6+222↑p

var_E           = -$E
var_6           = -6
var_2           = -2

                link    a6,#-$E
                movem.l d0-d3/a0-a2,-(sp)
                move.l  a3,-(sp)
                move.w  d0,-(sp)
                pea     var_2(a6)
                pea     var_6(a6)
                pea     var_E(a6)
                _GetDialogItem
                move.l  var_6(a6),-(sp)
                move.w  #1,-(sp)
                _HiliteControl
                movea.w #8,a0
                _Delay
                move.l  var_6(a6),-(sp)
                clr.w   -(sp)
                _HiliteControl
                movem.l (sp)+,d0-d3/a0-a2
                unlk    a6
                rts
; End of function sub_FFC36664


; =============== S U B R O U T I N E =======================================


sub_FFC3669E:                           ; CODE XREF: sub_FFC35F08+C4↑p
                movem.l d0/d3,-(sp)
                moveq   #0,d3
                move.b  (a2)+,d3
                beq.s   loc_FFC366C6
                move.l  a2,-(sp)
                move.l  d3,-(sp)
                move.l  d2,-(sp)
                _TESetText
                subq.w  #1,d3

loc_FFC366B2:                           ; CODE XREF: sub_FFC3669E+1A↓j
                move.b  $14(a4),(a2,d3.w)
                dbf     d3,loc_FFC366B2
                subq.w  #1,a2
                move.w  #7,d0
                bsr.w   sub_FFC36760

loc_FFC366C6:                           ; CODE XREF: sub_FFC3669E+8↑j
                movem.l (sp)+,d0/d3
                rts
; End of function sub_FFC3669E


; =============== S U B R O U T I N E =======================================


sub_FFC366CC:                           ; CODE XREF: sub_FFC35F08+212↑p
                movem.l d0-d3/a0-a2,-(sp)
                move.l  a3,-(sp)
                move.w  #4,-(sp)
                _ShowDialogItem
                move.l  a3,-(sp)
                move.w  #5,-(sp)
                _ShowDialogItem
                move.l  a3,-(sp)
                move.w  #6,-(sp)
                _ShowDialogItem
                move.l  a3,-(sp)
                move.w  #7,-(sp)
                _ShowDialogItem
                move.l  a3,-(sp)
                move.w  #7,-(sp)
                clr.w   -(sp)
                move.w  #$3E8,-(sp)
                _SelectDialogItemText
                movem.l (sp)+,d0-d3/a0-a2
                rts
; End of function sub_FFC366CC


; =============== S U B R O U T I N E =======================================


sub_FFC36704:                           ; CODE XREF: sub_FFC35F08+12C↑p
                                        ; sub_FFC35F08+292↑p
                movem.l d0-d3/a0-a2,-(sp)
                move.w  d0,d3
                move.l  a3,-(sp)
                move.w  d3,-(sp)
                pea     -2(a6)
                pea     -6(a6)
                pea     -$E(a6)
                _GetDialogItem
                move.l  a3,-(sp)
                move.w  d3,-(sp)
                clr.w   -(sp)
                move.w  #$3E8,-(sp)
                _SelectDialogItemText
                movem.l (sp)+,d0-d3/a0-a2
                rts
; End of function sub_FFC36704


; =============== S U B R O U T I N E =======================================


sub_FFC3672E:                           ; CODE XREF: sub_FFC35F08+15A↑p
                movem.l d0-d3/a0-a2,-(sp)
                _InitCursor
                movem.l (sp)+,d0-d3/a0-a2
                rts
; End of function sub_FFC3672E


; =============== S U B R O U T I N E =======================================


sub_FFC3673A:                           ; CODE XREF: sub_FFC35F08+14E↑p
                                        ; sub_FFC35F08+1EA↑p ...
                movem.l d0-d3/a0-a1,-(sp)
                move.w  d1,d3
                move.l  a3,-(sp)
                move.w  d0,-(sp)
                pea     -2(a6)
                pea     -6(a6)
                pea     -$E(a6)
                _GetDialogItem
                move.l  -6(a6),-(sp)
                move.w  d3,-(sp)
                _SetControlValue
                movem.l (sp)+,d0-d3/a0-a1
                rts
; End of function sub_FFC3673A


; =============== S U B R O U T I N E =======================================


sub_FFC36760:                           ; CODE XREF: sub_FFC35F08+64↑p
                                        ; sub_FFC35F08+84↑p ...
                movem.l d0-d3/a0-a2,-(sp)
                move.l  a3,-(sp)
                move.w  d0,-(sp)
                pea     -2(a6)
                pea     -6(a6)
                pea     -$E(a6)
                _GetDialogItem
                move.l  -6(a6),-(sp)
                move.l  a2,-(sp)
                _SetDialogItemText
                movem.l (sp)+,d0-d3/a0-a2
                rts
; End of function sub_FFC36760


; =============== S U B R O U T I N E =======================================


sub_FFC36784:                           ; CODE XREF: sub_FFC35F08+142↑p
                movem.l d0-d3/a0-a2,-(sp)
                subq.w  #4,sp
                neg.w   d1
                addi.w  #-$4019,d1
                move.w  d1,-(sp)
                _GetString
                movea.l (sp),a0
                tst.l   (sp)+
                beq.s   loc_FFC367A6
                _HLock
                movea.l (a0),a2
                move.w  #$A,d0
                bsr.s   sub_FFC36760
                _HUnlock

loc_FFC367A6:                           ; CODE XREF: sub_FFC36784+14↑j
                movem.l (sp)+,d0-d3/a0-a2
                rts
; End of function sub_FFC36784


; =============== S U B R O U T I N E =======================================


sub_FFC367AC:                           ; CODE XREF: sub_FFC36562+2E↑p
                movem.l d0-d1/a0/a2-a3,-(sp)
                move.l  a0,d0
                bne.s   loc_FFC367B8
                clr.b   (a1)+
                bra.s   loc_FFC367C6
; ---------------------------------------------------------------------------

loc_FFC367B8:                           ; CODE XREF: sub_FFC367AC+6↑j
                moveq   #0,d0
                move.b  (a0),d0
                addq.w  #1,d0
                movea.l a1,a3
                adda.w  d0,a3
                _BlockMove
                exg     a3,a1

loc_FFC367C6:                           ; CODE XREF: sub_FFC367AC+A↑j
                movem.l (sp)+,d0-d1/a0/a2-a3
                rts
; End of function sub_FFC367AC


; =============== S U B R O U T I N E =======================================


sub_FFC367CC:                           ; CODE XREF: sub_FFC361C6+14A↑p
                movem.l d0-d3/a0-a2,-(sp)
                movea.l $A0(a3),a2
                movea.l (a2),a2
                move.w  $20(a2),d0
                ext.l   d0
                move.l  d0,-(sp)
                move.w  $22(a2),d0
                ext.l   d0
                move.l  d0,-(sp)
                move.l  a1,-(sp)
                _TESetSelect
                movem.l (sp)+,d0-d3/a0-a2
                rts
; End of function sub_FFC367CC


; =============== S U B R O U T I N E =======================================


sub_FFC367F0:                           ; DATA XREF: sub_FFC35F08+A4↑o
                                        ; sub_FFC35F08+A8↑o
                move.b  d0,d0
                move.b  d0,d0
                move.b  d0,-(a0)
                move.b  d0,-(a0)

loc_FFC367F8:                           ; DATA XREF: sub_FFC35F08+72↑o
                                        ; sub_FFC365E0+4↑o
                ori.b   #5,d5
                ori.b   #$25,-(a5) ; '%'
                btst    d1,$2E2E(a6)
                move.l  ([$2050],$2F0),-(sp)
                rts
; End of function sub_FFC367F0


; =============== S U B R O U T I N E =======================================


sub_FFC3680E:                           ; CODE XREF: sub_FFC350B0+1B0↑p
                                        ; sub_FFC4CC00↓j
                move.l  ([$2050],$2F4),-(sp)
                rts
; End of function sub_FFC3680E

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC36820:                           ; DATA XREF: ROM:FFC06F28↑o

var_8           = -8
arg_0           =  8

                link    a6,#0
                movem.l d6-d7,-(sp)
                subq.l  #2,sp
                move.w  ($BA6).w,(sp)
                move.w  (sp)+,d7
                pea     ($A5).w
                subq.l  #2,sp
                move.w  d7,-(sp)
                move.l  #$82020006,-(sp)
                _ScriptUtil
                move.w  (sp)+,d0
                ext.l   d0
                move.l  d0,-(sp)
                moveq   #$4E,d0 ; 'N'
                move.l  d0,-(sp)
                jsr     sub_FFC368E0
                move.b  d0,d6
                move.b  d6,arg_0(a6)
                movem.l var_8(a6),d6-d7
                unlk    a6
                rts
; End of function sub_FFC36820


; =============== S U B R O U T I N E =======================================


sub_FFC3685E:                           ; CODE XREF: sub_FFC35F08+B4↑p
                movea.l ($2050).w,a1
                movea.l $2F8(a1),a1
                jmp     (a1)
; End of function sub_FFC3685E

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC36870:                           ; DATA XREF: ROM:FFC06F2C↑o

var_18          = -$18
var_C           = -$C
var_8           = -8
var_4           = -4
arg_2           =  $A
arg_6           =  $E
arg_B           =  $13

                link    a6,#-$C
                movem.l d6-d7/a4,-(sp)
                move.b  arg_B(a6),d6
                move.w  arg_2(a6),d7
                move.w  arg_6(a6),-(sp)
                moveq   #3,d0
                move.w  d0,-(sp)
                pea     var_C(a6)
                pea     var_8(a6)
                pea     var_4(a6)
                move.w  #$24,-(sp) ; '$'
                _Pack6                  ; International Utils
                tst.l   var_C(a6)
                beq.s   loc_FFC368D4
                tst.l   var_8(a6)
                ble.s   loc_FFC368D4
                tst.l   var_4(a6)
                blt.s   loc_FFC368D4
                movea.l var_C(a6),a0
                move.l  var_8(a6),d0
                asl.l   #5,d0
                movea.l d0,a4
                adda.l  (a0),a4
                cmp.w   2(a4),d7
                bgt.s   loc_FFC368D4
                ext.l   d7
                move.l  d7,d0
                addq.l  #2,d0
                adda.w  (a4,d0.l*2),a4
                moveq   #1,d0
                cmp.b   (a4),d0
                bne.s   loc_FFC368D4
                move.b  1(a4),d6

loc_FFC368D4:                           ; CODE XREF: sub_FFC36870+2E↑j
                                        ; sub_FFC36870+34↑j ...
                move.b  d6,d0
                movem.l var_18(a6),d6-d7/a4
                unlk    a6
                rts
; End of function sub_FFC36870


; =============== S U B R O U T I N E =======================================


sub_FFC368E0:                           ; CODE XREF: sub_FFC36820+2A↑p
                movea.l ($2050).w,a1
                movea.l $2FC(a1),a1
                jmp     (a1)
; End of function sub_FFC368E0

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC368F0:                           ; DATA XREF: ROM:FFC06F34↑o

arg_0           =  8
arg_4           =  $C
arg_8           =  $10

                link    a6,#0
                movem.l d2-d7/a2-a3,-(sp)
                movea.l arg_0(a6),a2
                movea.l (a2),a3
                jmp     loc_FFC3693A
; ---------------------------------------------------------------------------

loc_FFC36902:                           ; CODE XREF: sub_FFC368F0+4E↓j
                movea.l arg_8(a6),a1
                move.l  (a3),d0
                move.l  4(a3),d1
                bsr.s   sub_FFC36950
                move.l  d6,d4
                move.l  d7,d5
                moveq   #$10,d0

loc_FFC36914:                           ; CODE XREF: sub_FFC368F0+32↓j
                move.l  (a1)+,d2
                move.l  (a1)+,d3
                bsr.s   sub_FFC3698C
                eor.l   d6,d4
                subq.w  #1,d0
                beq.s   loc_FFC36924
                exg     d4,d5
                bra.s   loc_FFC36914
; ---------------------------------------------------------------------------

loc_FFC36924:                           ; CODE XREF: sub_FFC368F0+2E↑j
                move.l  d4,d2
                move.l  d5,d3
                lea     unk_FFC36C14(pc),a0
                jsr     sub_FFC36BE0
                move.l  d4,(a3)
                move.l  d5,4(a3)
                lea     8(a3),a3

loc_FFC3693A:                           ; CODE XREF: sub_FFC368F0+E↑j
                subq.l  #8,arg_4(a6)
                bpl.s   loc_FFC36902
                move.l  a3,(a2)
                movem.l (sp)+,d2-d7/a2-a3
                unlk    a6
                movea.l (sp)+,a0
                adda.w  #$C,sp
                jmp     (a0)
; End of function sub_FFC368F0


; =============== S U B R O U T I N E =======================================


sub_FFC36950:                           ; CODE XREF: sub_FFC368F0+1C↑p
                move.w  d1,d2
                move.w  d0,d4
                swap    d0
                swap    d1
                move.w  d1,d3
                move.w  d0,d5
                moveq   #0,d6
                moveq   #0,d7
                bsr.s   sub_FFC3696A
                ror.l   #1,d6
                ror.l   #1,d7
                bsr.s   sub_FFC3696A
                rts
; End of function sub_FFC36950


; =============== S U B R O U T I N E =======================================


sub_FFC3696A:                           ; CODE XREF: sub_FFC36950+10↑p
                                        ; sub_FFC36950+16↑p
                moveq   #7,d0

loc_FFC3696C:                           ; CODE XREF: sub_FFC3696A+1C↓j
                roxl.w  #1,d2
                roxl.l  #1,d7
                rol.l   #1,d7
                roxl.w  #1,d3
                roxl.l  #1,d7
                rol.l   #1,d7
                roxl.w  #1,d4
                roxl.l  #1,d7
                rol.l   #1,d7
                roxl.w  #1,d5
                roxl.l  #1,d7
                rol.l   #1,d7
                exg     d6,d7
                dbf     d0,loc_FFC3696C
                rts
; End of function sub_FFC3696A


; =============== S U B R O U T I N E =======================================


sub_FFC3698C:                           ; CODE XREF: sub_FFC368F0+28↑p
                movem.l d4-d5,-(sp)
                moveq   #8,d7
                moveq   #0,d6
                lea     unk_FFC369D4(pc),a0
                rol.l   #1,d5

loc_FFC3699A:                           ; CODE XREF: sub_FFC3698C+34↓j
                move.w  d5,d4
                eor.l   d3,d4
                andi.l  #$3F,d4 ; '?'
                move.b  (a0,d4.w),d4
                or.b    d4,d6
                ror.l   #4,d6
                subq.w  #1,d7
                beq.s   loc_FFC369C2
                ror.l   #4,d5
                adda.w  #$40,a0 ; '@'
                moveq   #6,d1

loc_FFC369B8:                           ; CODE XREF: sub_FFC3698C+32↓j
                lsr.w   #1,d2
                roxr.l  #1,d3
                subq.w  #1,d1
                bne.s   loc_FFC369B8
                bra.s   loc_FFC3699A
; ---------------------------------------------------------------------------

loc_FFC369C2:                           ; CODE XREF: sub_FFC3698C+22↑j
                lea     unk_FFC36CC2(pc),a0
                move.l  d6,d3
                jsr     sub_FFC36BE0
                move.l  d5,d6
                movem.l (sp)+,d4-d5
                rts
; End of function sub_FFC3698C

; ---------------------------------------------------------------------------
unk_FFC369D4:   dc.b  $D                ; DATA XREF: sub_FFC3698C+8↑o
                dc.b   1
                dc.b   2
                dc.b  $F
                dc.b   8
                dc.b  $D
                dc.b   4
                dc.b   8
                dc.b   6
                dc.b  $A
                dc.b  $F
                dc.b   3
                dc.b  $B
                dc.b   7
                dc.b   1
                dc.b   4
                dc.b  $A
                dc.b  $C
                dc.b   9
                dc.b   5
                dc.b   3
                dc.b   6
                dc.b  $E
                dc.b  $B
                dc.b   5
                dc.b   0
                dc.b   0
                dc.b  $E
                dc.b  $C
                dc.b   9
                dc.b   7
                dc.b   2
                dc.b   7
                dc.b   2
                dc.b  $B
                dc.b   1
                dc.b   4
                dc.b  $E
                dc.b   1
                dc.b   7
                dc.b   9
                dc.b   4
                dc.b  $C
                dc.b  $A
                dc.b  $E
                dc.b   8
                dc.b   2
                dc.b  $D
                dc.b   0
                dc.b  $F
                dc.b   6
                dc.b  $C
                dc.b  $A
                dc.b   9
                dc.b  $D
                dc.b   0
                dc.b  $F
                dc.b   3
                dc.b   3
                dc.b   5
                dc.b   5
                dc.b   6
                dc.b   8
                dc.b  $B
                dc.b   4
                dc.b  $D
                dc.b  $B
                dc.b   0
                dc.b   2
                dc.b  $B
                dc.b  $E
                dc.b   7
                dc.b  $F
                dc.b   4
                dc.b   0
                dc.b   9
                dc.b   8
                dc.b   1
                dc.b  $D
                dc.b  $A
                dc.b   3
                dc.b  $E
                dc.b  $C
                dc.b   3
                dc.b   9
                dc.b   5
                dc.b   7
                dc.b  $C
                dc.b   5
                dc.b   2
                dc.b  $A
                dc.b  $F
                dc.b   6
                dc.b   8
                dc.b   1
                dc.b   6
                dc.b   1
                dc.b   6
                dc.b   4
                dc.b  $B
                dc.b  $B
                dc.b  $D
                dc.b  $D
                dc.b   8
                dc.b  $C
                dc.b   1
                dc.b   3
                dc.b   4
                dc.b   7
                dc.b  $A
                dc.b  $E
                dc.b   7
                dc.b  $A
                dc.b   9
                dc.b  $F
                dc.b   5
                dc.b   6
                dc.b   0
                dc.b   8
                dc.b  $F
                dc.b   0
                dc.b  $E
                dc.b   5
                dc.b   2
                dc.b   9
                dc.b   3
                dc.b   2
                dc.b  $C
                dc.b  $C
                dc.b  $A
                dc.b   1
                dc.b  $F
                dc.b  $A
                dc.b   4
                dc.b  $F
                dc.b   2
                dc.b   9
                dc.b   7
                dc.b   2
                dc.b  $C
                dc.b   6
                dc.b   9
                dc.b   8
                dc.b   5
                dc.b   0
                dc.b   6
                dc.b  $D
                dc.b   1
                dc.b   3
                dc.b  $D
                dc.b   4
                dc.b  $E
                dc.b  $E
                dc.b   0
                dc.b   7
                dc.b  $B
                dc.b   5
                dc.b   3
                dc.b  $B
                dc.b   8
                dc.b   9
                dc.b   4
                dc.b  $E
                dc.b   3
                dc.b  $F
                dc.b   2
                dc.b   5
                dc.b  $C
                dc.b   2
                dc.b   9
                dc.b   8
                dc.b   5
                dc.b  $C
                dc.b  $F
                dc.b   3
                dc.b  $A
                dc.b   7
                dc.b  $B
                dc.b   0
                dc.b  $E
                dc.b   4
                dc.b   1
                dc.b  $A
                dc.b   7
                dc.b   1
                dc.b   6
                dc.b  $D
                dc.b   0
                dc.b  $B
                dc.b   8
                dc.b   6
                dc.b  $D
                dc.b   2
                dc.b  $E
                dc.b  $C
                dc.b  $B
                dc.b   4
                dc.b   2
                dc.b   1
                dc.b  $C
                dc.b   7
                dc.b   4
                dc.b  $A
                dc.b   7
                dc.b  $B
                dc.b  $D
                dc.b   6
                dc.b   1
                dc.b   8
                dc.b   5
                dc.b   5
                dc.b   0
                dc.b   3
                dc.b  $F
                dc.b  $F
                dc.b  $A
                dc.b  $D
                dc.b   3
                dc.b   0
                dc.b   9
                dc.b  $E
                dc.b   8
                dc.b   9
                dc.b   6
                dc.b   4
                dc.b  $B
                dc.b   2
                dc.b   8
                dc.b   1
                dc.b  $C
                dc.b  $B
                dc.b   7
                dc.b  $A
                dc.b   1
                dc.b  $D
                dc.b  $E
                dc.b   7
                dc.b   2
                dc.b   8
                dc.b  $D
                dc.b  $F
                dc.b   6
                dc.b   9
                dc.b  $F
                dc.b  $C
                dc.b   0
                dc.b   5
                dc.b   9
                dc.b   6
                dc.b  $A
                dc.b   3
                dc.b   4
                dc.b   0
                dc.b   5
                dc.b  $E
                dc.b   3
                dc.b   7
                dc.b  $D
                dc.b  $D
                dc.b   8
                dc.b  $E
                dc.b  $B
                dc.b   3
                dc.b   5
                dc.b   0
                dc.b   6
                dc.b   6
                dc.b  $F
                dc.b   9
                dc.b   0
                dc.b  $A
                dc.b   3
                dc.b   1
                dc.b   4
                dc.b   2
                dc.b   7
                dc.b   8
                dc.b   2
                dc.b   5
                dc.b  $C
                dc.b  $B
                dc.b   1
                dc.b  $C
                dc.b  $A
                dc.b   4
                dc.b  $E
                dc.b  $F
                dc.b   9
                dc.b  $A
                dc.b   3
                dc.b   6
                dc.b  $F
                dc.b   9
                dc.b   0
                dc.b   0
                dc.b   6
                dc.b  $C
                dc.b  $A
                dc.b  $B
                dc.b   1
                dc.b   7
                dc.b  $D
                dc.b  $D
                dc.b   8
                dc.b  $F
                dc.b   9
                dc.b   1
                dc.b   4
                dc.b   3
                dc.b   5
                dc.b  $E
                dc.b  $B
                dc.b   5
                dc.b  $C
                dc.b   2
                dc.b   7
                dc.b   8
                dc.b   2
                dc.b   4
                dc.b  $E
                dc.b  $A
                dc.b  $D
                dc.b   0
                dc.b   7
                dc.b   9
                dc.b   0
                dc.b  $E
                dc.b   9
                dc.b   6
                dc.b   3
                dc.b   3
                dc.b   4
                dc.b  $F
                dc.b   6
                dc.b   5
                dc.b  $A
                dc.b   1
                dc.b   2
                dc.b  $D
                dc.b   8
                dc.b  $C
                dc.b   5
                dc.b   7
                dc.b  $E
                dc.b  $B
                dc.b  $C
                dc.b   4
                dc.b  $B
                dc.b   2
                dc.b  $F
                dc.b   8
                dc.b   1
                dc.b  $D
                dc.b   1
                dc.b   6
                dc.b  $A
                dc.b   4
                dc.b  $D
                dc.b   9
                dc.b   0
                dc.b   8
                dc.b   6
                dc.b  $F
                dc.b   9
                dc.b   3
                dc.b   8
                dc.b   0
                dc.b   7
                dc.b  $B
                dc.b   4
                dc.b   1
                dc.b  $F
                dc.b   2
                dc.b  $E
                dc.b  $C
                dc.b   3
                dc.b   5
                dc.b  $B
                dc.b  $A
                dc.b   5
                dc.b  $E
                dc.b   2
                dc.b   7
                dc.b  $C
                dc.b  $F
                dc.b   3
                dc.b   1
                dc.b  $D
                dc.b   8
                dc.b   4
                dc.b  $E
                dc.b   7
                dc.b   6
                dc.b  $F
                dc.b  $B
                dc.b   2
                dc.b   3
                dc.b   8
                dc.b   4
                dc.b  $E
                dc.b   9
                dc.b  $C
                dc.b   7
                dc.b   0
                dc.b   2
                dc.b   1
                dc.b  $D
                dc.b  $A
                dc.b  $C
                dc.b   6
                dc.b   0
                dc.b   9
                dc.b   5
                dc.b  $B
                dc.b  $A
                dc.b   5
                dc.b   0
                dc.b  $D
                dc.b  $E
                dc.b   8
                dc.b   7
                dc.b  $A
                dc.b  $B
                dc.b   1
                dc.b  $A
                dc.b   3
                dc.b   4
                dc.b  $F
                dc.b  $D
                dc.b   4
                dc.b   1
                dc.b   2
                dc.b   5
                dc.b  $B
                dc.b   8
                dc.b   6
                dc.b  $C
                dc.b   7
                dc.b   6
                dc.b  $C
                dc.b   9
                dc.b   0
                dc.b   3
                dc.b   5
                dc.b   2
                dc.b  $E
                dc.b  $F
                dc.b   9
                dc.b  $E
                dc.b   0
                dc.b   4
                dc.b  $F
                dc.b  $D
                dc.b   7
                dc.b   1
                dc.b   4
                dc.b   2
                dc.b  $E
                dc.b  $F
                dc.b   2
                dc.b  $B
                dc.b  $D
                dc.b   8
                dc.b   1
                dc.b   3
                dc.b  $A
                dc.b  $A
                dc.b   6
                dc.b   6
                dc.b  $C
                dc.b  $C
                dc.b  $B
                dc.b   5
                dc.b   9
                dc.b   9
                dc.b   5
                dc.b   0
                dc.b   3
                dc.b   7
                dc.b   8
                dc.b   4
                dc.b  $F
                dc.b   1
                dc.b  $C
                dc.b  $E
                dc.b   8
                dc.b   8
                dc.b   2
                dc.b  $D
                dc.b   4
                dc.b   6
                dc.b   9
                dc.b   2
                dc.b   1
                dc.b  $B
                dc.b   7
                dc.b  $F
                dc.b   5
                dc.b  $C
                dc.b  $B
                dc.b   9
                dc.b   3
                dc.b   7
                dc.b  $E
                dc.b   3
                dc.b  $A
                dc.b  $A
                dc.b   0
                dc.b   5
                dc.b   6
                dc.b   0
                dc.b  $D

; =============== S U B R O U T I N E =======================================


sub_FFC36BD4:                           ; CODE XREF: sub_FFC34F40+5E↑p
                                        ; sub_FFC34FD0+66↑p
                movea.l ($2050).w,a1
                movea.l $304(a1),a1
                jmp     (a1)
; End of function sub_FFC36BD4

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================


sub_FFC36BE0:                           ; CODE XREF: sub_FFC368F0+3C↑p
                                        ; sub_FFC3698C+3C↑p ...
                moveq   #0,d1
                moveq   #0,d4
                moveq   #0,d5
                move.b  (a0)+,d1

loc_FFC36BE8:                           ; CODE XREF: sub_FFC36BE0+24↓j
                                        ; sub_FFC36BE0+30↓j
                rol.l   #1,d4
                btst    #5,d1
                beq.s   loc_FFC36BFA
                bclr    #5,d1
                btst    d1,d2
                bne.s   loc_FFC36BFE
                bra.s   loc_FFC36C02
; ---------------------------------------------------------------------------

loc_FFC36BFA:                           ; CODE XREF: sub_FFC36BE0+E↑j
                btst    d1,d3
                beq.s   loc_FFC36C02

loc_FFC36BFE:                           ; CODE XREF: sub_FFC36BE0+16↑j
                bset    #0,d4

loc_FFC36C02:                           ; CODE XREF: sub_FFC36BE0+18↑j
                                        ; sub_FFC36BE0+1C↑j
                move.b  (a0)+,d1
                bge.s   loc_FFC36BE8
                exg     d4,d5
                cmpi.b  #$FF,d1
                bne.s   locret_FFC36C12
                move.b  (a0)+,d1
                bra.s   loc_FFC36BE8
; ---------------------------------------------------------------------------

locret_FFC36C12:                        ; CODE XREF: sub_FFC36BE0+2C↑j
                rts
; End of function sub_FFC36BE0

; ---------------------------------------------------------------------------
unk_FFC36C14:   dc.b $18                ; DATA XREF: sub_FFC368F0+38↑o
                dc.b $38 ; 8
                dc.b $10
                dc.b $30 ; 0
                dc.b   8
                dc.b $28 ; (
                dc.b   0
                dc.b $20
                dc.b $19
                dc.b $39 ; 9
                dc.b $11
                dc.b $31 ; 1
                dc.b   9
                dc.b $29 ; )
                dc.b   1
                dc.b $21 ; !
                dc.b $1A
                dc.b $3A ; :
                dc.b $12
                dc.b $32 ; 2
                dc.b  $A
                dc.b $2A ; *
                dc.b   2
                dc.b $22 ; "
                dc.b $1B
                dc.b $3B ; ;
                dc.b $13
                dc.b $33 ; 3
                dc.b  $B
                dc.b $2B ; +
                dc.b   3
                dc.b $23 ; #
                dc.b $FF
                dc.b $1C
                dc.b $3C ; <
                dc.b $14
                dc.b $34 ; 4
                dc.b  $C
                dc.b $2C ; ,
                dc.b   4
                dc.b $24 ; $
                dc.b $1D
                dc.b $3D ; =
                dc.b $15
                dc.b $35 ; 5
                dc.b  $D
                dc.b $2D ; -
                dc.b   5
                dc.b $25 ; %
                dc.b $1E
                dc.b $3E ; >
                dc.b $16
                dc.b $36 ; 6
                dc.b  $E
                dc.b $2E ; .
                dc.b   6
                dc.b $26 ; &
                dc.b $1F
                dc.b $3F ; ?
                dc.b $17
                dc.b $37 ; 7
                dc.b  $F
                dc.b $2F ; /
                dc.b   7
                dc.b $27 ; '
                dc.b $FE
unk_FFC36C56:   dc.b   7                ; DATA XREF: sub_FFC36CF0+16↓o
                dc.b  $F
                dc.b $17
                dc.b $1F
                dc.b $27 ; '
                dc.b $2F ; /
                dc.b $37 ; 7
                dc.b $3F ; ?
                dc.b   6
                dc.b  $E
                dc.b $16
                dc.b $1E
                dc.b $26 ; &
                dc.b $2E ; .
                dc.b $36 ; 6
                dc.b $3E ; >
                dc.b   5
                dc.b  $D
                dc.b $15
                dc.b $1D
                dc.b $25 ; %
                dc.b $2D ; -
                dc.b $35 ; 5
                dc.b $3D ; =
                dc.b   4
                dc.b  $C
                dc.b $14
                dc.b $1C
                dc.b $FF
                dc.b   1
                dc.b   9
                dc.b $11
                dc.b $19
                dc.b $21 ; !
                dc.b $29 ; )
                dc.b $31 ; 1
                dc.b $39 ; 9
                dc.b   2
                dc.b  $A
                dc.b $12
                dc.b $1A
                dc.b $22 ; "
                dc.b $2A ; *
                dc.b $32 ; 2
                dc.b $3A ; :
                dc.b   3
                dc.b  $B
                dc.b $13
                dc.b $1B
                dc.b $23 ; #
                dc.b $2B ; +
                dc.b $33 ; 3
                dc.b $3B ; ;
                dc.b $24 ; $
                dc.b $2C ; ,
                dc.b $34 ; 4
                dc.b $3C ; <
                dc.b $FE
unk_FFC36C90:   dc.b $32 ; 2            ; DATA XREF: sub_FFC36CF0:loc_FFC36D3E↓o
                dc.b $2F ; /
                dc.b $35 ; 5
                dc.b $28 ; (
                dc.b $3F ; ?
                dc.b $3B ; ;
                dc.b $3D ; =
                dc.b $24 ; $
                dc.b $31 ; 1
                dc.b $3A ; :
                dc.b $2B ; +
                dc.b $36 ; 6
                dc.b $29 ; )
                dc.b $2D ; -
                dc.b $34 ; 4
                dc.b $3C ; <
                dc.b $FF
                dc.b $26 ; &
                dc.b $38 ; 8
                dc.b $30 ; 0
                dc.b $39 ; 9
                dc.b $25 ; %
                dc.b $2C ; ,
                dc.b $33 ; 3
                dc.b $3E ; >
                dc.b $13
                dc.b   8
                dc.b $1D
                dc.b $17
                dc.b  $D
                dc.b   5
                dc.b $1E
                dc.b $14
                dc.b   9
                dc.b  $F
                dc.b $1B
                dc.b  $C
                dc.b $10
                dc.b  $B
                dc.b $15
                dc.b   4
                dc.b $1A
                dc.b   7
                dc.b  $E
                dc.b $12
                dc.b  $A
                dc.b $18
                dc.b $1F
                dc.b $1C
                dc.b $FE
unk_FFC36CC2:   dc.b $10                ; DATA XREF: sub_FFC3698C:loc_FFC369C2↑o
                dc.b $19
                dc.b  $C
                dc.b  $B
                dc.b   3
                dc.b $14
                dc.b   4
                dc.b  $F
                dc.b $1F
                dc.b $11
                dc.b   9
                dc.b   6
                dc.b $1B
                dc.b  $E
                dc.b   1
                dc.b $16
                dc.b $1E
                dc.b $18
                dc.b   8
                dc.b $12
                dc.b   0
                dc.b   5
                dc.b $1D
                dc.b $17
                dc.b  $D
                dc.b $13
                dc.b   2
                dc.b $1A
                dc.b  $A
                dc.b $15
                dc.b $1C
                dc.b   7
                dc.b $FE
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC36CF0:                           ; DATA XREF: ROM:FFC06F30↑o

arg_0           =  8
arg_4           =  $C

                link    a6,#0
                movem.l d2-d5,-(sp)
                movea.l arg_0(a6),a1
                movea.l arg_4(a6),a0
                move.l  4(a0),d3
                move.l  (a0),d2
                lea     unk_FFC36C56(pc),a0
                jsr     sub_FFC36BE0
                lsl.l   #4,d4
                lsl.l   #4,d5
                move.l  d4,d2
                move.l  d5,d3
                move.w  #$C081,d0

loc_FFC36D1A:                           ; CODE XREF: sub_FFC36CF0+5C↓j
                lsl.w   #1,d0
                bcs.s   loc_FFC36D2E
                lsl.l   #1,d2
                bcc.s   loc_FFC36D26
                bset    #4,d2

loc_FFC36D26:                           ; CODE XREF: sub_FFC36CF0+30↑j
                lsl.l   #1,d3
                bcc.s   loc_FFC36D2E
                bset    #4,d3

loc_FFC36D2E:                           ; CODE XREF: sub_FFC36CF0+2C↑j
                                        ; sub_FFC36CF0+38↑j
                lsl.l   #1,d2
                bcc.s   loc_FFC36D36
                bset    #4,d2

loc_FFC36D36:                           ; CODE XREF: sub_FFC36CF0+40↑j
                lsl.l   #1,d3
                bcc.s   loc_FFC36D3E
                bset    #4,d3

loc_FFC36D3E:                           ; CODE XREF: sub_FFC36CF0+48↑j
                lea     unk_FFC36C90(pc),a0
                jsr     sub_FFC36BE0
                move.l  d4,(a1)+
                move.l  d5,(a1)+
                tst.w   d0
                bne.s   loc_FFC36D1A
                movem.l (sp)+,d2-d5
                unlk    a6
                movea.l (sp)+,a0
                addq.l  #8,sp
                jmp     (a0)
; End of function sub_FFC36CF0


; =============== S U B R O U T I N E =======================================


sub_FFC36D5A:                           ; CODE XREF: sub_FFC34F40+46↑p
                                        ; sub_FFC34FD0+54↑p
                movea.l ($2050).w,a1
                movea.l $300(a1),a1
                jmp     (a1)
; End of function sub_FFC36D5A

; ---------------------------------------------------------------------------