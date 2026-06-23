// Connections - YT-100 v1.5 / PIC18F2520
#define REL_L1    1
#define REL_L2    2
#define REL_L3    3
#define REL_L4    4
#define REL_L5    5
#define REL_L6    6
#define REL_L7    7
#define REL_L8    8

#define REL_C1    9
#define REL_C2    10
#define REL_C3    11
#define REL_C4    12
#define REL_C5    13
#define REL_C6    14
#define REL_C7    15

#define REL_HIZ   16

#define RELAY_COUNT 16
#define PULSE_MS    10

void All_Relays_HiZ(void);
void Relay_Low(unsigned char relay);
void Relay_High(unsigned char relay);
void Reset_Relais(unsigned char relay);
void Set_Relais(unsigned char relay);
void Init_Relais_Defined(void);
// TX/CAT-Umschaltung / freie Zuordnung
sbit RelayBus at LATA4_bit;

// Taster bleibt RB0 / Pin 21
// sbit Button at RB0_bit;

// C-Relais YT-100
sbit Cap_10   at LATB1_bit; // C1
sbit Cap_22   at LATB2_bit; // C2
sbit Cap_47   at LATB3_bit; // C3
sbit Cap_100  at LATB4_bit; // C4
sbit Cap_220  at LATB5_bit; // C5
sbit Cap_470  at LATB6_bit; // C6
sbit Cap_1000 at LATB7_bit; // C7

// Hi/Lo-Z
sbit Cap_sw at LATA7_bit;

// L-Relais YT-100
sbit Ind_005 at LATC0_bit; // L1
sbit Ind_011 at LATC1_bit; // L2
sbit Ind_022 at LATC2_bit; // L3
sbit Ind_045 at LATC3_bit; // L4
sbit Ind_1   at LATC4_bit; // L5
sbit Ind_22  at LATC5_bit; // L6
sbit Ind_45  at LATA5_bit; // L7
sbit Ind_9   at LATA6_bit; // L8

// Direction-Bits

sbit Cap_10_Direction   at TRISB1_bit;
sbit Cap_22_Direction   at TRISB2_bit;
sbit Cap_47_Direction   at TRISB3_bit;
sbit Cap_100_Direction  at TRISB4_bit;
sbit Cap_220_Direction  at TRISB5_bit;
sbit Cap_470_Direction  at TRISB6_bit;
sbit Cap_1000_Direction at TRISB7_bit;

sbit Cap_sw_Direction   at TRISA7_bit;

sbit Ind_005_Direction  at TRISC0_bit;
sbit Ind_011_Direction  at TRISC1_bit;
sbit Ind_022_Direction  at TRISC2_bit;
sbit Ind_045_Direction  at TRISC3_bit;
sbit Ind_1_Direction    at TRISC4_bit;
sbit Ind_22_Direction   at TRISC5_bit;
sbit Ind_45_Direction   at TRISA5_bit;
sbit Ind_9_Direction    at TRISA6_bit;

sbit Soft_I2C_Scl           at LATC6_bit;
sbit Soft_I2C_Sda           at LATC7_bit;
sbit Soft_I2C_Scl_Direction at TRISC6_bit;
sbit Soft_I2C_Sda_Direction at TRISC7_bit;

void pic_init(void);