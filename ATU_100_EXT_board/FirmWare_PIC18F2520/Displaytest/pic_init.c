// pic_init unit for Micro C PRO
// David Fainitski for ATU-100 project
// PIC1938 Microchip

#include "pic_init.h"

const char relay_list[RELAY_COUNT] = {
    REL_L1,
    REL_L2,
    REL_L3,
    REL_L4,
    REL_L5,
    REL_L6,
    REL_L7,
    REL_L8,
    REL_C1,
    REL_C2,
    REL_C3,
    REL_C4,
    REL_C5,
    REL_C6,
    REL_C7,
    REL_HIZ
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
   Ind_1_Direction   = 1;
   Ind_22_Direction  = 1;
   Ind_45_Direction  = 1;
   Ind_9_Direction   = 1;

   Cap_10_Direction   = 1;
   Cap_22_Direction   = 1;
   Cap_47_Direction   = 1;
   Cap_100_Direction  = 1;
   Cap_220_Direction  = 1;
   Cap_470_Direction  = 1;
   Cap_1000_Direction = 1;

   Cap_sw_Direction   = 1;
}
 void Relay_Low(unsigned char relay)
{
   switch(relay)
   {
      case REL_L1: Ind_005 = 0; Ind_005_Direction = 0; break;
      case REL_L2: Ind_011 = 0; Ind_011_Direction = 0; break;
      case REL_L3: Ind_022 = 0; Ind_022_Direction = 0; break;
      case REL_L4: Ind_045 = 0; Ind_045_Direction = 0; break;
      case REL_L5: Ind_1   = 0; Ind_1_Direction   = 0; break;
      case REL_L6: Ind_22  = 0; Ind_22_Direction  = 0; break;
      case REL_L7: Ind_45  = 0; Ind_45_Direction  = 0; break;
      case REL_L8: Ind_9   = 0; Ind_9_Direction   = 0; break;

      case REL_C1:  Cap_10   = 0; Cap_10_Direction   = 0; break;
      case REL_C2:  Cap_22   = 0; Cap_22_Direction   = 0; break;
      case REL_C3:  Cap_47   = 0; Cap_47_Direction   = 0; break;
      case REL_C4:  Cap_100  = 0; Cap_100_Direction  = 0; break;
      case REL_C5:  Cap_220  = 0; Cap_220_Direction  = 0; break;
      case REL_C6:  Cap_470  = 0; Cap_470_Direction  = 0; break;
      case REL_C7:  Cap_1000 = 0; Cap_1000_Direction = 0; break;

      case REL_HIZ: Cap_sw   = 0; Cap_sw_Direction   = 0; break;
   }
}

void Relay_High(unsigned char relay)
{
   switch(relay)
   {
      case REL_L1: Ind_005 = 1; Ind_005_Direction = 0; break;
      case REL_L2: Ind_011 = 1; Ind_011_Direction = 0; break;
      case REL_L3: Ind_022 = 1; Ind_022_Direction = 0; break;
      case REL_L4: Ind_045 = 1; Ind_045_Direction = 0; break;
      case REL_L5: Ind_1   = 1; Ind_1_Direction   = 0; break;
      case REL_L6: Ind_22  = 1; Ind_22_Direction  = 0; break;
      case REL_L7: Ind_45  = 1; Ind_45_Direction  = 0; break;
      case REL_L8: Ind_9   = 1; Ind_9_Direction   = 0; break;

      case REL_C1:  Cap_10   = 1; Cap_10_Direction   = 0; break;
      case REL_C2:  Cap_22   = 1; Cap_22_Direction   = 0; break;
      case REL_C3:  Cap_47   = 1; Cap_47_Direction   = 0; break;
      case REL_C4:  Cap_100  = 1; Cap_100_Direction  = 0; break;
      case REL_C5:  Cap_220  = 1; Cap_220_Direction  = 0; break;
      case REL_C6:  Cap_470  = 1; Cap_470_Direction  = 0; break;
      case REL_C7:  Cap_1000 = 1; Cap_1000_Direction = 0; break;

      case REL_HIZ: Cap_sw   = 1; Cap_sw_Direction   = 0; break;
   }
}

void Reset_Relais(unsigned char relay)
{
   All_Relays_HiZ();

   RelayBus = 0;

   Relay_Low(relay);

   wait_ms(PULSE_MS);

   All_Relays_HiZ();
}

void Set_Relais(unsigned char relay)
{
   All_Relays_HiZ();

   Relay_High(relay);

   RelayBus = 1;

   wait_ms(PULSE_MS);

   RelayBus = 0;

   All_Relays_HiZ();
}

void Init_Relais_Defined(void)
{
   Reset_Relais(REL_L1);
   Reset_Relais(REL_L2);
   Reset_Relais(REL_L3);
   Reset_Relais(REL_L4);
   Reset_Relais(REL_L5);
   Reset_Relais(REL_L6);
   Reset_Relais(REL_L7);
   Reset_Relais(REL_L8);

   Reset_Relais(REL_C1);
   Reset_Relais(REL_C2);
   Reset_Relais(REL_C3);
   Reset_Relais(REL_C4);
   Reset_Relais(REL_C5);
   Reset_Relais(REL_C6);
   Reset_Relais(REL_C7);

   Reset_Relais(REL_HIZ);

   All_Relays_HiZ();
}

void pic_init (void) {
  CMCON = 0b00000111; // Comparator OFF

  OSCCON = 0b01100000; // 4 MHz oscillator      //  0b01110000  - 8 MHz
  PLLEN_bit = 1; //4xPLL enable   4 * 4 = 16 MHz

  PORTA = 0;
  PORTB = 0;
  PORTC = 0;
  LATA = 0;
  LATB = 0;
  LATC = 0;
  TRISA = 0xFF;
  TRISB = 0xFF;
  TRISC = 0xFF;
  TRISA2_bit = 0;   // LED Ausgang
  TRISA4_bit = 0;   // RelayBus Ausgang
  TRISB0_bit = 1;   // Taster Eingang
  //
  ADC_Init();
  //

  ADCON1 = 0b00001101; // ADC ports conf
  //
  RBPU_bit = 0;

  //interrupt setting
  GIE_bit = 0;
}