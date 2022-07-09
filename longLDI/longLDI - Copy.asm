; test vertical scroll



	;screen: defw #4000
	
	org $8000
	
start:  ; ;ld a, data
	ld sp, $c000 ; normal stack location, keep out of bankable
	
	di
	;transfers a byte of data from the memory location pointed to by hl to the memory location pointed to by de  then hl and de are incremented and bc is decremented
	
	;this is a brute force method that is a huge memory HOG
	;this test only does the first 8 lines


; about 18304 t-states to 32 y columns 4 character rows
start_copy:

	ld a, $1c; used to subtract when you get to the end of a row
	
	
	
	ld hl, data; get the address of the data
	
	
	;;de ends up as $4020, needs to be 4100

	;ld de, screencol_002
	
8_pixel_columns_0:			;screencol_000 equ $4000
	ld de, screencol_000;0
	call copy_8_lines1
	
	
8_pixel_columns_1:			;screencol_001 equ $4020
	ld de, screencol_001;8
	call copy_8_lines1
	
8_pixel_columns_2:			;screencol_002 equ $4040
	ld de, screencol_002;16
	call copy_8_lines1
	
8_pixel_columns_3:			;screencol_003 equ $4060
	ld de, screencol_003;16
	call copy_8_lines1
		
8_pixel_columns_4:			;screencol_004 equ $4080
	ld de, screencol_004;0
	call copy_8_lines1

pete_repete:
	jp pete_repete
	
	
8_pixel_columns_5:			;screencol_005 equ $40a0
	ld de, screencol_005;8
	call copy_8_lines1
	
8_pixel_columns_6:			;screencol_006 equ $40c0
	ld de, screencol_006;16
	call copy_8_lines1
	
8_pixel_columns_7:			;screencol_007 equ $40e0
	ld de, screencol_007;16
	call copy_8_lines2	
	
8_pixel_columns_8:			;screencol_000 equ $4000
8	ld de, screencol_008;0
8	call copy_8_lines1
	
8_pixel_columns_9:			;screencol_001 equ $4020
	ld de, screencol_009;8
	call copy_8_lines1
	
8_pixel_columns_10:			;screencol_002 equ $4040
	ld de, screencol_010;16
	call copy_8_lines1
	
8_pixel_columns_11:			;screencol_003 equ $4060
	ld de, screencol_011;16
	call copy_8_lines1
		
8_pixel_columns_12:			;screencol_004 equ $4080
	ld de, screencol_012;0
	call copy_8_lines1
	
8_pixel_columns_13:			;screencol_005 equ $40a0
	ld de, screencol_013;8
	call copy_8_lines1
	
8_pixel_columns_14:			;screencol_006 equ $40c0
	ld de, screencol_014;16
	call copy_8_lines1	
	
8_pixel_columns_15:			;screencol_006 equ $40c0
	ld de, screencol_015;16
	call copy_8_lines2		
	
8_pixel_columns_16:			;screencol_000 equ $4000
	ld de, screencol_016;0
	call copy_8_lines1
	
8_pixel_columns_17:			;screencol_001 equ $4020
	ld de, screencol_017;8
	call copy_8_lines1
	
8_pixel_columns_18:			;screencol_002 equ $4040
	ld de, screencol_018;16
	call copy_8_lines1
	
8_pixel_columns_19:			;screencol_003 equ $4060
	ld de, screencol_019;16
	call copy_8_lines1
		
8_pixel_columns_20:			;screencol_004 equ $4080
	ld de, screencol_020;0
	call copy_8_lines1
	
8_pixel_columns_21:			;screencol_005 equ $40a0
	ld de, screencol_021;8
	call copy_8_lines1
	
8_pixel_columns_22:			;screencol_006 equ $40c0
	ld de, screencol_022;16
	call copy_8_lines1
	
8_pixel_columns_23:			;screencol_006 equ $40c0
	ld de, screencol_023;16
	call copy_8_lines2
	
endof:

ei


endless:
	jp endless

;moved to the next pixel line down
;in speccy display
Next_Line_1:
    inc d
    or e
    sub e
    ld e, a
ret



Next_Line_2:
	ld a, e
	ld c, $e0
	add a, c
	ld e, a
ret

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

copy_8_lines2:
	call row_copy	;0
	
	call Next_Line_2;1
	call row_copy
	
	call Next_Line_2;2
	call row_copy
	
	call Next_Line_2;3
	call row_copy
	
	call Next_Line_2;4
	call row_copy
	
	call Next_Line_2;5
	call row_copy
	
	call Next_Line_2;6
	call row_copy
	
	call Next_Line_2;7
	call row_copy
ret


copy_data:
	; input data in hl
	; output data in de
	; and ldi 32 times for each column
	;column 1
	
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

;constants
	screencol_000 equ $4000	;0 character column
	screencol_001 equ $4020	;1 character column
	screencol_002 equ $4040 ;2 character column
	screencol_003 equ $4060 ;3 character column
	screencol_004 equ $4080	;4 character column
	screencol_005 equ $40a0	;5 character column
	screencol_006 equ $40c0 ;6 character column
	screencol_007 equ $40e0 ;7 character column
	screencol_008 equ $4800	;0 character column
	screencol_009 equ $4820	;1 character column
	screencol_010 equ $4840 ;2 character column
	screencol_011 equ $4860 ;3 character column
	screencol_012 equ $4880	;4 character column
	screencol_013 equ $48a0	;5 character column
	screencol_014 equ $48c0 ;6 character column
	screencol_015 equ $48e0 ;7 character column
	screencol_016 equ $5000 ;2 character column
	screencol_017 equ $5020 ;3 character column
	screencol_018 equ $5040	;4 character column
	screencol_019 equ $5060	;5 character column
	screencol_020 equ $5080 ;6 character column
	screencol_021 equ $50a0 ;7 character column
	screencol_022 equ $50c0 ;7 character column
	screencol_023 equ $50e0 ;7 character column



	org #C000
data:

incbin "girl.bin"


data2:
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
defb $000, $001, $002, $003, $004, $005, $006, $007, $008, $009, $00a, $00b, $00c, $00d, $00e, $00f, $010, $011, $012, $013, $014, $015, $016, $017, $018, $019, $01a, $01b;row 1
; 28 entries	$4000

defb $020, $021, $022, $023, $024, $025, $026, $027, $028, $029, $02a, $02b, $02c, $02d, $02e, $02f, $030, $031, $032, $033, $034, $035, $036, $037, $038, $039, $03A, $03B;row 2 
; 28 entries	$4100

defb $040, $041, $042, $043, $044, $045, $046, $047, $048, $049, $04a, $04b, $04c, $04d, $04e, $04f, $050, $051, $052, $053, $054, $055, $056, $057, $058, $059, $05A, $05B;row 3
; 28 entries	$4200

defb $060, $061, $062, $063, $064, $065, $066, $067, $068, $069, $06a, $06b, $06c, $06d, $06e, $06f, $070, $071, $072, $073, $074, $075, $076, $077, $078, $079, $07A, $07B;row 4 
; 28 entries	$4300

defb $080, $081, $082, $083, $084, $085, $086, $087, $088, $089, $08a, $08b, $08c, $08d, $08e, $08f, $090, $091, $092, $093, $094, $095, $096, $097, $098, $099, $09A, $09B;row 5 
; 28 entries	$4400

defb $0A0, $0A1, $0A2, $0A3, $0A4, $0A5, $0A6, $0A7, $0A8, $0A9, $0AA, $0AB, $0AC, $0AD, $0AE, $0AF, $0B0, $0B1, $0B2, $0B3, $0B4, $0B5, $0B6, $0B7, $0B8, $0B9, $0BA, $0BB;row 6 
; 28 entries	$4500

defb $0C0, $0C1, $0C2, $0C3, $0C4, $0C5, $0C6, $0C7, $0C8, $0C9, $0CA, $0CB, $0CC, $0CD, $0CE, $0CF, $0D0, $0D1, $0D2, $0D3, $0D4, $0D5, $0D6, $0D7, $0D8, $0D9, $0DA, $0DB;row 7 
; 28 entries	$4600	

defb $0E0, $0E1, $0E2, $0E3, $0E4, $0E5, $0E6, $0E7, $0E8, $0E9, $0EA, $0EB, $0EC, $0ED, $0EE, $0EF, $0F0, $0F1, $0F2, $0F3, $0F4, $0F5, $0F6, $0F7, $0F8, $0F9, $0FA, $0FB;row 8
; 28 entries	$4700

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

defb $0E0, $0E1, $0E2, $0E3, $0E4, $0E5, $0E6, $0E7, $0E8, $0E9, $0EA, $0EB, $0EC, $0ED, $0EE, $0EF, $0F0, $0F1, $0F2, $0F3, $0F4, $0F5, $0F6, $0F7, $0F8, $0F9, $0FA, $0FB;row 9
; 28 entries	$402C

defb $0C0, $0C1, $0C2, $0C3, $0C4, $0C5, $0C6, $0C7, $0C8, $0C9, $0CA, $0CB, $0CC, $0CD, $0CE, $0CF, $0D0, $0D1, $0D2, $0D3, $0D4, $0D5, $0D6, $0D7, $0D8, $0D9, $0DA, $0DB;row 10 
; 28 entries	$412C

defb $0A0, $0A1, $0A2, $0A3, $0A4, $0A5, $0A6, $0A7, $0A8, $0A9, $0AA, $0AB, $0AC, $0AD, $0AE, $0AF, $0B0, $0B1, $0B2, $0B3, $0B4, $0B5, $0B6, $0B7, $0B8, $0B9, $0BA, $0BB;row 11
; 28 entries	$422C

defb $080, $081, $082, $083, $084, $085, $086, $087, $088, $089, $08a, $08b, $08c, $08d, $08e, $08f, $090, $091, $092, $093, $094, $095, $096, $097, $098, $099, $09A, $09B;row 12
; 28 entries	$432C

defb $060, $061, $062, $063, $064, $065, $066, $067, $068, $069, $06a, $06b, $06c, $06d, $06e, $06f, $070, $071, $072, $073, $074, $075, $076, $077, $078, $079, $07A, $07B;row 13
; 28 entries	$442C

defb $040, $041, $042, $043, $044, $045, $046, $047, $048, $049, $04a, $04b, $04c, $04d, $04e, $04f, $050, $051, $052, $053, $054, $055, $056, $057, $058, $059, $05A, $05B;row 14
; 28 entries	$452C

defb $020, $021, $022, $023, $024, $025, $026, $027, $028, $029, $02a, $02b, $02c, $02d, $02e, $02f, $030, $031, $032, $033, $034, $035, $036, $037, $038, $039, $03A, $03B;row 15
; 28 entries	$462C

defb $000, $001, $002, $003, $004, $005, $006, $007, $008, $009, $00a, $00b, $00c, $00d, $00e, $00f, $010, $011, $012, $013, $014, $015, $016, $017, $018, $019, $01a, $01b;row 16
; 28 entries	$472C
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


end_of_data:
