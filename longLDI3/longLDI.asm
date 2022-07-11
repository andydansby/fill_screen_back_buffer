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
	call copyit
	
ei

pete_repete:
	jp pete_repete



copyit:
character00:		
	ld de, $4000;0			;10t
	ld a,e                  ;4t
	call copy_8_lines1		;17t
	
character01:		
	ld de, $4020;8
	ld a,e                  ;4t
	call copy_8_lines1
	
character02:			
	ld de, $4040;16
	ld a,e                  ;4t
	call copy_8_lines1
	
character03:			
	ld de, $4060;24
	ld a,e                  ;4t
	call copy_8_lines1
		
character04:			
	ld de, $4080;32
	ld a,e                  ;4t
	call copy_8_lines1
	
character05:			
	ld de, $40a0;40
	ld a,e                  ;4t
	call copy_8_lines1
	
character06:			
	ld de, $40c0;48
	ld a,e                  ;4t
	call copy_8_lines1

character07:
	ld de, $40e0;56
	ld a,e                  ;4t
	call copy_8_lines1	

character08:
	ld de, $4800;64
	ld a,e                  ;4t
	call copy_8_lines1

character09:
	ld de, $4820;72
	ld a,e                  ;4t
	call copy_8_lines1
	
character10:
	ld de, $4840;80
	ld a,e                  ;4t
	call copy_8_lines1

character11:
	ld de, $4860;88
	ld a,e                  ;4t
	call copy_8_lines1
		
character12:
	ld de, $4880;96
	ld a,e                  ;4t
	call copy_8_lines1
	
character13:
	ld de, $48a0;104
	ld a,e                  ;4t
	call copy_8_lines1

character14:
	ld de, $48c0;112
	ld a,e                  ;4t
	call copy_8_lines1

character15:
	ld de, $48e0;120
	ld a,e                  ;4t
	call copy_8_lines1		
	
character16:
	ld de, $5000;128
	ld a,e                  ;4t
	call copy_8_lines1
	
character17:
	ld de, $5020;136
	ld a,e                  ;4t
	call copy_8_lines1

character18:
	ld de, $5040;144
	ld a,e                  ;4t
	call copy_8_lines1
	
character19:
	ld de, $5060;152
	ld a,e                  ;4t
	call copy_8_lines1
		
character20:
	ld de, $5080;160
	ld a,e                  ;4t
	call copy_8_lines1
	
character21:
	ld de, $50a0;168
	ld a,e                  ;4t
	call copy_8_lines1
	
character22:
	ld de, $50c0;176
	ld a,e                  ;4t
	call copy_8_lines1
	
character23:
	ld de, $50e0;184
	ld a,e                  ;4t
;	call copy_8_lines1	;17t
;using fall thru optimization

;fall thru optimization	allows 1 more to 192

copy_8_lines1:

	call row_copy	;0
	
	inc d                       ;4t
	ld e, a                     ;4t
	call row_copy
	
	inc d                       ;4t
	ld e, a                     ;4t
	call row_copy
	
	inc d                       ;4t
	ld e, a                     ;4t
	call row_copy
	
	inc d                       ;4t
	ld e, a                     ;4t
	call row_copy
	
	inc d                       ;4t
	ld e, a                     ;4t
	call row_copy
	
	inc d                       ;4t
	ld e, a                     ;4t
	call row_copy
	
	inc d                       ;4t
	ld e, a                     ;4t
	
;using fall thru optimization
;fall thru optimization	allows 1 more pass


row_copy:
	; each ldi is 16 tstates
	ldi;0						16t
	ldi;1						16t
	ldi;2						16t
	ldi;3						16t
	ldi;4						16t
	ldi;5						16t
	ldi;6						16t
	ldi;7						16t
	ldi;8						16t
	ldi;9						16t
	ldi;10						16t
	ldi;11						16t
	ldi;12						16t
	ldi;13						16t
	ldi;14						16t
	ldi;15						16t
	ldi;16						16t
	ldi;17						16t
	ldi;18						16t
	ldi;19						16t
	ldi;20						16t
	ldi;21						16t
	ldi;22						16t
	ldi;23						16t
	ldi;24						16t
	ldi;25						16t
	ldi;26						16t
	ldi;27						16t
ret;							10t
;==16 * 28 + 10 = 458T

endofroutine:

	org #C000
data:
incbin "girl.bin"
;defb $000, $001, $002, $003, $004, $005, $006, $007, $008, $009, $00a, $00b, $00c, $00d, $00e, $00f, $010, $011, $012, $013, $014, $015, $016, $017, $018, $019, $01a, $01b;row 1
; 28 entries
end_of_data:
