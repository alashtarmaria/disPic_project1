void main() {
  int i;

  ANSELG = 0x0000;  // PORTG'yi dijital olarak ayarla
  TRISG = 0x0000;   // PORTG'yi çikis olarak ayarla
  LATG = 0x0000;    // Baslangiçta tüm LED'leri kapat

  while(1) {
    // LED'leri sirayla yak
    for(i = 0; i < 16; i++) {
      LATG = LATG | (1 << i);  // i. biti 1 yap (LED'i yak)
      Delay_ms(50);  // 500ms bekle
    }

    Delay_ms(500);  // 2 saniye bekle (Tüm LED'ler yanik)

    // LED'leri sirayla söndür
    for(i = 0; i < 16; i++) {
      LATG = LATG & ~(1 << i); // i. biti 0 yap (LED'i söndür)
      Delay_ms(50);  // 500ms bekle
    }

    Delay_ms(500);  // 2 saniye bekle (Tüm LED'ler kapali)
  }
}