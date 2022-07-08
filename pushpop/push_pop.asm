; test vertical scroll

;;sevenup
;gfx
;x char
;char line
;y char
; mask
; frame

; interleave = line

	org $8000	
start:
	
	jp start_copy
	
return:
	ei
	
endless:
	jp endless


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	org #C000
data:
incbin "girl.bin"








end_of_data:



numberOflines:	defb 8
orig_Stack:		defw $0000
return_address:	defw $0000
stack_control: 	defw $0000
junk_stack:		defs $20

jump equ $0c	;constant number of bytes we copy 12

; about 18304 t-states to 32 y columns 4 character rows
start_copy:

	halt	;just temp
	di		;$C075
	
	ld (orig_Stack), sp	; save our original stack
	ld ix, (orig_Stack)	;ix now holds our original stack
	
	;
	;#5FE8 is stack  at this point
	;
	
	;here we are setting 
	;our buffer address
	ld hl, data	;14t
	;here we are setting 
	;our output address
	exx
	ld hl, $4000 + jump	;14t
	;== $400e
	exx
	; now hl and 'hl hold our buffer and screen stacks
	
	;setup for counter
	ld a, 8
	ld i, a 			;(i of ir holds our counter)

loop00:
	call copyLine
	
	;coming back it is in shadow registers with screen
	
	ld sp, ix
	;back to our original stack
	
	;move down to next line
	
	;working on screen address
	;add $e4 (228) to reach next line
	ld bc, $f0  ;<<<<<good
	add hl, bc
	;now at $410C
	
	;now lets work on the buffer
	exx			;4t
	ld bc, $04
	add hl, bc
	;ntb $c01c

	
	;;;;;;;;;;
	;decrease our loop
	ld a, i		;9t
	dec a		;4t
	ld i, a		;9t
	jp nz, loop00

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	;here we are setting 
	;our buffer address
	;ld hl, data	;14t
	;here we are setting 
	;our output address
	exx
	ld hl, $4020 + jump	;14t
	;== $400e
	exx
	; now hl and 'hl hold our buffer and screen stacks
	
	;setup for counter
	ld a, 8
	ld i, a 			;(i of ir holds our counter)

loop01:
	call copyLine
	
	;coming back it is in shadow registers with screen
	
	ld sp, ix
	;back to our original stack
	
	;move down to next line
	
	;working on screen address
	;add $e4 (228) to reach next line
	ld bc, $f0  ;<<<<<good
	add hl, bc
	;now at $410C
	
	;now lets work on the buffer
	exx			;4t
	ld bc, $04
	add hl, bc
	;ntb $c01c
	

	;;;;;;;;;;
	;decrease our loop
	ld a, i		;9t
	dec a		;4t
	ld i, a		;9t
	jp nz, loop01

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	;here we are setting 
	;our buffer address
	;ld hl, data	;14t
	;here we are setting 
	;our output address
	exx
	ld hl, $4040 + jump	;14t
	;== $400e
	exx
	; now hl and 'hl hold our buffer and screen stacks
	
	;setup for counter
	ld a, 8
	ld i, a 			;(i of ir holds our counter)

loop02:
	call copyLine
	
	;coming back it is in shadow registers with screen
	
	ld sp, ix
	;back to our original stack
	
	;move down to next line
	
	;working on screen address
	;add $e4 (228) to reach next line
	ld bc, $f0  ;<<<<<good
	add hl, bc
	;now at $410C
	
	;now lets work on the buffer
	exx			;4t
	ld bc, $04
	add hl, bc
	;ntb $c01c

	;;;;;;;;;;
	;decrease our loop
	ld a, i		;9t
	dec a		;4t
	ld i, a		;9t
	jp nz, loop02

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	;here we are setting 
	;our buffer address
	;ld hl, data	;14t
	;here we are setting 
	;our output address
	exx
	ld hl, $4060 + jump	;14t
	;== $400e
	exx
	; now hl and 'hl hold our buffer and screen stacks
	
	;setup for counter
	ld a, 8
	ld i, a 			;(i of ir holds our counter)

loop03:
	call copyLine
	
	;coming back it is in shadow registers with screen
	
	ld sp, ix
	;back to our original stack
	
	;move down to next line
	
	;working on screen address
	;add $e4 (228) to reach next line
	ld bc, $f0  ;<<<<<good
	add hl, bc
	;now at $410C
	
	;now lets work on the buffer
	exx			;4t
	ld bc, $04
	add hl, bc
	;ntb $c01c

	;;;;;;;;;;
	;decrease our loop
	ld a, i		;9t
	dec a		;4t
	ld i, a		;9t
	jp nz, loop03

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	;here we are setting 
	;our buffer address
	;ld hl, data	;14t
	;here we are setting 
	;our output address
	exx
	ld hl, $4080 + jump	;14t
	;== $400e
	exx
	; now hl and 'hl hold our buffer and screen stacks
	
	;setup for counter
	ld a, 8
	ld i, a 			;(i of ir holds our counter)

loop04:
	call copyLine
	
	;coming back it is in shadow registers with screen
	
	ld sp, ix
	;back to our original stack
	
	;move down to next line
	
	;working on screen address
	;add $e4 (228) to reach next line
	ld bc, $f0  ;<<<<<good
	add hl, bc
	;now at $410C
	
	;now lets work on the buffer
	exx			;4t
	ld bc, $04
	add hl, bc
	;ntb $c01c

	;;;;;;;;;;
	;decrease our loop
	ld a, i		;9t
	dec a		;4t
	ld i, a		;9t
	jp nz, loop04

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	;here we are setting 
	;our buffer address
	;ld hl, data	;14t
	;here we are setting 
	;our output address
	exx
	ld hl, $40A0 + jump	;14t
	;== $400e
	exx
	; now hl and 'hl hold our buffer and screen stacks
	
	;setup for counter
	ld a, 8
	ld i, a 			;(i of ir holds our counter)

loop05:
	call copyLine
	
	;coming back it is in shadow registers with screen
	
	ld sp, ix
	;back to our original stack
	
	;move down to next line
	
	;working on screen address
	;add $e4 (228) to reach next line
	ld bc, $f0  ;<<<<<good
	add hl, bc
	;now at $410C
	
	;now lets work on the buffer
	exx			;4t
	ld bc, $04
	add hl, bc
	;ntb $c01c

	;;;;;;;;;;
	;decrease our loop
	ld a, i		;9t
	dec a		;4t
	ld i, a		;9t
	jp nz, loop05

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	;here we are setting 
	;our buffer address
	;ld hl, data	;14t
	;here we are setting 
	;our output address
	exx
	ld hl, $40C0 + jump	;14t
	;== $400e
	exx
	; now hl and 'hl hold our buffer and screen stacks
	
	;setup for counter
	ld a, 8
	ld i, a 			;(i of ir holds our counter)

loop06:
	call copyLine
	
	;coming back it is in shadow registers with screen
	
	ld sp, ix
	;back to our original stack
	
	;move down to next line
	
	;working on screen address
	;add $e4 (228) to reach next line
	ld bc, $f0  ;<<<<<good
	add hl, bc
	;now at $410C
	
	;now lets work on the buffer
	exx			;4t
	ld bc, $04
	add hl, bc
	;ntb $c01c

	;;;;;;;;;;
	;decrease our loop
	ld a, i		;9t
	dec a		;4t
	ld i, a		;9t
	jp nz, loop06

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	;here we are setting 
	;our buffer address
	;ld hl, data	;14t
	;here we are setting 
	;our output address
	exx
	ld hl, $40E0 + jump	;14t
	;== $400e
	exx
	; now hl and 'hl hold our buffer and screen stacks
	
	;setup for counter
	ld a, 8
	ld i, a 			;(i of ir holds our counter)

loop07:
	call copyLine
	
	;coming back it is in shadow registers with screen
	
	ld sp, ix
	;back to our original stack
	
	;move down to next line
	
	;working on screen address
	;add $e4 (228) to reach next line
	ld bc, $f0  ;<<<<<good
	add hl, bc
	;now at $410C
	
	;now lets work on the buffer
	exx			;4t
	ld bc, $04
	add hl, bc
	;ntb $c01c

	;;;;;;;;;;
	;decrease our loop
	ld a, i		;9t
	dec a		;4t
	ld i, a		;9t
	jp nz, loop07

;;;;;;;;;;;;;;;;;;;
;end first third
;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	;here we are setting 
	;our buffer address
	;ld hl, data	;14t
	;here we are setting 
	;our output address
	exx
	ld hl, $4800 + jump	;14t
	;== $400e
	exx
	; now hl and 'hl hold our buffer and screen stacks
	
	;setup for counter
	ld a, 8
	ld i, a 			;(i of ir holds our counter)

loop08:
	call copyLine
	
	;coming back it is in shadow registers with screen
	
	ld sp, ix
	;back to our original stack
	
	;move down to next line
	
	;working on screen address
	;add $e4 (228) to reach next line
	ld bc, $f0  ;<<<<<good
	add hl, bc
	;now at $410C
	
	;now lets work on the buffer
	exx			;4t
	ld bc, $04
	add hl, bc
	;ntb $c01c

	;;;;;;;;;;
	;decrease our loop
	ld a, i		;9t
	dec a		;4t
	ld i, a		;9t
	jp nz, loop08

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	;here we are setting 
	;our buffer address
	;ld hl, data	;14t
	;here we are setting 
	;our output address
	exx
	ld hl, $4820 + jump	;14t
	;== $400e
	exx
	; now hl and 'hl hold our buffer and screen stacks
	
	;setup for counter
	ld a, 8
	ld i, a 			;(i of ir holds our counter)

loop09:
	call copyLine
	
	;coming back it is in shadow registers with screen
	
	ld sp, ix
	;back to our original stack
	
	;move down to next line
	
	;working on screen address
	;add $e4 (228) to reach next line
	ld bc, $f0  ;<<<<<good
	add hl, bc
	;now at $410C
	
	;now lets work on the buffer
	exx			;4t
	ld bc, $04
	add hl, bc
	;ntb $c01c

	;;;;;;;;;;
	;decrease our loop
	ld a, i		;9t
	dec a		;4t
	ld i, a		;9t
	jp nz, loop09

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	;here we are setting 
	;our buffer address
	;ld hl, data	;14t
	;here we are setting 
	;our output address
	exx
	ld hl, $4840 + jump	;14t
	;== $400e
	exx
	; now hl and 'hl hold our buffer and screen stacks
	
	;setup for counter
	ld a, 8
	ld i, a 			;(i of ir holds our counter)

loop10:
	call copyLine
	
	;coming back it is in shadow registers with screen
	
	ld sp, ix
	;back to our original stack
	
	;move down to next line
	
	;working on screen address
	;add $e4 (228) to reach next line
	ld bc, $f0  ;<<<<<good
	add hl, bc
	;now at $410C
	
	;now lets work on the buffer
	exx			;4t
	ld bc, $04
	add hl, bc
	;ntb $c01c

	;;;;;;;;;;
	;decrease our loop
	ld a, i		;9t
	dec a		;4t
	ld i, a		;9t
	jp nz, loop10

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	;here we are setting 
	;our buffer address
	;ld hl, data	;14t
	;here we are setting 
	;our output address
	exx
	ld hl, $4860 + jump	;14t
	;== $400e
	exx
	; now hl and 'hl hold our buffer and screen stacks
	
	;setup for counter
	ld a, 8
	ld i, a 			;(i of ir holds our counter)

loop11:
	call copyLine
	
	;coming back it is in shadow registers with screen
	
	ld sp, ix
	;back to our original stack
	
	;move down to next line
	
	;working on screen address
	;add $e4 (228) to reach next line
	ld bc, $f0  ;<<<<<good
	add hl, bc
	;now at $410C
	
	;now lets work on the buffer
	exx			;4t
	ld bc, $04
	add hl, bc
	;ntb $c01c

	;;;;;;;;;;
	;decrease our loop
	ld a, i		;9t
	dec a		;4t
	ld i, a		;9t
	jp nz, loop11

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	;here we are setting 
	;our buffer address
	;ld hl, data	;14t
	;here we are setting 
	;our output address
	exx
	ld hl, $4880 + jump	;14t
	;== $400e
	exx
	; now hl and 'hl hold our buffer and screen stacks
	
	;setup for counter
	ld a, 8
	ld i, a 			;(i of ir holds our counter)

loop12:
	call copyLine
	
	;coming back it is in shadow registers with screen
	
	ld sp, ix
	;back to our original stack
	
	;move down to next line
	
	;working on screen address
	;add $e4 (228) to reach next line
	ld bc, $f0  ;<<<<<good
	add hl, bc
	;now at $410C
	
	;now lets work on the buffer
	exx			;4t
	ld bc, $04
	add hl, bc
	;ntb $c01c

	;;;;;;;;;;
	;decrease our loop
	ld a, i		;9t
	dec a		;4t
	ld i, a		;9t
	jp nz, loop12

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	;here we are setting 
	;our buffer address
	;ld hl, data	;14t
	;here we are setting 
	;our output address
	exx
	ld hl, $48A0 + jump	;14t
	;== $400e
	exx
	; now hl and 'hl hold our buffer and screen stacks
	
	;setup for counter
	ld a, 8
	ld i, a 			;(i of ir holds our counter)

loop13:
	call copyLine
	
	;coming back it is in shadow registers with screen
	
	ld sp, ix
	;back to our original stack
	
	;move down to next line
	
	;working on screen address
	;add $e4 (228) to reach next line
	ld bc, $f0  ;<<<<<good
	add hl, bc
	;now at $410C
	
	;now lets work on the buffer
	exx			;4t
	ld bc, $04
	add hl, bc
	;ntb $c01c

	;;;;;;;;;;
	;decrease our loop
	ld a, i		;9t
	dec a		;4t
	ld i, a		;9t
	jp nz, loop13

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	;here we are setting 
	;our buffer address
	;ld hl, data	;14t
	;here we are setting 
	;our output address
	exx
	ld hl, $48C0 + jump	;14t
	;== $400e
	exx
	; now hl and 'hl hold our buffer and screen stacks
	
	;setup for counter
	ld a, 8
	ld i, a 			;(i of ir holds our counter)

loop14:
	call copyLine
	
	;coming back it is in shadow registers with screen
	
	ld sp, ix
	;back to our original stack
	
	;move down to next line
	
	;working on screen address
	;add $e4 (228) to reach next line
	ld bc, $f0  ;<<<<<good
	add hl, bc
	;now at $410C
	
	;now lets work on the buffer
	exx			;4t
	ld bc, $04
	add hl, bc
	;ntb $c01c

	;;;;;;;;;;
	;decrease our loop
	ld a, i		;9t
	dec a		;4t
	ld i, a		;9t
	jp nz, loop14
	
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	;here we are setting 
	;our buffer address
	;ld hl, data	;14t
	;here we are setting 
	;our output address
	exx
	ld hl, $48E0 + jump	;14t
	;== $400e
	exx
	; now hl and 'hl hold our buffer and screen stacks
	
	;setup for counter
	ld a, 8
	ld i, a 			;(i of ir holds our counter)

loop15:
	call copyLine
	
	;coming back it is in shadow registers with screen
	
	ld sp, ix
	;back to our original stack
	
	;move down to next line
	
	;working on screen address
	;add $e4 (228) to reach next line
	ld bc, $f0  ;<<<<<good
	add hl, bc
	;now at $410C
	
	;now lets work on the buffer
	exx			;4t
	ld bc, $04
	add hl, bc
	;ntb $c01c

	;;;;;;;;;;
	;decrease our loop
	ld a, i		;9t
	dec a		;4t
	ld i, a		;9t
	jp nz, loop15

;;;;;;;;;;;;;;;;;;;
;end second third
;;;;;;;;;;;;;;;;;;;

	
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	;here we are setting 
	;our buffer address
	;ld hl, data	;14t
	;here we are setting 
	;our output address
	exx
	ld hl, $5000 + jump	;14t
	;== $400e
	exx
	; now hl and 'hl hold our buffer and screen stacks
	
	;setup for counter
	ld a, 8
	ld i, a 			;(i of ir holds our counter)

loop16:
	call copyLine
	
	;coming back it is in shadow registers with screen
	
	ld sp, ix
	;back to our original stack
	
	;move down to next line
	
	;working on screen address
	;add $e4 (228) to reach next line
	ld bc, $f0  ;<<<<<good
	add hl, bc
	;now at $410C
	
	;now lets work on the buffer
	exx			;4t
	ld bc, $04
	add hl, bc
	;ntb $c01c

	;;;;;;;;;;
	;decrease our loop
	ld a, i		;9t
	dec a		;4t
	ld i, a		;9t
	jp nz, loop16

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	;here we are setting 
	;our buffer address
	;ld hl, data	;14t
	;here we are setting 
	;our output address
	exx
	ld hl, $5020 + jump	;14t
	;== $400e
	exx
	; now hl and 'hl hold our buffer and screen stacks
	
	;setup for counter
	ld a, 8
	ld i, a 			;(i of ir holds our counter)

loop17:
	call copyLine
	
	;coming back it is in shadow registers with screen
	
	ld sp, ix
	;back to our original stack
	
	;move down to next line
	
	;working on screen address
	;add $e4 (228) to reach next line
	ld bc, $f0  ;<<<<<good
	add hl, bc
	;now at $410C
	
	;now lets work on the buffer
	exx			;4t
	ld bc, $04
	add hl, bc
	;ntb $c01c

	;;;;;;;;;;
	;decrease our loop
	ld a, i		;9t
	dec a		;4t
	ld i, a		;9t
	jp nz, loop17

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	;here we are setting 
	;our buffer address
	;ld hl, data	;14t
	;here we are setting 
	;our output address
	exx
	ld hl, $5040 + jump	;14t
	;== $400e
	exx
	; now hl and 'hl hold our buffer and screen stacks
	
	;setup for counter
	ld a, 8
	ld i, a 			;(i of ir holds our counter)

loop18:
	call copyLine
	
	;coming back it is in shadow registers with screen
	
	ld sp, ix
	;back to our original stack
	
	;move down to next line
	
	;working on screen address
	;add $e4 (228) to reach next line
	ld bc, $f0  ;<<<<<good
	add hl, bc
	;now at $410C
	
	;now lets work on the buffer
	exx			;4t
	ld bc, $04
	add hl, bc
	;ntb $c01c

	;;;;;;;;;;
	;decrease our loop
	ld a, i		;9t
	dec a		;4t
	ld i, a		;9t
	jp nz, loop18

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	;here we are setting 
	;our buffer address
	;ld hl, data	;14t
	;here we are setting 
	;our output address
	exx
	ld hl, $5060 + jump	;14t
	;== $400e
	exx
	; now hl and 'hl hold our buffer and screen stacks
	
	;setup for counter
	ld a, 8
	ld i, a 			;(i of ir holds our counter)

loop19:
	call copyLine
	
	;coming back it is in shadow registers with screen
	
	ld sp, ix
	;back to our original stack
	
	;move down to next line
	
	;working on screen address
	;add $e4 (228) to reach next line
	ld bc, $f0  ;<<<<<good
	add hl, bc
	;now at $410C
	
	;now lets work on the buffer
	exx			;4t
	ld bc, $04
	add hl, bc
	;ntb $c01c

	;;;;;;;;;;
	;decrease our loop
	ld a, i		;9t
	dec a		;4t
	ld i, a		;9t
	jp nz, loop19

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	;here we are setting 
	;our buffer address
	;ld hl, data	;14t
	;here we are setting 
	;our output address
	exx
	ld hl, $5080 + jump	;14t
	;== $400e
	exx
	; now hl and 'hl hold our buffer and screen stacks
	
	;setup for counter
	ld a, 8
	ld i, a 			;(i of ir holds our counter)

loop20:
	call copyLine
	
	;coming back it is in shadow registers with screen
	
	ld sp, ix
	;back to our original stack
	
	;move down to next line
	
	;working on screen address
	;add $e4 (228) to reach next line
	ld bc, $f0  ;<<<<<good
	add hl, bc
	;now at $410C
	
	;now lets work on the buffer
	exx			;4t
	ld bc, $04
	add hl, bc
	;ntb $c01c

	;;;;;;;;;;
	;decrease our loop
	ld a, i		;9t
	dec a		;4t
	ld i, a		;9t
	jp nz, loop20

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	;here we are setting 
	;our buffer address
	;ld hl, data	;14t
	;here we are setting 
	;our output address
	exx
	ld hl, $50A0 + jump	;14t
	;== $400e
	exx
	; now hl and 'hl hold our buffer and screen stacks
	
	;setup for counter
	ld a, 8
	ld i, a 			;(i of ir holds our counter)

loop21:
	call copyLine
	
	;coming back it is in shadow registers with screen
	
	ld sp, ix
	;back to our original stack
	
	;move down to next line
	
	;working on screen address
	;add $e4 (228) to reach next line
	ld bc, $f0  ;<<<<<good
	add hl, bc
	;now at $410C
	
	;now lets work on the buffer
	exx			;4t
	ld bc, $04
	add hl, bc
	;ntb $c01c

	;;;;;;;;;;
	;decrease our loop
	ld a, i		;9t
	dec a		;4t
	ld i, a		;9t
	jp nz, loop21

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	;here we are setting 
	;our buffer address
	;ld hl, data	;14t
	;here we are setting 
	;our output address
	exx
	ld hl, $50C0 + jump	;14t
	;== $400e
	exx
	; now hl and 'hl hold our buffer and screen stacks
	
	;setup for counter
	ld a, 8
	ld i, a 			;(i of ir holds our counter)

loop22:
	call copyLine
	
	;coming back it is in shadow registers with screen
	
	ld sp, ix
	;back to our original stack
	
	;move down to next line
	
	;working on screen address
	;add $e4 (228) to reach next line
	ld bc, $f0  ;<<<<<good
	add hl, bc
	;now at $410C
	
	;now lets work on the buffer
	exx			;4t
	ld bc, $04
	add hl, bc
	;ntb $c01c

	;;;;;;;;;;
	;decrease our loop
	ld a, i		;9t
	dec a		;4t
	ld i, a		;9t
	jp nz, loop22
	
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	;here we are setting 
	;our buffer address
	;ld hl, data	;14t
	;here we are setting 
	;our output address
	exx
	ld hl, $50E0 + jump	;14t
	;== $400e
	exx
	; now hl and 'hl hold our buffer and screen stacks
	
	;setup for counter
	ld a, 8
	ld i, a 			;(i of ir holds our counter)

loop23:
	call copyLine
	
	;coming back it is in shadow registers with screen
	
	ld sp, ix
	;back to our original stack
	
	;move down to next line
	
	;working on screen address
	;add $e4 (228) to reach next line
	ld bc, $f0  ;<<<<<good
	add hl, bc
	;now at $410C
	
	;now lets work on the buffer
	exx			;4t
	ld bc, $04
	add hl, bc
	;ntb $c01c

	;;;;;;;;;;
	;decrease our loop
	ld a, i		;9t
	dec a		;4t
	ld i, a		;9t
	jp nz, loop23

;;;;;;;;;;;;;;;;;;;
;end third third
;;;;;;;;;;;;;;;;;;;
	
	
ftw:
	nop	;JUST A GOOFY MARKER
	nop	;to be removed
jp ftw
	

back_to_main:
	ld sp, (orig_Stack)
	jp return
	



;ldi for 14 bits is 224t
;pop/push 14 bits is 163t


;entering into and used in this routine
;iy used for our return address
;ix holds our original stack
;hl holds our buffer address
;'hl holds our screen address

copyLine:
	
	pop iy 		;14t
	;store the return address
	;==14t
	
	ld sp, hl	;6t
	pop af		;10t	2
	pop bc		;10t	4
	pop de		;10t	6
	exx			;4t
	ex af, af'	;4t
	pop af		;10t	8
	pop bc		;10t	10
	pop de		;10t	12
	;12 bytes copied
	;==74t
	
	;stack is at #C00C
	;=118t
	;hl is still at #C000

	ld sp, hl	;6t
	push de		;11t	2
	push bc		;11t	4
	push af		;11t	6
	exx			;4t
	ex af, af'	;4t
	push de		;11t	8
	push bc		;11t	10
	push af		;11t	12
	;12 bytes pasted
	;==80t
	
	ld sp, ix	;10t
	;jump back to original stack
	;we can now mess with the registers	
	;hl is now pointed to buffer
	;need to move the stack ahead 12 bytes
	ld bc, $0C	;10t
	;amount to add to buffer
	add hl, bc	;11t
	;perform addition
	;now buffer is #C00C
	
	;swap to shadow registers
	exx			;4t	
	;swap and work on the screen address
	;hl is now pointed to screen
	;need to move the stack ahead 12 bytes
	ld bc, $0C	;10t
	;amount to add to buffer
	add hl, bc	;11t
	;perform addition
	;now screen is #400C
	
	exx			;4t
	;swap back from shadow registers
	;now we are in buffer
	;==60t
;;;;;;;;;;;;;;;
	
	
	ld sp, hl	;6t
	pop af		;10t
	pop bc		;10t
	pop de		;10t
	exx			;4t
	ex af, af'	;4t
	pop af		;10t
	pop bc		;10t
	pop de		;10t
	;12 bytes copied
	;==74t
	
	;stack is at #C00E
	ld sp, hl	;6t
	push de		;11t
	push bc		;11t
	push af		;11t
	exx			;4t
	ex af, af'	;4t
	push de		;11t
	push bc		;11t
	push af		;11t
	;12 bytes pasted
	;==80t
	
	;good to here on primary registers
	
	ld sp, ix	;10t	jump back to original stack
	;;at this point we can now mess with the registers	
	;hl is now pointed to buffer
	;since we moved forward with 4 bytes of data, 
	;need to move the stack ahead 4 bytes
	ld bc, $0c	;10t	amount to add to buffer
	add hl, bc	;11t	perform addition
	;now buffer is
	;#C018
	

	exx			;4t
	;swap to shadow registers
	;work on the screen address
	
	ld bc, $04	;10t	
	;amount to add to buffer
	add hl, bc	;11t	
	;perform addition
	exx			;4t
;	swap back regular registers
	;now screen is
	;#401C

	ld sp, hl	;6t		stack is now #C018
	
	pop bc		;10t
	pop de		;10t
	
	
	exx			;4t
	;exchange to pull up screen stack
	ld sp, hl	;6t
	;set screen stack
	
	exx			;4t
	;need those registers so swamp back
	
	push de		;11t
	push bc		;11t
	
	
	

	exx			;4t
	;back to primary registers
jp (iy);our return address is in IY

end_of_routine:




;;storage for unused stuff



	ld a, i
	dec a
	ld i, a
	;ex af, af'
	
	jp nz, loop00
	;end block 00

endless00:
	jp endless00	

;	exx		;4
;	inc l	;4
;	;inc sp	;6
;	ld de, line_table
;   add a,e
;   ld e,a
;   ld a,(de)
	
line_table:
	defw $410e
	defw $420e
	defw $430e
	defw $440e
	defw $450e
	defw $460e
	defw $470e
	defw $402e	

	
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	;setup for counter and output addy
;	exx
;	ld hl, $4020 + jump	;14t
;	exx
;	ld a, 8
;	ld i, a
	
;loop01:
;	call copyLine

;update_loop01:
;	ld sp, (orig_Stack)
	
	;update buffer position
;	ld bc, $0E
;	add hl, bc
;	exx
	
;	ld bc, $F2
;	add hl, bc
;	exx

;	ld a, i
;	dec a
;	ld i, a
	
;	jp nz, loop01
;end block 01



;need to find out what hl and 'hl are now
;HL = #C0E0	;in start of character block 2	good
;'HL = #480E
;problem at this point it's in the 2nd third
;14th character position
;need to subtract or just put in the new number


