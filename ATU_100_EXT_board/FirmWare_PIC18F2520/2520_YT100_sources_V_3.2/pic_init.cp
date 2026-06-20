#line 1 "C:/Users/Dietmar/Documents/git/N7DDC-ATU-100-mini-and-YT100/ATU_100_EXT_board/FirmWare_PIC18F2520/2520_YT100_sources_V_3.2/pic_init.c"
#line 1 "c:/users/dietmar/documents/git/n7ddc-atu-100-mini-and-yt100/atu_100_ext_board/firmware_pic18f2520/2520_yt100_sources_v_3.2/pic_init.h"
#line 24 "c:/users/dietmar/documents/git/n7ddc-atu-100-mini-and-yt100/atu_100_ext_board/firmware_pic18f2520/2520_yt100_sources_v_3.2/pic_init.h"
void All_Relays_HiZ(void);
void Relay_Low(unsigned char relay);
void Relay_High(unsigned char relay);
void Reset_Relais(unsigned char relay);
void Set_Relais(unsigned char relay);
void Init_Relais_Defined(void);

sbit RelayBus at LATA4_bit;





sbit Cap_10 at LATB1_bit;
sbit Cap_22 at LATB2_bit;
sbit Cap_47 at LATB3_bit;
sbit Cap_100 at LATB4_bit;
sbit Cap_220 at LATB5_bit;
sbit Cap_470 at LATB6_bit;
sbit Cap_1000 at LATB7_bit;


sbit Cap_sw at LATA7_bit;


sbit Ind_005 at LATC0_bit;
sbit Ind_011 at LATC1_bit;
sbit Ind_022 at LATC2_bit;
sbit Ind_045 at LATC3_bit;
sbit Ind_1 at LATC4_bit;
sbit Ind_22 at LATC5_bit;
sbit Ind_45 at LATA5_bit;
sbit Ind_9 at LATA6_bit;



sbit Cap_10_Direction at TRISB1_bit;
sbit Cap_22_Direction at TRISB2_bit;
sbit Cap_47_Direction at TRISB3_bit;
sbit Cap_100_Direction at TRISB4_bit;
sbit Cap_220_Direction at TRISB5_bit;
sbit Cap_470_Direction at TRISB6_bit;
sbit Cap_1000_Direction at TRISB7_bit;

sbit Cap_sw_Direction at TRISA7_bit;

sbit Ind_005_Direction at TRISC0_bit;
sbit Ind_011_Direction at TRISC1_bit;
sbit Ind_022_Direction at TRISC2_bit;
sbit Ind_045_Direction at TRISC3_bit;
sbit Ind_1_Direction at TRISC4_bit;
sbit Ind_22_Direction at TRISC5_bit;
sbit Ind_45_Direction at TRISA5_bit;
sbit Ind_9_Direction at TRISA6_bit;

sbit Soft_I2C_Scl at LATC6_bit;
sbit Soft_I2C_Sda at LATC7_bit;
sbit Soft_I2C_Scl_Direction at TRISC6_bit;
sbit Soft_I2C_Sda_Direction at TRISC7_bit;

void pic_init(void);
#line 7 "C:/Users/Dietmar/Documents/git/N7DDC-ATU-100-mini-and-YT100/ATU_100_EXT_board/FirmWare_PIC18F2520/2520_YT100_sources_V_3.2/pic_init.c"
const char relay_list[ 16 ] = {
  1 ,
  2 ,
  3 ,
  4 ,
  5 ,
  6 ,
  7 ,
  8 ,
  9 ,
  10 ,
  11 ,
  12 ,
  13 ,
  14 ,
  15 ,
  16 
};

void wait_ms(unsigned int ms)
{
 unsigned int i;

 for(i = 0; i < ms; i++) {
 asm CLRWDT;
 Delay_ms(1);
 }
}

 void All_Relays_HiZ(void)
{
 RelayBus = 0;

 Ind_005_Direction = 1;
 Ind_011_Direction = 1;
 Ind_022_Direction = 1;
 Ind_045_Direction = 1;
 Ind_1_Direction = 1;
 Ind_22_Direction = 1;
 Ind_45_Direction = 1;
 Ind_9_Direction = 1;

 Cap_10_Direction = 1;
 Cap_22_Direction = 1;
 Cap_47_Direction = 1;
 Cap_100_Direction = 1;
 Cap_220_Direction = 1;
 Cap_470_Direction = 1;
 Cap_1000_Direction = 1;

 Cap_sw_Direction = 1;
}
 void Relay_Low(unsigned char relay)
{
 switch(relay)
 {
 case  1 : Ind_005 = 0; Ind_005_Direction = 0; break;
 case  2 : Ind_011 = 0; Ind_011_Direction = 0; break;
 case  3 : Ind_022 = 0; Ind_022_Direction = 0; break;
 case  4 : Ind_045 = 0; Ind_045_Direction = 0; break;
 case  5 : Ind_1 = 0; Ind_1_Direction = 0; break;
 case  6 : Ind_22 = 0; Ind_22_Direction = 0; break;
 case  7 : Ind_45 = 0; Ind_45_Direction = 0; break;
 case  8 : Ind_9 = 0; Ind_9_Direction = 0; break;

 case  9 : Cap_10 = 0; Cap_10_Direction = 0; break;
 case  10 : Cap_22 = 0; Cap_22_Direction = 0; break;
 case  11 : Cap_47 = 0; Cap_47_Direction = 0; break;
 case  12 : Cap_100 = 0; Cap_100_Direction = 0; break;
 case  13 : Cap_220 = 0; Cap_220_Direction = 0; break;
 case  14 : Cap_470 = 0; Cap_470_Direction = 0; break;
 case  15 : Cap_1000 = 0; Cap_1000_Direction = 0; break;

 case  16 : Cap_sw = 0; Cap_sw_Direction = 0; break;
 }
}

void Relay_High(unsigned char relay)
{
 switch(relay)
 {
 case  1 : Ind_005 = 1; Ind_005_Direction = 0; break;
 case  2 : Ind_011 = 1; Ind_011_Direction = 0; break;
 case  3 : Ind_022 = 1; Ind_022_Direction = 0; break;
 case  4 : Ind_045 = 1; Ind_045_Direction = 0; break;
 case  5 : Ind_1 = 1; Ind_1_Direction = 0; break;
 case  6 : Ind_22 = 1; Ind_22_Direction = 0; break;
 case  7 : Ind_45 = 1; Ind_45_Direction = 0; break;
 case  8 : Ind_9 = 1; Ind_9_Direction = 0; break;

 case  9 : Cap_10 = 1; Cap_10_Direction = 0; break;
 case  10 : Cap_22 = 1; Cap_22_Direction = 0; break;
 case  11 : Cap_47 = 1; Cap_47_Direction = 0; break;
 case  12 : Cap_100 = 1; Cap_100_Direction = 0; break;
 case  13 : Cap_220 = 1; Cap_220_Direction = 0; break;
 case  14 : Cap_470 = 1; Cap_470_Direction = 0; break;
 case  15 : Cap_1000 = 1; Cap_1000_Direction = 0; break;

 case  16 : Cap_sw = 1; Cap_sw_Direction = 0; break;
 }
}

void Reset_Relais(unsigned char relay)
{
 All_Relays_HiZ();

 RelayBus = 0;

 Relay_Low(relay);

 wait_ms( 10 );

 All_Relays_HiZ();
}

void Set_Relais(unsigned char relay)
{
 All_Relays_HiZ();

 Relay_High(relay);

 RelayBus = 1;

 wait_ms( 10 );

 RelayBus = 0;

 All_Relays_HiZ();
}

void Init_Relais_Defined(void)
{
 Reset_Relais( 1 );
 Reset_Relais( 2 );
 Reset_Relais( 3 );
 Reset_Relais( 4 );
 Reset_Relais( 5 );
 Reset_Relais( 6 );
 Reset_Relais( 7 );
 Reset_Relais( 8 );

 Reset_Relais( 9 );
 Reset_Relais( 10 );
 Reset_Relais( 11 );
 Reset_Relais( 12 );
 Reset_Relais( 13 );
 Reset_Relais( 14 );
 Reset_Relais( 15 );

 Reset_Relais( 16 );

 All_Relays_HiZ();
}

void pic_init (void) {
 CMCON = 0b00000111;

 OSCCON = 0b01100000;
 PLLEN_bit = 1;

 PORTA = 0;
 PORTB = 0;
 PORTC = 0;
 LATA = 0;
 LATB = 0;
 LATC = 0;
 TRISA = 0xFF;
 TRISB = 0xFF;
 TRISC = 0xFF;
 TRISA2_bit = 0;
 TRISA4_bit = 0;
 TRISB0_bit = 1;

 ADC_Init();


 ADCON1 = 0b00001101;

 RBPU_bit = 0;


 GIE_bit = 0;
}
