; test vertical scroll

	org $8000	
start:
	
	jp start_copy
	
return:
	ei
	
endless:
	jp endless

orig_Stack:	defw $0000
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	org #C000
data:
incbin "girl.bin"


end_of_data:



numberOflines:	defb 8
return_address:	defw $0000

jump equ $0e

; about 18304 t-states to 32 y columns 4 character rows
start_copy:

	;halt	;just temp
	di		;$C075
	
	ld (orig_Stack), sp; save our original stack
	
	;
	;#5FE8 is stack  at this point
	;
	
	;here we are setting 
	;our buffer address
	ld hl, data	;14t
	;push hl
	;here we are setting 
	;our output address
	
	;setup for counter and output addy
	exx
	ld hl, $4000 + jump	;14t
	;push hl
	exx

	ld a, 8
	ld i, a

loop00:
	call copyLine
	
update_loop00:
	ld sp, (orig_Stack)
	
	;update buffer position
	ld bc, $0E
	add hl, bc
	exx
	
	ld bc, $F2
	add hl, bc
	exx
	;ex af, af'

	ld a, i
	dec a
	ld i, a
	;ex af, af'
	
	jp nz, loop00
	;end block 00
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	;setup for counter and output addy
	exx
	ld hl, $4020 + jump	;14t
	exx
	ld a, 8
	ld i, a
	
loop01:
	call copyLine

update_loop01:
	ld sp, (orig_Stack)
	
	;update buffer position
	ld bc, $0E
	add hl, bc
	exx
	
	ld bc, $F2
	add hl, bc
	exx

	ld a, i
	dec a
	ld i, a
	
	jp nz, loop01
;end block 01

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	;setup for counter and output addy
	exx
	ld hl, $4040 + jump	;14t
	exx
	ld a, 8
	ld i, a
	
loop02:
	call copyLine

update_loop02:
	ld sp, (orig_Stack)
	
	;update buffer position
	ld bc, $0E
	add hl, bc
	exx
	
	ld bc, $F2
	add hl, bc
	exx

	ld a, i
	dec a
	ld i, a
	
	jp nz, loop02
;end block 02

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	;setup for counter and output addy
	exx
	ld hl, $4060 + jump	;14t
	exx
	ld a, 8
	ld i, a
	
loop03:
	call copyLine

update_loop03:
	ld sp, (orig_Stack)
	
	;update buffer position
	ld bc, $0E
	add hl, bc
	exx
	
	ld bc, $F2
	add hl, bc
	exx

	ld a, i
	dec a
	ld i, a
	
	jp nz, loop03
;end block 03

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	;setup for counter and output addy
	exx
	ld hl, $4080 + jump	;14t
	exx
	ld a, 8
	ld i, a
	
loop04:
	call copyLine

update_loop04:
	ld sp, (orig_Stack)
	
	;update buffer position
	ld bc, $0E
	add hl, bc
	exx
	
	ld bc, $F2
	add hl, bc
	exx

	ld a, i
	dec a
	ld i, a
	
	jp nz, loop04
;end block 04

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	;setup for counter and output addy
	exx
	ld hl, $40A0 + jump	;14t
	exx
	ld a, 8
	ld i, a
	
loop05:
	call copyLine

update_loop05:
	ld sp, (orig_Stack)
	
	;update buffer position
	ld bc, $0E
	add hl, bc
	exx
	
	ld bc, $F2
	add hl, bc
	exx

	ld a, i
	dec a
	ld i, a
	
	jp nz, loop05
;end block 05

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	;setup for counter and output addy
	exx
	ld hl, $40C0 + jump	;14t
	exx
	ld a, 8
	ld i, a
	
loop06:
	call copyLine

update_loop06:
	ld sp, (orig_Stack)
	
	;update buffer position
	ld bc, $0E
	add hl, bc
	exx
	
	ld bc, $F2
	add hl, bc
	exx

	ld a, i
	dec a
	ld i, a
	
	jp nz, loop06
;end block 06

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	;setup for counter and output addy
	exx
	ld hl, $40E0 + jump	;14t
	exx
	ld a, 8
	ld i, a
	
loop07:
	call copyLine

update_loop07:
	ld sp, (orig_Stack)
	
	;update buffer position
	ld bc, $0E
	add hl, bc
	exx
	
	ld bc, $F2
	add hl, bc
	exx

	ld a, i
	dec a
	ld i, a
	
	jp nz, loop07
;end block 07

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	;setup for counter and output addy
	exx
	ld hl, $4800 + jump	;14t
	exx
	ld a, 8
	ld i, a
	
loop08:
	call copyLine

update_loop08:
	ld sp, (orig_Stack)
	
	;update buffer position
	ld bc, $0E
	add hl, bc
	exx
	
	ld bc, $F2
	add hl, bc
	exx

	ld a, i
	dec a
	ld i, a
	
	jp nz, loop08
;end block 08

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	;setup for counter and output addy
	exx
	ld hl, $4820 + jump	;14t
	exx
	ld a, 8
	ld i, a
	
loop09:
	call copyLine

update_loop09:
	ld sp, (orig_Stack)
	
	;update buffer position
	ld bc, $0E
	add hl, bc
	exx
	
	ld bc, $F2
	add hl, bc
	exx

	ld a, i
	dec a
	ld i, a
	
	jp nz, loop09
;end block 09

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	;setup for counter and output addy
	exx
	ld hl, $4840 + jump	;14t
	exx
	ld a, 8
	ld i, a
	
loop10:
	call copyLine

update_loop10:
	ld sp, (orig_Stack)
	
	;update buffer position
	ld bc, $0E
	add hl, bc
	exx
	
	ld bc, $F2
	add hl, bc
	exx

	ld a, i
	dec a
	ld i, a
	
	jp nz, loop10
;end block 10

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	;setup for counter and output addy
	exx
	ld hl, $4860 + jump	;14t
	exx
	ld a, 8
	ld i, a
	
loop11:
	call copyLine

update_loop11:
	ld sp, (orig_Stack)
	
	;update buffer position
	ld bc, $0E
	add hl, bc
	exx
	
	ld bc, $F2
	add hl, bc
	exx

	ld a, i
	dec a
	ld i, a
	
	jp nz, loop11
;end block 11

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	;setup for counter and output addy
	exx
	ld hl, $4880 + jump	;14t
	exx
	ld a, 8
	ld i, a
	
loop12:
	call copyLine

update_loop12:
	ld sp, (orig_Stack)
	
	;update buffer position
	ld bc, $0E
	add hl, bc
	exx
	
	ld bc, $F2
	add hl, bc
	exx

	ld a, i
	dec a
	ld i, a
	
	jp nz, loop12
;end block 12

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	;setup for counter and output addy
	exx
	ld hl, $48A0 + jump	;14t
	exx
	ld a, 8
	ld i, a
	
loop13:
	call copyLine

update_loop13:
	ld sp, (orig_Stack)
	
	;update buffer position
	ld bc, $0E
	add hl, bc
	exx
	
	ld bc, $F2
	add hl, bc
	exx

	ld a, i
	dec a
	ld i, a
	
	jp nz, loop13
;end block 13

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	;setup for counter and output addy
	exx
	ld hl, $48C0 + jump	;14t
	exx
	ld a, 8
	ld i, a
	
loop14:
	call copyLine

update_loop14:
	ld sp, (orig_Stack)
	
	;update buffer position
	ld bc, $0E
	add hl, bc
	exx
	
	ld bc, $F2
	add hl, bc
	exx

	ld a, i
	dec a
	ld i, a
	
	jp nz, loop14
;end block 14

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	;setup for counter and output addy
	exx
	ld hl, $48E0 + jump	;14t
	exx
	ld a, 8
	ld i, a
	
loop15:
	call copyLine

update_loop15:
	ld sp, (orig_Stack)
	
	;update buffer position
	ld bc, $0E
	add hl, bc
	exx
	
	ld bc, $F2
	add hl, bc
	exx

	ld a, i
	dec a
	ld i, a
	
	jp nz, loop15
;end block 15

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	;setup for counter and output addy
	exx
	ld hl, $5000 + jump	;14t
	exx
	ld a, 8
	ld i, a
	
loop16:
	call copyLine

update_loop16:
	ld sp, (orig_Stack)
	
	;update buffer position
	ld bc, $0E
	add hl, bc
	exx
	
	ld bc, $F2
	add hl, bc
	exx

	ld a, i
	dec a
	ld i, a
	
	jp nz, loop16
;end block 16

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	;setup for counter and output addy
	exx
	ld hl, $5020 + jump	;14t
	exx
	ld a, 8
	ld i, a
	
loop17:
	call copyLine

update_loop17:
	ld sp, (orig_Stack)
	
	;update buffer position
	ld bc, $0E
	add hl, bc
	exx
	
	ld bc, $F2
	add hl, bc
	exx

	ld a, i
	dec a
	ld i, a
	
	jp nz, loop17
;end block 17

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	;setup for counter and output addy
	exx
	ld hl, $5040 + jump	;14t
	exx
	ld a, 8
	ld i, a
	
loop18:
	call copyLine

update_loop18:
	ld sp, (orig_Stack)
	
	;update buffer position
	ld bc, $0E
	add hl, bc
	exx
	
	ld bc, $F2
	add hl, bc
	exx

	ld a, i
	dec a
	ld i, a
	
	jp nz, loop18
;end block 18

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	;setup for counter and output addy
	exx
	ld hl, $5060 + jump	;14t
	exx
	ld a, 8
	ld i, a
	
loop19:
	call copyLine

update_loop19:
	ld sp, (orig_Stack)
	
	;update buffer position
	ld bc, $0E
	add hl, bc
	exx
	
	ld bc, $F2
	add hl, bc
	exx

	ld a, i
	dec a
	ld i, a
	
	jp nz, loop19
;end block 19

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	;setup for counter and output addy
	exx
	ld hl, $5080 + jump	;14t
	exx
	ld a, 8
	ld i, a
	
loop20:
	call copyLine

update_loop20:
	ld sp, (orig_Stack)
	
	;update buffer position
	ld bc, $0E
	add hl, bc
	exx
	
	ld bc, $F2
	add hl, bc
	exx

	ld a, i
	dec a
	ld i, a
	
	jp nz, loop20
;end block 20

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	;setup for counter and output addy
	exx
	ld hl, $50A0 + jump	;14t
	exx
	ld a, 8
	ld i, a
	
loop21:
	call copyLine

update_loop21:
	ld sp, (orig_Stack)
	
	;update buffer position
	ld bc, $0E
	add hl, bc
	exx
	
	ld bc, $F2
	add hl, bc
	exx

	ld a, i
	dec a
	ld i, a
	
	jp nz, loop21
;end block 21

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	;setup for counter and output addy
	exx
	ld hl, $50C0 + jump	;14t
	exx
	ld a, 8
	ld i, a
	
loop22:
	call copyLine

update_loop22:
	ld sp, (orig_Stack)
	
	;update buffer position
	ld bc, $0E
	add hl, bc
	exx
	
	ld bc, $F2
	add hl, bc
	exx

	ld a, i
	dec a
	ld i, a
	
	jp nz, loop22
;end block 22

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	;setup for counter and output addy
	exx
	ld hl, $50E0 + jump	;14t
	exx
	ld a, 8
	ld i, a
	
loop23:
	call copyLine

update_loop23:
	ld sp, (orig_Stack)
	
	;update buffer position
	ld bc, $0E
	add hl, bc
	exx
	
	ld bc, $F2
	add hl, bc
	exx

	ld a, i
	dec a
	ld i, a
	
	jp nz, loop23
;end block 23

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;need to find out what hl and 'hl are now
;HL = #C0E0	;in start of character block 2	good
;'HL = #480E
;problem at this point it's in the 2nd third
;14th character position
;need to subtract or just put in the new number




















back_to_main:
	ld sp, (orig_Stack)
	jp return
	



;ldi for 14 bits is 224t
;pop/push 14 bits is 163t 
copyLine:
	
	pop iy ;store the return address
	
	
	
	;ld sp, $C000
	ld sp, hl	;6t
	pop af		;10t
	pop bc		;10t
	pop de		;10t
	pop ix		;10t
	exx			;4t
	ex af, af'	;4t
	pop af		;10t
	pop bc		;10t
	pop de		;10t
	;84T
	
	
	;stack is at #C00E
	;=118t
	;hl is still at #C000
	;ld de, $1E
	;add hl, de

	;ld sp, $400E
	ld sp, hl	;6t
	push de		;11t
	push bc		;11t
	push af		;11t
	exx			;4t
	ex af, af'	;4t
	push ix		;11t
	push de		;11t
	push bc		;11t
	push af		;11t
	;=91t

	;;at this point we can now mess with the registers
	;hl is now pointed to buffer
	ld bc, $0E	;10t	amount to add to buffer
	add hl, bc	;11t	perform addition
	;now buffer is
	;#C00E
	
	
	exx			;4t	swap out and perform on the screen address
	ld bc, $0E	;10t	amount to add to buffer
	add hl, bc	;11t	perform addition
	exx			;4t	swap back from shadow registers
	;=50t
	
	;;here 	hl = C00E
	;; 		'hl = 401C

	;1/2 line
	
	
	ld sp, hl	;6t
	pop af		;10t
	pop bc		;10t
	pop de		;10t
	pop ix		;10t
	exx			;4t
	ex af, af'	;4t
	pop af		;10t
	pop bc		;10t
	pop de		;10t
	;84T
	
	;stack is at #C00E
	ld sp, hl	;6t
	push de		;11t
	push bc		;11t
	push af		;11t
	exx			;4t
	ex af, af'	;4t
	push ix		;11t
	push de		;11t
	push bc		;11t
	push af		;11t
	;=91t
;jp restore_original_stack
jp (iy);our return address is in IY

end_of_routine:
