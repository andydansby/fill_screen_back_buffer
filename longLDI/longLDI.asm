; test vertical scroll



	;screen: defw #4000
	
	org $8000
	
start:  ; ;ld a, data
	ld sp, $c000 ; normal stack location, keep out of bankable
	
	halt
	
	di
	;transfers a byte of data from the memory location pointed to by hl to the memory location pointed to by de  then hl and de are incremented and bc is decremented
	
	;this is a brute force method that is a huge memory HOG
	;this test only does the first 8 lines


; about 18304 t-states to 32 y columns 4 character rows
start_copy:

	ld a, $1c; used to subtract when you get to the end of a row
	
	ld hl, data; get the address of the data


8_pixel_columns_0:			;screencol_000 equ $4000
	;ld de, screencol_000;0
	ld de, $4000;0
	call copy_8_lines1
	
8_pixel_columns_1:			;screencol_001 equ $4020
	;ld de, screencol_001;8
	ld de, $4020;8
	call copy_8_lines1
	
8_pixel_columns_2:			;screencol_002 equ $4040
	ld de, $4040;16
	call copy_8_lines1
	
8_pixel_columns_3:			;screencol_003 equ $4060
	ld de, $4060;16
	call copy_8_lines1
		
8_pixel_columns_4:			;screencol_004 equ $4080
	ld de, $4080;0
	call copy_8_lines1
	
8_pixel_columns_5:			;screencol_005 equ $40a0
	ld de, $40a0;8
	call copy_8_lines1
	
8_pixel_columns_6:			;screencol_006 equ $40c0
	ld de, $40c0;16
	call copy_8_lines1

8_pixel_columns_7:			;screencol_007 equ $40e0
	ld de, $40e0;16
	call copy_8_lines1	

8_pixel_columns_8:			;screencol_000 equ $4000
	ld de, $4800;0
	call copy_8_lines1

8_pixel_columns_9:			;screencol_001 equ $4020
	ld de, $4820;8
	call copy_8_lines1
	
8_pixel_columns_10:			;screencol_002 equ $4040
	ld de, $4840;16
	call copy_8_lines1

8_pixel_columns_11:			;screencol_003 equ $4860
	ld de, $4860;16
	call copy_8_lines1
		
8_pixel_columns_12:			;screencol_004 equ $4080
	ld de, $4880;0
	call copy_8_lines1
	
8_pixel_columns_13:			;screencol_005 equ $40a0
	ld de, $48a0;8
	call copy_8_lines1

8_pixel_columns_14:			;screencol_006 equ $40c0
	ld de, $48c0;16
	call copy_8_lines1

8_pixel_columns_15:			;screencol_006 equ $40c0
	ld de, $48e0;16
	call copy_8_lines1		
	
8_pixel_columns_16:			;screencol_000 equ $4000
	ld de, $5000;0
	call copy_8_lines1
	
8_pixel_columns_17:			;screencol_001 equ $4020
	ld de, $5020;8
	call copy_8_lines1

8_pixel_columns_18:			;screencol_002 equ $4040
	ld de, $5040;16
	call copy_8_lines1
	
8_pixel_columns_19:			;screencol_003 equ $4060
	ld de, $5060;16
	call copy_8_lines1
		
8_pixel_columns_20:			;screencol_004 equ $4080
	ld de, $5080;0
	call copy_8_lines1
	
8_pixel_columns_21:			;screencol_005 equ $40a0
	ld de, $50a0;8
	call copy_8_lines1
	
8_pixel_columns_22:			;screencol_006 equ $40c0
	ld de, $50c0;16
	call copy_8_lines1
	
8_pixel_columns_23:			;screencol_006 equ $40c0
	ld de, $50e0;16
	call copy_8_lines1


endof:

ei

pete_repete:
	jp pete_repete

copy_8_lines1:
	call row_copy	;0
	
	call Next_Line_1;1
	call row_copy
	
	call Next_Line_1;2
	call row_copy
	
	call Next_Line_1;3
	call row_copy
	
	call Next_Line_1;4
	call row_copy
	
	call Next_Line_1;5
	call row_copy
	
	call Next_Line_1;6
	call row_copy
	
	call Next_Line_1;7
	call row_copy
ret

;moved to the next pixel line down
;in speccy display
Next_Line_1:
    inc d
	ld a, e
	sub $1c
	ld e, a
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
ret

	org #C000
data:
incbin "girl.bin"
end_of_data:
