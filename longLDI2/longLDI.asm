; test vertical scroll



	;screen: defw #4000
	
	org $8000
	
start:
	ld sp, $c000 ; normal stack location, keep out of bankable
	
	di
	;transfers a byte of data from the memory location pointed to by hl to the memory location pointed to by de  then hl and de are incremented and bc is decremented
	
	;this is a brute force method
	;takes 272 bytes
start_copy:
	ld hl, data; get the address of the data

character00:		
	ld de, $4000;0
	call copy_8_lines1
	
character01:		
	ld de, $4020;8
	call copy_8_lines1
	
character02:			
	ld de, $4040;16
	call copy_8_lines1
	
character03:			
	ld de, $4060;16
	call copy_8_lines1
		
character04:			
	ld de, $4080;0
	call copy_8_lines1
	
character05:			
	ld de, $40a0;8
	call copy_8_lines1
	
character06:			
	ld de, $40c0;16
	call copy_8_lines1

character07:
	ld de, $40e0;16
	call copy_8_lines1	

character08:
	ld de, $4800;0
	call copy_8_lines1

character09:
	ld de, $4820;8
	call copy_8_lines1
	
character10:
	ld de, $4840;16
	call copy_8_lines1

character11:
	ld de, $4860;16
	call copy_8_lines1
		
character12:
	ld de, $4880;0
	call copy_8_lines1
	
character13:
	ld de, $48a0;8
	call copy_8_lines1

character14:
	ld de, $48c0;16
	call copy_8_lines1

character15:
	ld de, $48e0;16
	call copy_8_lines1		
	
character16:
	ld de, $5000;0
	call copy_8_lines1
	
character17:
	ld de, $5020;8
	call copy_8_lines1

character18:
	ld de, $5040;16
	call copy_8_lines1
	
character19:
	ld de, $5060;16
	call copy_8_lines1
		
character20:
	ld de, $5080;0
	call copy_8_lines1
	
character21:
	ld de, $50a0;8
	call copy_8_lines1
	
character22:
	ld de, $50c0;16
	call copy_8_lines1
	
character23:
	ld de, $50e0;16
	call copy_8_lines1

ei

pete_repete:
	jp pete_repete

copy_8_lines1:
	call row_copy	;0
	
	inc d
	ld a, e
	sub $1c
	ld e, a
	;call Next_Line_1;1
	call row_copy
	
	inc d
	ld a, e
	sub $1c
	ld e, a
	;call Next_Line_1;2
	call row_copy
	
	inc d
	ld a, e
	sub $1c
	ld e, a
	;call Next_Line_1;3
	call row_copy
	
	inc d
	ld a, e
	sub $1c
	ld e, a
	;call Next_Line_1;4
	call row_copy
	
	inc d
	ld a, e
	sub $1c
	ld e, a
	;call Next_Line_1;5
	call row_copy
	
	inc d
	ld a, e
	sub $1c
	ld e, a
	;call Next_Line_1;6
	call row_copy
	
	inc d
	ld a, e
	sub $1c
	ld e, a
	;call Next_Line_1;7		17t
	call row_copy;			17t
ret

row_copy:
	; each ldi is 16 tstates
	ldi;0
	ldi;1
	ldi;2
	ldi;3
	ldi;4
	ldi;5
	ldi;6
	ldi;7
	ldi;8
	ldi;9
	ldi;10
	ldi;11
	ldi;12
	ldi;13
	ldi;14
	ldi;15
	ldi;16
	ldi;17
	ldi;18
	ldi;19
	ldi;20
	ldi;21
	ldi;22
	ldi;23
	ldi;24
	ldi;25
	ldi;26
	ldi;27
ret				;10t


endofroutine:

	org #C000
data:
incbin "girl.bin"
;defb $000, $001, $002, $003, $004, $005, $006, $007, $008, $009, $00a, $00b, $00c, $00d, $00e, $00f, $010, $011, $012, $013, $014, $015, $016, $017, $018, $019, $01a, $01b;row 1
; 28 entries
end_of_data:
