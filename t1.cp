#line 1 "C:/Users/marya.koca/Desktop/test/t1.c"
void main() {
 int i;

 ANSELG = 0x0000;
 TRISG = 0x0000;
 LATG = 0x0000;



 ANSELA = 0x0000;
 TRISA = 0x0000;
 LATA= 0x0000;

 ANSELC = 0x0000;
 TRISC = 0x0000;
 LATC= 0x0000;

 ANSELB=0X0000;
 TRISB=0X000;
 LATB=0X000;

 ANSELD=0X0000;
 TRISD=0X000;
 LATD=0X000;

 while(1) {

 for(i = 0; i < 16; i++) {
 LATG = LATG | (1 << i);
 Delay_ms(50);
 }

 Delay_ms(500);


 for(i = 0; i < 16; i++) {
 LATG = LATG & ~(1 << i);
 Delay_ms(50);
 }

 Delay_ms(500);
 }
}
