#line 1 "C:/Users/Dietmar/Documents/git/N7DDC-ATU-100-mini-and-YT100/ATU_100_EXT_board/FirmWare_PIC18F2520/Displaytest/main.c"







void i2c_delay() {
 Delay_us(5);
}

void scl_high() { TRISC6_bit = 1; }
void scl_low() { TRISC6_bit = 0; LATC6_bit = 0; }

void sda_high() { TRISC7_bit = 1; }
void sda_low() { TRISC7_bit = 0; LATC7_bit = 0; }

void i2c_init() {
 LATC6_bit = 0;
 LATC7_bit = 0;
 scl_high();
 sda_high();
}

void i2c_start() {
 sda_high();
 scl_high();
 i2c_delay();
 sda_low();
 i2c_delay();
 scl_low();
}

void i2c_stop() {
 sda_low();
 i2c_delay();
 scl_high();
 i2c_delay();
 sda_high();
 i2c_delay();
}

void i2c_write(unsigned char d) {
 unsigned char i;

 for(i = 0; i < 8; i++) {
 if(d & 0x80) sda_high();
 else sda_low();

 i2c_delay();
 scl_high();
 i2c_delay();
 scl_low();

 d <<= 1;
 }


 sda_high();
 i2c_delay();
 scl_high();
 i2c_delay();
 scl_low();
}

void oled_cmd(unsigned char c) {
 i2c_start();
 i2c_write( 0x78 );
 i2c_write(0x00);
 i2c_write(c);
 i2c_stop();
}

void oled_data(unsigned char d) {
 i2c_start();
 i2c_write( 0x78 );
 i2c_write(0x40);
 i2c_write(d);
 i2c_stop();
}

void oled_init_test() {
 oled_cmd(0xAE);
 oled_cmd(0xD5); oled_cmd(0x80);
 oled_cmd(0xA8); oled_cmd(0x3F);
 oled_cmd(0xD3); oled_cmd(0x00);
 oled_cmd(0x40);
 oled_cmd(0x8D); oled_cmd(0x14);
 oled_cmd(0x20); oled_cmd(0x00);
 oled_cmd(0xA1);
 oled_cmd(0xC8);
 oled_cmd(0xDA); oled_cmd(0x12);
 oled_cmd(0x81); oled_cmd(0x7F);
 oled_cmd(0xD9); oled_cmd(0xF1);
 oled_cmd(0xDB); oled_cmd(0x40);
 oled_cmd(0xA4);
 oled_cmd(0xA6);
 oled_cmd(0xAF);
}

void oled_set_pos(unsigned char page, unsigned char col) {
 oled_cmd(0xB0 | page);
 oled_cmd(0x00 | (col & 0x0F));
 oled_cmd(0x10 | (col >> 4));
}

void oled_fill(unsigned char pattern) {
 unsigned char page;
 unsigned char col;

 for(page = 0; page < 8; page++) {
 oled_set_pos(page, 0);

 for(col = 0; col < 128; col++) {
 oled_data(pattern);
 }
 }
}

void oled_test_pattern() {
 unsigned char page;
 unsigned char col;


 oled_fill(0xFF);
 Delay_ms(1000);


 oled_fill(0x00);
 Delay_ms(500);


 oled_fill(0xAA);
 Delay_ms(1000);


 oled_fill(0x55);
 Delay_ms(1000);


 for(page = 0; page < 8; page++) {
 oled_set_pos(page, 0);

 for(col = 0; col < 128; col++) {
 if(col & 1) oled_data(0xFF);
 else oled_data(0x00);
 }
 }
}

void main() {
 OSCCON = 0x70;
 ADCON1 = 0x0F;
 CMCON = 0x07;

 TRISA2_bit = 0;
 LATA2_bit = 0;

 TRISC6_bit = 1;
 TRISC7_bit = 1;

 i2c_init();

 oled_init_test();
 oled_test_pattern();

 while(1) {
 LATA2_bit = 1;
 Delay_ms(500);
 LATA2_bit = 0;
 Delay_ms(500);
 }

}
