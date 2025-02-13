
_main:
	MOV	#2048, W15
	MOV	#6142, W0
	MOV	WREG, 32
	MOV	#1, W0
	MOV	WREG, 50
	MOV	#4, W0
	IOR	68
	LNK	#2

;t1.c,1 :: 		void main() {
;t1.c,4 :: 		ANSELG = 0x0000;  // PORTG'yi dijital olarak ayarla
	CLR	ANSELG
;t1.c,5 :: 		TRISG = 0x0000;   // PORTG'yi çikis olarak ayarla
	CLR	TRISG
;t1.c,6 :: 		LATG = 0x0000;    // Baslangiçta tüm LED'leri kapat
	CLR	LATG
;t1.c,10 :: 		ANSELA = 0x0000;
	CLR	ANSELA
;t1.c,11 :: 		TRISA = 0x0000;
	CLR	TRISA
;t1.c,12 :: 		LATA= 0x0000;
	CLR	LATA
;t1.c,14 :: 		ANSELC = 0x0000;
	CLR	ANSELC
;t1.c,15 :: 		TRISC = 0x0000;
	CLR	TRISC
;t1.c,16 :: 		LATC= 0x0000;
	CLR	LATC
;t1.c,18 :: 		ANSELB=0X0000;
	CLR	ANSELB
;t1.c,19 :: 		TRISB=0X000;
	CLR	TRISB
;t1.c,20 :: 		LATB=0X000;
	CLR	LATB
;t1.c,22 :: 		ANSELD=0X0000;
	CLR	ANSELD
;t1.c,23 :: 		TRISD=0X000;
	CLR	TRISD
;t1.c,24 :: 		LATD=0X000;
	CLR	LATD
;t1.c,26 :: 		while(1) {
L_main0:
;t1.c,28 :: 		for(i = 0; i < 16; i++) {
	CLR	W0
	MOV	W0, [W14+0]
L_main2:
	MOV	[W14+0], W0
	CP	W0, #16
	BRA LT	L__main17
	GOTO	L_main3
L__main17:
;t1.c,29 :: 		LATG = LATG | (1 << i);  // i. biti 1 yap (LED'i yak)
	MOV	#1, W0
	MOV	[W14+0], W2
	SL	W0, W2, W1
	MOV	#lo_addr(LATG), W0
	IOR	W1, [W0], [W0]
;t1.c,30 :: 		Delay_ms(50);  // 500ms bekle
	MOV	#11, W8
	MOV	#44645, W7
L_main5:
	DEC	W7
	BRA NZ	L_main5
	DEC	W8
	BRA NZ	L_main5
	NOP
	NOP
	NOP
	NOP
;t1.c,28 :: 		for(i = 0; i < 16; i++) {
	MOV	#1, W1
	ADD	W14, #0, W0
	ADD	W1, [W0], [W0]
;t1.c,31 :: 		}
	GOTO	L_main2
L_main3:
;t1.c,33 :: 		Delay_ms(500);  // 2 saniye bekle (Tüm LED'ler yanik)
	MOV	#107, W8
	MOV	#53247, W7
L_main7:
	DEC	W7
	BRA NZ	L_main7
	DEC	W8
	BRA NZ	L_main7
	NOP
	NOP
;t1.c,36 :: 		for(i = 0; i < 16; i++) {
	CLR	W0
	MOV	W0, [W14+0]
L_main9:
	MOV	[W14+0], W0
	CP	W0, #16
	BRA LT	L__main18
	GOTO	L_main10
L__main18:
;t1.c,37 :: 		LATG = LATG & ~(1 << i); // i. biti 0 yap (LED'i söndür)
	MOV	#1, W0
	MOV	[W14+0], W2
	SL	W0, W2, W0
	COM	W0, W1
	MOV	#lo_addr(LATG), W0
	AND	W1, [W0], [W0]
;t1.c,38 :: 		Delay_ms(50);  // 500ms bekle
	MOV	#11, W8
	MOV	#44645, W7
L_main12:
	DEC	W7
	BRA NZ	L_main12
	DEC	W8
	BRA NZ	L_main12
	NOP
	NOP
	NOP
	NOP
;t1.c,36 :: 		for(i = 0; i < 16; i++) {
	MOV	#1, W1
	ADD	W14, #0, W0
	ADD	W1, [W0], [W0]
;t1.c,39 :: 		}
	GOTO	L_main9
L_main10:
;t1.c,41 :: 		Delay_ms(500);  // 2 saniye bekle (Tüm LED'ler kapali)
	MOV	#107, W8
	MOV	#53247, W7
L_main14:
	DEC	W7
	BRA NZ	L_main14
	DEC	W8
	BRA NZ	L_main14
	NOP
	NOP
;t1.c,42 :: 		}
	GOTO	L_main0
;t1.c,43 :: 		}
L_end_main:
	ULNK
L__main_end_loop:
	BRA	L__main_end_loop
; end of _main
