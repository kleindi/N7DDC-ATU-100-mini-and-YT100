
_wait_ms:

;pic_init.c,26 :: 		void wait_ms(unsigned int ms)
;pic_init.c,30 :: 		for(i = 0; i < ms; i++) {
	CLRF        R1 
	CLRF        R2 
L_wait_ms0:
	MOVF        FARG_wait_ms_ms+1, 0 
	SUBWF       R2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__wait_ms41
	MOVF        FARG_wait_ms_ms+0, 0 
	SUBWF       R1, 0 
L__wait_ms41:
	BTFSC       STATUS+0, 0 
	GOTO        L_wait_ms1
;pic_init.c,31 :: 		asm CLRWDT;
	CLRWDT
;pic_init.c,32 :: 		Delay_ms(1);
	MOVLW       3
	MOVWF       R12, 0
	MOVLW       151
	MOVWF       R13, 0
L_wait_ms3:
	DECFSZ      R13, 1, 1
	BRA         L_wait_ms3
	DECFSZ      R12, 1, 1
	BRA         L_wait_ms3
	NOP
	NOP
;pic_init.c,30 :: 		for(i = 0; i < ms; i++) {
	INFSNZ      R1, 1 
	INCF        R2, 1 
;pic_init.c,33 :: 		}
	GOTO        L_wait_ms0
L_wait_ms1:
;pic_init.c,34 :: 		}
L_end_wait_ms:
	RETURN      0
; end of _wait_ms

_All_Relays_HiZ:

;pic_init.c,36 :: 		void All_Relays_HiZ(void)
;pic_init.c,38 :: 		RelayBus = 0;
	BCF         LATA4_bit+0, BitPos(LATA4_bit+0) 
;pic_init.c,40 :: 		Ind_005_Direction = 1;
	BSF         TRISC0_bit+0, BitPos(TRISC0_bit+0) 
;pic_init.c,41 :: 		Ind_011_Direction = 1;
	BSF         TRISC1_bit+0, BitPos(TRISC1_bit+0) 
;pic_init.c,42 :: 		Ind_022_Direction = 1;
	BSF         TRISC2_bit+0, BitPos(TRISC2_bit+0) 
;pic_init.c,43 :: 		Ind_045_Direction = 1;
	BSF         TRISC3_bit+0, BitPos(TRISC3_bit+0) 
;pic_init.c,44 :: 		Ind_1_Direction   = 1;
	BSF         TRISC4_bit+0, BitPos(TRISC4_bit+0) 
;pic_init.c,45 :: 		Ind_22_Direction  = 1;
	BSF         TRISC5_bit+0, BitPos(TRISC5_bit+0) 
;pic_init.c,46 :: 		Ind_45_Direction  = 1;
	BSF         TRISA5_bit+0, BitPos(TRISA5_bit+0) 
;pic_init.c,47 :: 		Ind_9_Direction   = 1;
	BSF         TRISA6_bit+0, BitPos(TRISA6_bit+0) 
;pic_init.c,49 :: 		Cap_10_Direction   = 1;
	BSF         TRISB1_bit+0, BitPos(TRISB1_bit+0) 
;pic_init.c,50 :: 		Cap_22_Direction   = 1;
	BSF         TRISB2_bit+0, BitPos(TRISB2_bit+0) 
;pic_init.c,51 :: 		Cap_47_Direction   = 1;
	BSF         TRISB3_bit+0, BitPos(TRISB3_bit+0) 
;pic_init.c,52 :: 		Cap_100_Direction  = 1;
	BSF         TRISB4_bit+0, BitPos(TRISB4_bit+0) 
;pic_init.c,53 :: 		Cap_220_Direction  = 1;
	BSF         TRISB5_bit+0, BitPos(TRISB5_bit+0) 
;pic_init.c,54 :: 		Cap_470_Direction  = 1;
	BSF         TRISB6_bit+0, BitPos(TRISB6_bit+0) 
;pic_init.c,55 :: 		Cap_1000_Direction = 1;
	BSF         TRISB7_bit+0, BitPos(TRISB7_bit+0) 
;pic_init.c,57 :: 		Cap_sw_Direction   = 1;
	BSF         TRISA7_bit+0, BitPos(TRISA7_bit+0) 
;pic_init.c,58 :: 		}
L_end_All_Relays_HiZ:
	RETURN      0
; end of _All_Relays_HiZ

_Relay_Low:

;pic_init.c,59 :: 		void Relay_Low(unsigned char relay)
;pic_init.c,61 :: 		switch(relay)
	GOTO        L_Relay_Low4
;pic_init.c,63 :: 		case REL_L1: Ind_005 = 0; Ind_005_Direction = 0; break;
L_Relay_Low6:
	BCF         LATC0_bit+0, BitPos(LATC0_bit+0) 
	BCF         TRISC0_bit+0, BitPos(TRISC0_bit+0) 
	GOTO        L_Relay_Low5
;pic_init.c,64 :: 		case REL_L2: Ind_011 = 0; Ind_011_Direction = 0; break;
L_Relay_Low7:
	BCF         LATC1_bit+0, BitPos(LATC1_bit+0) 
	BCF         TRISC1_bit+0, BitPos(TRISC1_bit+0) 
	GOTO        L_Relay_Low5
;pic_init.c,65 :: 		case REL_L3: Ind_022 = 0; Ind_022_Direction = 0; break;
L_Relay_Low8:
	BCF         LATC2_bit+0, BitPos(LATC2_bit+0) 
	BCF         TRISC2_bit+0, BitPos(TRISC2_bit+0) 
	GOTO        L_Relay_Low5
;pic_init.c,66 :: 		case REL_L4: Ind_045 = 0; Ind_045_Direction = 0; break;
L_Relay_Low9:
	BCF         LATC3_bit+0, BitPos(LATC3_bit+0) 
	BCF         TRISC3_bit+0, BitPos(TRISC3_bit+0) 
	GOTO        L_Relay_Low5
;pic_init.c,67 :: 		case REL_L5: Ind_1   = 0; Ind_1_Direction   = 0; break;
L_Relay_Low10:
	BCF         LATC4_bit+0, BitPos(LATC4_bit+0) 
	BCF         TRISC4_bit+0, BitPos(TRISC4_bit+0) 
	GOTO        L_Relay_Low5
;pic_init.c,68 :: 		case REL_L6: Ind_22  = 0; Ind_22_Direction  = 0; break;
L_Relay_Low11:
	BCF         LATC5_bit+0, BitPos(LATC5_bit+0) 
	BCF         TRISC5_bit+0, BitPos(TRISC5_bit+0) 
	GOTO        L_Relay_Low5
;pic_init.c,69 :: 		case REL_L7: Ind_45  = 0; Ind_45_Direction  = 0; break;
L_Relay_Low12:
	BCF         LATA5_bit+0, BitPos(LATA5_bit+0) 
	BCF         TRISA5_bit+0, BitPos(TRISA5_bit+0) 
	GOTO        L_Relay_Low5
;pic_init.c,70 :: 		case REL_L8: Ind_9   = 0; Ind_9_Direction   = 0; break;
L_Relay_Low13:
	BCF         LATA6_bit+0, BitPos(LATA6_bit+0) 
	BCF         TRISA6_bit+0, BitPos(TRISA6_bit+0) 
	GOTO        L_Relay_Low5
;pic_init.c,72 :: 		case REL_C1:  Cap_10   = 0; Cap_10_Direction   = 0; break;
L_Relay_Low14:
	BCF         LATB1_bit+0, BitPos(LATB1_bit+0) 
	BCF         TRISB1_bit+0, BitPos(TRISB1_bit+0) 
	GOTO        L_Relay_Low5
;pic_init.c,73 :: 		case REL_C2:  Cap_22   = 0; Cap_22_Direction   = 0; break;
L_Relay_Low15:
	BCF         LATB2_bit+0, BitPos(LATB2_bit+0) 
	BCF         TRISB2_bit+0, BitPos(TRISB2_bit+0) 
	GOTO        L_Relay_Low5
;pic_init.c,74 :: 		case REL_C3:  Cap_47   = 0; Cap_47_Direction   = 0; break;
L_Relay_Low16:
	BCF         LATB3_bit+0, BitPos(LATB3_bit+0) 
	BCF         TRISB3_bit+0, BitPos(TRISB3_bit+0) 
	GOTO        L_Relay_Low5
;pic_init.c,75 :: 		case REL_C4:  Cap_100  = 0; Cap_100_Direction  = 0; break;
L_Relay_Low17:
	BCF         LATB4_bit+0, BitPos(LATB4_bit+0) 
	BCF         TRISB4_bit+0, BitPos(TRISB4_bit+0) 
	GOTO        L_Relay_Low5
;pic_init.c,76 :: 		case REL_C5:  Cap_220  = 0; Cap_220_Direction  = 0; break;
L_Relay_Low18:
	BCF         LATB5_bit+0, BitPos(LATB5_bit+0) 
	BCF         TRISB5_bit+0, BitPos(TRISB5_bit+0) 
	GOTO        L_Relay_Low5
;pic_init.c,77 :: 		case REL_C6:  Cap_470  = 0; Cap_470_Direction  = 0; break;
L_Relay_Low19:
	BCF         LATB6_bit+0, BitPos(LATB6_bit+0) 
	BCF         TRISB6_bit+0, BitPos(TRISB6_bit+0) 
	GOTO        L_Relay_Low5
;pic_init.c,78 :: 		case REL_C7:  Cap_1000 = 0; Cap_1000_Direction = 0; break;
L_Relay_Low20:
	BCF         LATB7_bit+0, BitPos(LATB7_bit+0) 
	BCF         TRISB7_bit+0, BitPos(TRISB7_bit+0) 
	GOTO        L_Relay_Low5
;pic_init.c,80 :: 		case REL_HIZ: Cap_sw   = 0; Cap_sw_Direction   = 0; break;
L_Relay_Low21:
	BCF         LATA7_bit+0, BitPos(LATA7_bit+0) 
	BCF         TRISA7_bit+0, BitPos(TRISA7_bit+0) 
	GOTO        L_Relay_Low5
;pic_init.c,81 :: 		}
L_Relay_Low4:
	MOVF        FARG_Relay_Low_relay+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L_Relay_Low6
	MOVF        FARG_Relay_Low_relay+0, 0 
	XORLW       2
	BTFSC       STATUS+0, 2 
	GOTO        L_Relay_Low7
	MOVF        FARG_Relay_Low_relay+0, 0 
	XORLW       3
	BTFSC       STATUS+0, 2 
	GOTO        L_Relay_Low8
	MOVF        FARG_Relay_Low_relay+0, 0 
	XORLW       4
	BTFSC       STATUS+0, 2 
	GOTO        L_Relay_Low9
	MOVF        FARG_Relay_Low_relay+0, 0 
	XORLW       5
	BTFSC       STATUS+0, 2 
	GOTO        L_Relay_Low10
	MOVF        FARG_Relay_Low_relay+0, 0 
	XORLW       6
	BTFSC       STATUS+0, 2 
	GOTO        L_Relay_Low11
	MOVF        FARG_Relay_Low_relay+0, 0 
	XORLW       7
	BTFSC       STATUS+0, 2 
	GOTO        L_Relay_Low12
	MOVF        FARG_Relay_Low_relay+0, 0 
	XORLW       8
	BTFSC       STATUS+0, 2 
	GOTO        L_Relay_Low13
	MOVF        FARG_Relay_Low_relay+0, 0 
	XORLW       9
	BTFSC       STATUS+0, 2 
	GOTO        L_Relay_Low14
	MOVF        FARG_Relay_Low_relay+0, 0 
	XORLW       10
	BTFSC       STATUS+0, 2 
	GOTO        L_Relay_Low15
	MOVF        FARG_Relay_Low_relay+0, 0 
	XORLW       11
	BTFSC       STATUS+0, 2 
	GOTO        L_Relay_Low16
	MOVF        FARG_Relay_Low_relay+0, 0 
	XORLW       12
	BTFSC       STATUS+0, 2 
	GOTO        L_Relay_Low17
	MOVF        FARG_Relay_Low_relay+0, 0 
	XORLW       13
	BTFSC       STATUS+0, 2 
	GOTO        L_Relay_Low18
	MOVF        FARG_Relay_Low_relay+0, 0 
	XORLW       14
	BTFSC       STATUS+0, 2 
	GOTO        L_Relay_Low19
	MOVF        FARG_Relay_Low_relay+0, 0 
	XORLW       15
	BTFSC       STATUS+0, 2 
	GOTO        L_Relay_Low20
	MOVF        FARG_Relay_Low_relay+0, 0 
	XORLW       16
	BTFSC       STATUS+0, 2 
	GOTO        L_Relay_Low21
L_Relay_Low5:
;pic_init.c,82 :: 		}
L_end_Relay_Low:
	RETURN      0
; end of _Relay_Low

_Relay_High:

;pic_init.c,84 :: 		void Relay_High(unsigned char relay)
;pic_init.c,86 :: 		switch(relay)
	GOTO        L_Relay_High22
;pic_init.c,88 :: 		case REL_L1: Ind_005 = 1; Ind_005_Direction = 0; break;
L_Relay_High24:
	BSF         LATC0_bit+0, BitPos(LATC0_bit+0) 
	BCF         TRISC0_bit+0, BitPos(TRISC0_bit+0) 
	GOTO        L_Relay_High23
;pic_init.c,89 :: 		case REL_L2: Ind_011 = 1; Ind_011_Direction = 0; break;
L_Relay_High25:
	BSF         LATC1_bit+0, BitPos(LATC1_bit+0) 
	BCF         TRISC1_bit+0, BitPos(TRISC1_bit+0) 
	GOTO        L_Relay_High23
;pic_init.c,90 :: 		case REL_L3: Ind_022 = 1; Ind_022_Direction = 0; break;
L_Relay_High26:
	BSF         LATC2_bit+0, BitPos(LATC2_bit+0) 
	BCF         TRISC2_bit+0, BitPos(TRISC2_bit+0) 
	GOTO        L_Relay_High23
;pic_init.c,91 :: 		case REL_L4: Ind_045 = 1; Ind_045_Direction = 0; break;
L_Relay_High27:
	BSF         LATC3_bit+0, BitPos(LATC3_bit+0) 
	BCF         TRISC3_bit+0, BitPos(TRISC3_bit+0) 
	GOTO        L_Relay_High23
;pic_init.c,92 :: 		case REL_L5: Ind_1   = 1; Ind_1_Direction   = 0; break;
L_Relay_High28:
	BSF         LATC4_bit+0, BitPos(LATC4_bit+0) 
	BCF         TRISC4_bit+0, BitPos(TRISC4_bit+0) 
	GOTO        L_Relay_High23
;pic_init.c,93 :: 		case REL_L6: Ind_22  = 1; Ind_22_Direction  = 0; break;
L_Relay_High29:
	BSF         LATC5_bit+0, BitPos(LATC5_bit+0) 
	BCF         TRISC5_bit+0, BitPos(TRISC5_bit+0) 
	GOTO        L_Relay_High23
;pic_init.c,94 :: 		case REL_L7: Ind_45  = 1; Ind_45_Direction  = 0; break;
L_Relay_High30:
	BSF         LATA5_bit+0, BitPos(LATA5_bit+0) 
	BCF         TRISA5_bit+0, BitPos(TRISA5_bit+0) 
	GOTO        L_Relay_High23
;pic_init.c,95 :: 		case REL_L8: Ind_9   = 1; Ind_9_Direction   = 0; break;
L_Relay_High31:
	BSF         LATA6_bit+0, BitPos(LATA6_bit+0) 
	BCF         TRISA6_bit+0, BitPos(TRISA6_bit+0) 
	GOTO        L_Relay_High23
;pic_init.c,97 :: 		case REL_C1:  Cap_10   = 1; Cap_10_Direction   = 0; break;
L_Relay_High32:
	BSF         LATB1_bit+0, BitPos(LATB1_bit+0) 
	BCF         TRISB1_bit+0, BitPos(TRISB1_bit+0) 
	GOTO        L_Relay_High23
;pic_init.c,98 :: 		case REL_C2:  Cap_22   = 1; Cap_22_Direction   = 0; break;
L_Relay_High33:
	BSF         LATB2_bit+0, BitPos(LATB2_bit+0) 
	BCF         TRISB2_bit+0, BitPos(TRISB2_bit+0) 
	GOTO        L_Relay_High23
;pic_init.c,99 :: 		case REL_C3:  Cap_47   = 1; Cap_47_Direction   = 0; break;
L_Relay_High34:
	BSF         LATB3_bit+0, BitPos(LATB3_bit+0) 
	BCF         TRISB3_bit+0, BitPos(TRISB3_bit+0) 
	GOTO        L_Relay_High23
;pic_init.c,100 :: 		case REL_C4:  Cap_100  = 1; Cap_100_Direction  = 0; break;
L_Relay_High35:
	BSF         LATB4_bit+0, BitPos(LATB4_bit+0) 
	BCF         TRISB4_bit+0, BitPos(TRISB4_bit+0) 
	GOTO        L_Relay_High23
;pic_init.c,101 :: 		case REL_C5:  Cap_220  = 1; Cap_220_Direction  = 0; break;
L_Relay_High36:
	BSF         LATB5_bit+0, BitPos(LATB5_bit+0) 
	BCF         TRISB5_bit+0, BitPos(TRISB5_bit+0) 
	GOTO        L_Relay_High23
;pic_init.c,102 :: 		case REL_C6:  Cap_470  = 1; Cap_470_Direction  = 0; break;
L_Relay_High37:
	BSF         LATB6_bit+0, BitPos(LATB6_bit+0) 
	BCF         TRISB6_bit+0, BitPos(TRISB6_bit+0) 
	GOTO        L_Relay_High23
;pic_init.c,103 :: 		case REL_C7:  Cap_1000 = 1; Cap_1000_Direction = 0; break;
L_Relay_High38:
	BSF         LATB7_bit+0, BitPos(LATB7_bit+0) 
	BCF         TRISB7_bit+0, BitPos(TRISB7_bit+0) 
	GOTO        L_Relay_High23
;pic_init.c,105 :: 		case REL_HIZ: Cap_sw   = 1; Cap_sw_Direction   = 0; break;
L_Relay_High39:
	BSF         LATA7_bit+0, BitPos(LATA7_bit+0) 
	BCF         TRISA7_bit+0, BitPos(TRISA7_bit+0) 
	GOTO        L_Relay_High23
;pic_init.c,106 :: 		}
L_Relay_High22:
	MOVF        FARG_Relay_High_relay+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L_Relay_High24
	MOVF        FARG_Relay_High_relay+0, 0 
	XORLW       2
	BTFSC       STATUS+0, 2 
	GOTO        L_Relay_High25
	MOVF        FARG_Relay_High_relay+0, 0 
	XORLW       3
	BTFSC       STATUS+0, 2 
	GOTO        L_Relay_High26
	MOVF        FARG_Relay_High_relay+0, 0 
	XORLW       4
	BTFSC       STATUS+0, 2 
	GOTO        L_Relay_High27
	MOVF        FARG_Relay_High_relay+0, 0 
	XORLW       5
	BTFSC       STATUS+0, 2 
	GOTO        L_Relay_High28
	MOVF        FARG_Relay_High_relay+0, 0 
	XORLW       6
	BTFSC       STATUS+0, 2 
	GOTO        L_Relay_High29
	MOVF        FARG_Relay_High_relay+0, 0 
	XORLW       7
	BTFSC       STATUS+0, 2 
	GOTO        L_Relay_High30
	MOVF        FARG_Relay_High_relay+0, 0 
	XORLW       8
	BTFSC       STATUS+0, 2 
	GOTO        L_Relay_High31
	MOVF        FARG_Relay_High_relay+0, 0 
	XORLW       9
	BTFSC       STATUS+0, 2 
	GOTO        L_Relay_High32
	MOVF        FARG_Relay_High_relay+0, 0 
	XORLW       10
	BTFSC       STATUS+0, 2 
	GOTO        L_Relay_High33
	MOVF        FARG_Relay_High_relay+0, 0 
	XORLW       11
	BTFSC       STATUS+0, 2 
	GOTO        L_Relay_High34
	MOVF        FARG_Relay_High_relay+0, 0 
	XORLW       12
	BTFSC       STATUS+0, 2 
	GOTO        L_Relay_High35
	MOVF        FARG_Relay_High_relay+0, 0 
	XORLW       13
	BTFSC       STATUS+0, 2 
	GOTO        L_Relay_High36
	MOVF        FARG_Relay_High_relay+0, 0 
	XORLW       14
	BTFSC       STATUS+0, 2 
	GOTO        L_Relay_High37
	MOVF        FARG_Relay_High_relay+0, 0 
	XORLW       15
	BTFSC       STATUS+0, 2 
	GOTO        L_Relay_High38
	MOVF        FARG_Relay_High_relay+0, 0 
	XORLW       16
	BTFSC       STATUS+0, 2 
	GOTO        L_Relay_High39
L_Relay_High23:
;pic_init.c,107 :: 		}
L_end_Relay_High:
	RETURN      0
; end of _Relay_High

_Reset_Relais:

;pic_init.c,109 :: 		void Reset_Relais(unsigned char relay)
;pic_init.c,111 :: 		All_Relays_HiZ();
	CALL        _All_Relays_HiZ+0, 0
;pic_init.c,113 :: 		RelayBus = 0;
	BCF         LATA4_bit+0, BitPos(LATA4_bit+0) 
;pic_init.c,115 :: 		Relay_Low(relay);
	MOVF        FARG_Reset_Relais_relay+0, 0 
	MOVWF       FARG_Relay_Low_relay+0 
	CALL        _Relay_Low+0, 0
;pic_init.c,117 :: 		wait_ms(PULSE_MS);
	MOVLW       10
	MOVWF       FARG_wait_ms_ms+0 
	MOVLW       0
	MOVWF       FARG_wait_ms_ms+1 
	CALL        _wait_ms+0, 0
;pic_init.c,119 :: 		All_Relays_HiZ();
	CALL        _All_Relays_HiZ+0, 0
;pic_init.c,120 :: 		}
L_end_Reset_Relais:
	RETURN      0
; end of _Reset_Relais

_Set_Relais:

;pic_init.c,122 :: 		void Set_Relais(unsigned char relay)
;pic_init.c,124 :: 		All_Relays_HiZ();
	CALL        _All_Relays_HiZ+0, 0
;pic_init.c,126 :: 		Relay_High(relay);
	MOVF        FARG_Set_Relais_relay+0, 0 
	MOVWF       FARG_Relay_High_relay+0 
	CALL        _Relay_High+0, 0
;pic_init.c,128 :: 		RelayBus = 1;
	BSF         LATA4_bit+0, BitPos(LATA4_bit+0) 
;pic_init.c,130 :: 		wait_ms(PULSE_MS);
	MOVLW       10
	MOVWF       FARG_wait_ms_ms+0 
	MOVLW       0
	MOVWF       FARG_wait_ms_ms+1 
	CALL        _wait_ms+0, 0
;pic_init.c,132 :: 		RelayBus = 0;
	BCF         LATA4_bit+0, BitPos(LATA4_bit+0) 
;pic_init.c,134 :: 		All_Relays_HiZ();
	CALL        _All_Relays_HiZ+0, 0
;pic_init.c,135 :: 		}
L_end_Set_Relais:
	RETURN      0
; end of _Set_Relais

_Init_Relais_Defined:

;pic_init.c,137 :: 		void Init_Relais_Defined(void)
;pic_init.c,139 :: 		Reset_Relais(REL_L1);
	MOVLW       1
	MOVWF       FARG_Reset_Relais_relay+0 
	CALL        _Reset_Relais+0, 0
;pic_init.c,140 :: 		Reset_Relais(REL_L2);
	MOVLW       2
	MOVWF       FARG_Reset_Relais_relay+0 
	CALL        _Reset_Relais+0, 0
;pic_init.c,141 :: 		Reset_Relais(REL_L3);
	MOVLW       3
	MOVWF       FARG_Reset_Relais_relay+0 
	CALL        _Reset_Relais+0, 0
;pic_init.c,142 :: 		Reset_Relais(REL_L4);
	MOVLW       4
	MOVWF       FARG_Reset_Relais_relay+0 
	CALL        _Reset_Relais+0, 0
;pic_init.c,143 :: 		Reset_Relais(REL_L5);
	MOVLW       5
	MOVWF       FARG_Reset_Relais_relay+0 
	CALL        _Reset_Relais+0, 0
;pic_init.c,144 :: 		Reset_Relais(REL_L6);
	MOVLW       6
	MOVWF       FARG_Reset_Relais_relay+0 
	CALL        _Reset_Relais+0, 0
;pic_init.c,145 :: 		Reset_Relais(REL_L7);
	MOVLW       7
	MOVWF       FARG_Reset_Relais_relay+0 
	CALL        _Reset_Relais+0, 0
;pic_init.c,146 :: 		Reset_Relais(REL_L8);
	MOVLW       8
	MOVWF       FARG_Reset_Relais_relay+0 
	CALL        _Reset_Relais+0, 0
;pic_init.c,148 :: 		Reset_Relais(REL_C1);
	MOVLW       9
	MOVWF       FARG_Reset_Relais_relay+0 
	CALL        _Reset_Relais+0, 0
;pic_init.c,149 :: 		Reset_Relais(REL_C2);
	MOVLW       10
	MOVWF       FARG_Reset_Relais_relay+0 
	CALL        _Reset_Relais+0, 0
;pic_init.c,150 :: 		Reset_Relais(REL_C3);
	MOVLW       11
	MOVWF       FARG_Reset_Relais_relay+0 
	CALL        _Reset_Relais+0, 0
;pic_init.c,151 :: 		Reset_Relais(REL_C4);
	MOVLW       12
	MOVWF       FARG_Reset_Relais_relay+0 
	CALL        _Reset_Relais+0, 0
;pic_init.c,152 :: 		Reset_Relais(REL_C5);
	MOVLW       13
	MOVWF       FARG_Reset_Relais_relay+0 
	CALL        _Reset_Relais+0, 0
;pic_init.c,153 :: 		Reset_Relais(REL_C6);
	MOVLW       14
	MOVWF       FARG_Reset_Relais_relay+0 
	CALL        _Reset_Relais+0, 0
;pic_init.c,154 :: 		Reset_Relais(REL_C7);
	MOVLW       15
	MOVWF       FARG_Reset_Relais_relay+0 
	CALL        _Reset_Relais+0, 0
;pic_init.c,156 :: 		Reset_Relais(REL_HIZ);
	MOVLW       16
	MOVWF       FARG_Reset_Relais_relay+0 
	CALL        _Reset_Relais+0, 0
;pic_init.c,158 :: 		All_Relays_HiZ();
	CALL        _All_Relays_HiZ+0, 0
;pic_init.c,159 :: 		}
L_end_Init_Relais_Defined:
	RETURN      0
; end of _Init_Relais_Defined

_pic_init:

;pic_init.c,161 :: 		void pic_init (void) {
;pic_init.c,162 :: 		CMCON = 0b00000111; // Comparator OFF
	MOVLW       7
	MOVWF       CMCON+0 
;pic_init.c,164 :: 		OSCCON = 0b01100000; // 4 MHz oscillator      //  0b01110000  - 8 MHz
	MOVLW       96
	MOVWF       OSCCON+0 
;pic_init.c,165 :: 		PLLEN_bit = 1; //4xPLL enable   4 * 4 = 16 MHz
	BSF         PLLEN_bit+0, BitPos(PLLEN_bit+0) 
;pic_init.c,167 :: 		PORTA = 0;
	CLRF        PORTA+0 
;pic_init.c,168 :: 		PORTB = 0;
	CLRF        PORTB+0 
;pic_init.c,169 :: 		PORTC = 0;
	CLRF        PORTC+0 
;pic_init.c,170 :: 		LATA = 0;
	CLRF        LATA+0 
;pic_init.c,171 :: 		LATB = 0;
	CLRF        LATB+0 
;pic_init.c,172 :: 		LATC = 0;
	CLRF        LATC+0 
;pic_init.c,173 :: 		TRISA = 0xFF;
	MOVLW       255
	MOVWF       TRISA+0 
;pic_init.c,174 :: 		TRISB = 0xFF;
	MOVLW       255
	MOVWF       TRISB+0 
;pic_init.c,175 :: 		TRISC = 0xFF;
	MOVLW       255
	MOVWF       TRISC+0 
;pic_init.c,176 :: 		TRISA2_bit = 0;   // LED Ausgang
	BCF         TRISA2_bit+0, BitPos(TRISA2_bit+0) 
;pic_init.c,177 :: 		TRISA4_bit = 0;   // RelayBus Ausgang
	BCF         TRISA4_bit+0, BitPos(TRISA4_bit+0) 
;pic_init.c,178 :: 		TRISB0_bit = 1;   // Taster Eingang
	BSF         TRISB0_bit+0, BitPos(TRISB0_bit+0) 
;pic_init.c,180 :: 		ADC_Init();
	CALL        _ADC_Init+0, 0
;pic_init.c,183 :: 		ADCON1 = 0b00001101; // ADC ports conf
	MOVLW       13
	MOVWF       ADCON1+0 
;pic_init.c,185 :: 		RBPU_bit = 0;
	BCF         RBPU_bit+0, BitPos(RBPU_bit+0) 
;pic_init.c,188 :: 		GIE_bit = 0;
	BCF         GIE_bit+0, BitPos(GIE_bit+0) 
;pic_init.c,189 :: 		}
L_end_pic_init:
	RETURN      0
; end of _pic_init
