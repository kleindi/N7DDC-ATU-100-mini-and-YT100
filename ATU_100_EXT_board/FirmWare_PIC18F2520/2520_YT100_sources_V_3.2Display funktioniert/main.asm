
_correction:

;main.h,42 :: 		int correction(int input) {
;main.h,43 :: 		if(input <= 80) return 0;
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction485
	MOVF        FARG_correction_input+0, 0 
	SUBLW       80
L__correction485:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction0
	CLRF        R0 
	CLRF        R1 
	GOTO        L_end_correction
L_correction0:
;main.h,44 :: 		if(input <= 171) input += 244;
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction486
	MOVF        FARG_correction_input+0, 0 
	SUBLW       171
L__correction486:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction1
	MOVLW       244
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       0
	ADDWFC      FARG_correction_input+1, 1 
	GOTO        L_correction2
L_correction1:
;main.h,45 :: 		else if(input <= 328) input += 254;
	MOVLW       128
	XORLW       1
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction487
	MOVF        FARG_correction_input+0, 0 
	SUBLW       72
L__correction487:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction3
	MOVLW       254
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       0
	ADDWFC      FARG_correction_input+1, 1 
	GOTO        L_correction4
L_correction3:
;main.h,46 :: 		else if(input <= 582) input += 280;
	MOVLW       128
	XORLW       2
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction488
	MOVF        FARG_correction_input+0, 0 
	SUBLW       70
L__correction488:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction5
	MOVLW       24
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       1
	ADDWFC      FARG_correction_input+1, 1 
	GOTO        L_correction6
L_correction5:
;main.h,47 :: 		else if(input <= 820) input += 297;
	MOVLW       128
	XORLW       3
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction489
	MOVF        FARG_correction_input+0, 0 
	SUBLW       52
L__correction489:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction7
	MOVLW       41
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       1
	ADDWFC      FARG_correction_input+1, 1 
	GOTO        L_correction8
L_correction7:
;main.h,48 :: 		else if(input <= 1100) input += 310;
	MOVLW       128
	XORLW       4
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction490
	MOVF        FARG_correction_input+0, 0 
	SUBLW       76
L__correction490:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction9
	MOVLW       54
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       1
	ADDWFC      FARG_correction_input+1, 1 
	GOTO        L_correction10
L_correction9:
;main.h,49 :: 		else if(input <= 2181) input += 430;
	MOVLW       128
	XORLW       8
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction491
	MOVF        FARG_correction_input+0, 0 
	SUBLW       133
L__correction491:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction11
	MOVLW       174
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       1
	ADDWFC      FARG_correction_input+1, 1 
	GOTO        L_correction12
L_correction11:
;main.h,50 :: 		else if(input <= 3322) input += 484;
	MOVLW       128
	XORLW       12
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction492
	MOVF        FARG_correction_input+0, 0 
	SUBLW       250
L__correction492:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction13
	MOVLW       228
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       1
	ADDWFC      FARG_correction_input+1, 1 
	GOTO        L_correction14
L_correction13:
;main.h,51 :: 		else if(input <= 4623) input += 530;
	MOVLW       128
	XORLW       18
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction493
	MOVF        FARG_correction_input+0, 0 
	SUBLW       15
L__correction493:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction15
	MOVLW       18
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       2
	ADDWFC      FARG_correction_input+1, 1 
	GOTO        L_correction16
L_correction15:
;main.h,52 :: 		else if(input <= 5862) input += 648;
	MOVLW       128
	XORLW       22
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction494
	MOVF        FARG_correction_input+0, 0 
	SUBLW       230
L__correction494:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction17
	MOVLW       136
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       2
	ADDWFC      FARG_correction_input+1, 1 
	GOTO        L_correction18
L_correction17:
;main.h,53 :: 		else if(input <= 7146) input += 743;
	MOVLW       128
	XORLW       27
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction495
	MOVF        FARG_correction_input+0, 0 
	SUBLW       234
L__correction495:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction19
	MOVLW       231
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       2
	ADDWFC      FARG_correction_input+1, 1 
	GOTO        L_correction20
L_correction19:
;main.h,54 :: 		else if(input <= 8502) input += 800;
	MOVLW       128
	XORLW       33
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction496
	MOVF        FARG_correction_input+0, 0 
	SUBLW       54
L__correction496:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction21
	MOVLW       32
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       3
	ADDWFC      FARG_correction_input+1, 1 
	GOTO        L_correction22
L_correction21:
;main.h,55 :: 		else if(input <= 10500) input += 840;
	MOVLW       128
	XORLW       41
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction497
	MOVF        FARG_correction_input+0, 0 
	SUBLW       4
L__correction497:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction23
	MOVLW       72
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       3
	ADDWFC      FARG_correction_input+1, 1 
	GOTO        L_correction24
L_correction23:
;main.h,56 :: 		else  input += 860;
	MOVLW       92
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       3
	ADDWFC      FARG_correction_input+1, 1 
L_correction24:
L_correction22:
L_correction20:
L_correction18:
L_correction16:
L_correction14:
L_correction12:
L_correction10:
L_correction8:
L_correction6:
L_correction4:
L_correction2:
;main.h,58 :: 		return input;
	MOVF        FARG_correction_input+0, 0 
	MOVWF       R0 
	MOVF        FARG_correction_input+1, 0 
	MOVWF       R1 
;main.h,59 :: 		}
L_end_correction:
	RETURN      0
; end of _correction

_get_reverse:

;main.h,63 :: 		int get_reverse() {
;main.h,64 :: 		return ADC_Get_Sample(1) * 4.883;
	MOVLW       1
	MOVWF       FARG_ADC_Get_Sample_channel+0 
	CALL        _ADC_Get_Sample+0, 0
	CALL        _word2double+0, 0
	MOVLW       137
	MOVWF       R4 
	MOVLW       65
	MOVWF       R5 
	MOVLW       28
	MOVWF       R6 
	MOVLW       129
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	CALL        _double2int+0, 0
;main.h,65 :: 		}
L_end_get_reverse:
	RETURN      0
; end of _get_reverse

_get_forward:

;main.h,68 :: 		int get_forward() {
;main.h,70 :: 		Forward = ADC_Get_Sample(0);
	CLRF        FARG_ADC_Get_Sample_channel+0 
	CALL        _ADC_Get_Sample+0, 0
	MOVF        R0, 0 
	MOVWF       get_forward_Forward_L0+0 
	MOVF        R1, 0 
	MOVWF       get_forward_Forward_L0+1 
;main.h,71 :: 		if(Forward > 1000) Overload = 1;
	MOVLW       128
	XORLW       3
	MOVWF       R2 
	MOVLW       128
	XORWF       R1, 0 
	SUBWF       R2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_forward500
	MOVF        R0, 0 
	SUBLW       232
L__get_forward500:
	BTFSC       STATUS+0, 0 
	GOTO        L_get_forward25
	MOVLW       1
	MOVWF       main_Overload+0 
	GOTO        L_get_forward26
L_get_forward25:
;main.h,72 :: 		else Overload = 0;
	CLRF        main_Overload+0 
L_get_forward26:
;main.h,73 :: 		return Forward * 4.883;
	MOVF        get_forward_Forward_L0+0, 0 
	MOVWF       R0 
	MOVF        get_forward_Forward_L0+1, 0 
	MOVWF       R1 
	CALL        _int2double+0, 0
	MOVLW       137
	MOVWF       R4 
	MOVLW       65
	MOVWF       R5 
	MOVLW       28
	MOVWF       R6 
	MOVLW       129
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	CALL        _double2int+0, 0
;main.h,74 :: 		}
L_end_get_forward:
	RETURN      0
; end of _get_forward

_get_pwr:

;main.h,76 :: 		void get_pwr() {
;main.h,79 :: 		asm CLRWDT;
	CLRWDT
;main.h,81 :: 		Forward = get_forward();
	CALL        _get_forward+0, 0
	MOVF        R0, 0 
	MOVWF       get_pwr_Forward_L0+0 
	MOVF        R1, 0 
	MOVWF       get_pwr_Forward_L0+1 
	MOVLW       0
	BTFSC       R1, 7 
	MOVLW       255
	MOVWF       get_pwr_Forward_L0+2 
	MOVWF       get_pwr_Forward_L0+3 
;main.h,82 :: 		Reverse = get_reverse();
	CALL        _get_reverse+0, 0
	MOVF        R0, 0 
	MOVWF       get_pwr_Reverse_L0+0 
	MOVF        R1, 0 
	MOVWF       get_pwr_Reverse_L0+1 
	MOVLW       0
	BTFSC       R1, 7 
	MOVLW       255
	MOVWF       get_pwr_Reverse_L0+2 
	MOVWF       get_pwr_Reverse_L0+3 
;main.h,83 :: 		if(D_correction==1) p = correction(Forward * 3);
	MOVF        main_D_correction+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_get_pwr27
	MOVF        get_pwr_Forward_L0+0, 0 
	MOVWF       R0 
	MOVF        get_pwr_Forward_L0+1, 0 
	MOVWF       R1 
	MOVLW       3
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_correction_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_correction_input+1 
	CALL        _correction+0, 0
	CALL        _int2double+0, 0
	MOVF        R0, 0 
	MOVWF       get_pwr_p_L0+0 
	MOVF        R1, 0 
	MOVWF       get_pwr_p_L0+1 
	MOVF        R2, 0 
	MOVWF       get_pwr_p_L0+2 
	MOVF        R3, 0 
	MOVWF       get_pwr_p_L0+3 
	GOTO        L_get_pwr28
L_get_pwr27:
;main.h,84 :: 		else p = Forward * 3;
	MOVF        get_pwr_Forward_L0+0, 0 
	MOVWF       R0 
	MOVF        get_pwr_Forward_L0+1, 0 
	MOVWF       R1 
	MOVF        get_pwr_Forward_L0+2, 0 
	MOVWF       R2 
	MOVF        get_pwr_Forward_L0+3, 0 
	MOVWF       R3 
	MOVLW       3
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVWF       R6 
	MOVWF       R7 
	CALL        _Mul_32x32_U+0, 0
	CALL        _longint2double+0, 0
	MOVF        R0, 0 
	MOVWF       get_pwr_p_L0+0 
	MOVF        R1, 0 
	MOVWF       get_pwr_p_L0+1 
	MOVF        R2, 0 
	MOVWF       get_pwr_p_L0+2 
	MOVF        R3, 0 
	MOVWF       get_pwr_p_L0+3 
L_get_pwr28:
;main.h,86 :: 		if(Reverse >= Forward)
	MOVLW       128
	XORWF       get_pwr_Reverse_L0+3, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       get_pwr_Forward_L0+3, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_pwr502
	MOVF        get_pwr_Forward_L0+2, 0 
	SUBWF       get_pwr_Reverse_L0+2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_pwr502
	MOVF        get_pwr_Forward_L0+1, 0 
	SUBWF       get_pwr_Reverse_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_pwr502
	MOVF        get_pwr_Forward_L0+0, 0 
	SUBWF       get_pwr_Reverse_L0+0, 0 
L__get_pwr502:
	BTFSS       STATUS+0, 0 
	GOTO        L_get_pwr29
;main.h,87 :: 		Forward = 999;
	MOVLW       231
	MOVWF       get_pwr_Forward_L0+0 
	MOVLW       3
	MOVWF       get_pwr_Forward_L0+1 
	MOVLW       0
	MOVWF       get_pwr_Forward_L0+2 
	MOVWF       get_pwr_Forward_L0+3 
	GOTO        L_get_pwr30
L_get_pwr29:
;main.h,89 :: 		Forward = ((Forward + Reverse) * 100) / (Forward - Reverse);
	MOVF        get_pwr_Reverse_L0+0, 0 
	ADDWF       get_pwr_Forward_L0+0, 0 
	MOVWF       R0 
	MOVF        get_pwr_Reverse_L0+1, 0 
	ADDWFC      get_pwr_Forward_L0+1, 0 
	MOVWF       R1 
	MOVF        get_pwr_Reverse_L0+2, 0 
	ADDWFC      get_pwr_Forward_L0+2, 0 
	MOVWF       R2 
	MOVF        get_pwr_Reverse_L0+3, 0 
	ADDWFC      get_pwr_Forward_L0+3, 0 
	MOVWF       R3 
	MOVLW       100
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVWF       R6 
	MOVWF       R7 
	CALL        _Mul_32x32_U+0, 0
	MOVF        get_pwr_Forward_L0+0, 0 
	MOVWF       R4 
	MOVF        get_pwr_Forward_L0+1, 0 
	MOVWF       R5 
	MOVF        get_pwr_Forward_L0+2, 0 
	MOVWF       R6 
	MOVF        get_pwr_Forward_L0+3, 0 
	MOVWF       R7 
	MOVF        get_pwr_Reverse_L0+0, 0 
	SUBWF       R4, 1 
	MOVF        get_pwr_Reverse_L0+1, 0 
	SUBWFB      R5, 1 
	MOVF        get_pwr_Reverse_L0+2, 0 
	SUBWFB      R6, 1 
	MOVF        get_pwr_Reverse_L0+3, 0 
	SUBWFB      R7, 1 
	CALL        _Div_32x32_S+0, 0
	MOVF        R0, 0 
	MOVWF       get_pwr_Forward_L0+0 
	MOVF        R1, 0 
	MOVWF       get_pwr_Forward_L0+1 
	MOVF        R2, 0 
	MOVWF       get_pwr_Forward_L0+2 
	MOVF        R3, 0 
	MOVWF       get_pwr_Forward_L0+3 
;main.h,90 :: 		if(Forward>999) Forward = 999;
	MOVLW       128
	MOVWF       R4 
	MOVLW       128
	XORWF       R3, 0 
	SUBWF       R4, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_pwr503
	MOVF        R2, 0 
	SUBLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__get_pwr503
	MOVF        R1, 0 
	SUBLW       3
	BTFSS       STATUS+0, 2 
	GOTO        L__get_pwr503
	MOVF        R0, 0 
	SUBLW       231
L__get_pwr503:
	BTFSC       STATUS+0, 0 
	GOTO        L_get_pwr31
	MOVLW       231
	MOVWF       get_pwr_Forward_L0+0 
	MOVLW       3
	MOVWF       get_pwr_Forward_L0+1 
	MOVLW       0
	MOVWF       get_pwr_Forward_L0+2 
	MOVWF       get_pwr_Forward_L0+3 
L_get_pwr31:
;main.h,91 :: 		}
L_get_pwr30:
;main.h,93 :: 		p = p * K_Mult / 1000.0;   // mV to Volts on Input
	MOVF        main_K_Mult+0, 0 
	MOVWF       R0 
	CALL        _byte2double+0, 0
	MOVF        get_pwr_p_L0+0, 0 
	MOVWF       R4 
	MOVF        get_pwr_p_L0+1, 0 
	MOVWF       R5 
	MOVF        get_pwr_p_L0+2, 0 
	MOVWF       R6 
	MOVF        get_pwr_p_L0+3, 0 
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       122
	MOVWF       R6 
	MOVLW       136
	MOVWF       R7 
	CALL        _Div_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       get_pwr_p_L0+0 
	MOVF        R1, 0 
	MOVWF       get_pwr_p_L0+1 
	MOVF        R2, 0 
	MOVWF       get_pwr_p_L0+2 
	MOVF        R3, 0 
	MOVWF       get_pwr_p_L0+3 
;main.h,94 :: 		p = p / 1.414;
	MOVLW       244
	MOVWF       R4 
	MOVLW       253
	MOVWF       R5 
	MOVLW       52
	MOVWF       R6 
	MOVLW       127
	MOVWF       R7 
	CALL        _Div_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       get_pwr_p_L0+0 
	MOVF        R1, 0 
	MOVWF       get_pwr_p_L0+1 
	MOVF        R2, 0 
	MOVWF       get_pwr_p_L0+2 
	MOVF        R3, 0 
	MOVWF       get_pwr_p_L0+3 
;main.h,95 :: 		if(P_High==1) p = p * p / 50;     // 0 - 1500 ( 1500 Watts)
	MOVF        main_P_High+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_get_pwr32
	MOVF        get_pwr_p_L0+0, 0 
	MOVWF       R0 
	MOVF        get_pwr_p_L0+1, 0 
	MOVWF       R1 
	MOVF        get_pwr_p_L0+2, 0 
	MOVWF       R2 
	MOVF        get_pwr_p_L0+3, 0 
	MOVWF       R3 
	MOVF        get_pwr_p_L0+0, 0 
	MOVWF       R4 
	MOVF        get_pwr_p_L0+1, 0 
	MOVWF       R5 
	MOVF        get_pwr_p_L0+2, 0 
	MOVWF       R6 
	MOVF        get_pwr_p_L0+3, 0 
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       72
	MOVWF       R6 
	MOVLW       132
	MOVWF       R7 
	CALL        _Div_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       get_pwr_p_L0+0 
	MOVF        R1, 0 
	MOVWF       get_pwr_p_L0+1 
	MOVF        R2, 0 
	MOVWF       get_pwr_p_L0+2 
	MOVF        R3, 0 
	MOVWF       get_pwr_p_L0+3 
	GOTO        L_get_pwr33
L_get_pwr32:
;main.h,96 :: 		else p = p * p / 5;               // 0 - 1510 (151.0 Watts)
	MOVF        get_pwr_p_L0+0, 0 
	MOVWF       R0 
	MOVF        get_pwr_p_L0+1, 0 
	MOVWF       R1 
	MOVF        get_pwr_p_L0+2, 0 
	MOVWF       R2 
	MOVF        get_pwr_p_L0+3, 0 
	MOVWF       R3 
	MOVF        get_pwr_p_L0+0, 0 
	MOVWF       R4 
	MOVF        get_pwr_p_L0+1, 0 
	MOVWF       R5 
	MOVF        get_pwr_p_L0+2, 0 
	MOVWF       R6 
	MOVF        get_pwr_p_L0+3, 0 
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       32
	MOVWF       R6 
	MOVLW       129
	MOVWF       R7 
	CALL        _Div_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       get_pwr_p_L0+0 
	MOVF        R1, 0 
	MOVWF       get_pwr_p_L0+1 
	MOVF        R2, 0 
	MOVWF       get_pwr_p_L0+2 
	MOVF        R3, 0 
	MOVWF       get_pwr_p_L0+3 
L_get_pwr33:
;main.h,97 :: 		p = p + 0.5;    // rounding
	MOVF        get_pwr_p_L0+0, 0 
	MOVWF       R0 
	MOVF        get_pwr_p_L0+1, 0 
	MOVWF       R1 
	MOVF        get_pwr_p_L0+2, 0 
	MOVWF       R2 
	MOVF        get_pwr_p_L0+3, 0 
	MOVWF       R3 
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       0
	MOVWF       R6 
	MOVLW       126
	MOVWF       R7 
	CALL        _Add_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       get_pwr_p_L0+0 
	MOVF        R1, 0 
	MOVWF       get_pwr_p_L0+1 
	MOVF        R2, 0 
	MOVWF       get_pwr_p_L0+2 
	MOVF        R3, 0 
	MOVWF       get_pwr_p_L0+3 
;main.h,99 :: 		PWR = p;
	CALL        _double2int+0, 0
	MOVF        R0, 0 
	MOVWF       _PWR+0 
	MOVF        R1, 0 
	MOVWF       _PWR+1 
;main.h,100 :: 		if(Forward<100) SWR = 999;
	MOVLW       128
	XORWF       get_pwr_Forward_L0+3, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_pwr504
	MOVLW       0
	SUBWF       get_pwr_Forward_L0+2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_pwr504
	MOVLW       0
	SUBWF       get_pwr_Forward_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_pwr504
	MOVLW       100
	SUBWF       get_pwr_Forward_L0+0, 0 
L__get_pwr504:
	BTFSC       STATUS+0, 0 
	GOTO        L_get_pwr34
	MOVLW       231
	MOVWF       _SWR+0 
	MOVLW       3
	MOVWF       _SWR+1 
	GOTO        L_get_pwr35
L_get_pwr34:
;main.h,101 :: 		else SWR = Forward;
	MOVF        get_pwr_Forward_L0+0, 0 
	MOVWF       _SWR+0 
	MOVF        get_pwr_Forward_L0+1, 0 
	MOVWF       _SWR+1 
L_get_pwr35:
;main.h,102 :: 		return;
;main.h,103 :: 		}
L_end_get_pwr:
	RETURN      0
; end of _get_pwr

_get_swr:

;main.h,105 :: 		void get_swr() {
;main.h,106 :: 		get_pwr();
	CALL        _get_pwr+0, 0
;main.h,107 :: 		if(p_cnt!=100) {
	MOVF        _p_cnt+0, 0 
	XORLW       100
	BTFSC       STATUS+0, 2 
	GOTO        L_get_swr36
;main.h,108 :: 		p_cnt += 1;
	INCF        _p_cnt+0, 1 
;main.h,109 :: 		if(PWR>P_max) P_max = PWR;
	MOVLW       128
	XORWF       _P_max+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       _PWR+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_swr506
	MOVF        _PWR+0, 0 
	SUBWF       _P_max+0, 0 
L__get_swr506:
	BTFSC       STATUS+0, 0 
	GOTO        L_get_swr37
	MOVF        _PWR+0, 0 
	MOVWF       _P_max+0 
	MOVF        _PWR+1, 0 
	MOVWF       _P_max+1 
L_get_swr37:
;main.h,110 :: 		}
	GOTO        L_get_swr38
L_get_swr36:
;main.h,112 :: 		p_cnt = 0;
	CLRF        _p_cnt+0 
;main.h,113 :: 		show_pwr(P_max, SWR);
	MOVF        _P_max+0, 0 
	MOVWF       FARG_show_pwr+0 
	MOVF        _P_max+1, 0 
	MOVWF       FARG_show_pwr+1 
	MOVF        _SWR+0, 0 
	MOVWF       FARG_show_pwr+0 
	MOVF        _SWR+1, 0 
	MOVWF       FARG_show_pwr+1 
	CALL        _show_pwr+0, 0
;main.h,114 :: 		P_max = 0;
	CLRF        _P_max+0 
	CLRF        _P_max+1 
;main.h,115 :: 		}
L_get_swr38:
;main.h,116 :: 		while(PWR<min_for_start | (PWR> max_for_start & max_for_start>0)) {  // waiting for good power
L_get_swr39:
	MOVLW       128
	XORWF       _PWR+1, 0 
	MOVWF       R2 
	MOVLW       128
	XORWF       main_min_for_start+1, 0 
	SUBWF       R2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_swr507
	MOVF        main_min_for_start+0, 0 
	SUBWF       _PWR+0, 0 
L__get_swr507:
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R2 
	MOVLW       128
	XORWF       main_max_for_start+1, 0 
	MOVWF       R1 
	MOVLW       128
	XORWF       _PWR+1, 0 
	SUBWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_swr508
	MOVF        _PWR+0, 0 
	SUBWF       main_max_for_start+0, 0 
L__get_swr508:
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R1 
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       main_max_for_start+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_swr509
	MOVF        main_max_for_start+0, 0 
	SUBLW       0
L__get_swr509:
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	MOVF        R2, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_get_swr40
;main.h,117 :: 		asm CLRWDT;
	CLRWDT
;main.h,118 :: 		get_pwr();
	CALL        _get_pwr+0, 0
;main.h,119 :: 		if(p_cnt!=100) {
	MOVF        _p_cnt+0, 0 
	XORLW       100
	BTFSC       STATUS+0, 2 
	GOTO        L_get_swr41
;main.h,120 :: 		p_cnt += 1;
	INCF        _p_cnt+0, 1 
;main.h,121 :: 		if(PWR>P_max) P_max = PWR;
	MOVLW       128
	XORWF       _P_max+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       _PWR+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_swr510
	MOVF        _PWR+0, 0 
	SUBWF       _P_max+0, 0 
L__get_swr510:
	BTFSC       STATUS+0, 0 
	GOTO        L_get_swr42
	MOVF        _PWR+0, 0 
	MOVWF       _P_max+0 
	MOVF        _PWR+1, 0 
	MOVWF       _P_max+1 
L_get_swr42:
;main.h,122 :: 		}
	GOTO        L_get_swr43
L_get_swr41:
;main.h,124 :: 		p_cnt = 0;
	CLRF        _p_cnt+0 
;main.h,125 :: 		show_pwr(P_max, SWR);
	MOVF        _P_max+0, 0 
	MOVWF       FARG_show_pwr+0 
	MOVF        _P_max+1, 0 
	MOVWF       FARG_show_pwr+1 
	MOVF        _SWR+0, 0 
	MOVWF       FARG_show_pwr+0 
	MOVF        _SWR+1, 0 
	MOVWF       FARG_show_pwr+1 
	CALL        _show_pwr+0, 0
;main.h,126 :: 		P_max = 0;
	CLRF        _P_max+0 
	CLRF        _P_max+1 
;main.h,127 :: 		}
L_get_swr43:
;main.h,129 :: 		if(Button(&PORTB, 0, 5, 1)) rready = 1;
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	CLRF        FARG_Button_pin+0 
	MOVLW       5
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_get_swr44
	MOVLW       1
	MOVWF       _rready+0 
L_get_swr44:
;main.h,130 :: 		if(rready==1 & Button(&PORTB, 0, 5, 0)) { //  press button  Tune
	MOVF        _rready+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       FLOC__get_swr+0 
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	CLRF        FARG_Button_pin+0 
	MOVLW       5
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        FLOC__get_swr+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_get_swr45
;main.h,131 :: 		show_reset();
	CALL        _show_reset+0, 0
;main.h,132 :: 		SWR = 0;
	CLRF        _SWR+0 
	CLRF        _SWR+1 
;main.h,133 :: 		return;
	GOTO        L_end_get_swr
;main.h,134 :: 		}
L_get_swr45:
;main.h,135 :: 		} //  good power
	GOTO        L_get_swr39
L_get_swr40:
;main.h,136 :: 		return;
;main.h,137 :: 		}
L_end_get_swr:
	RETURN      0
; end of _get_swr

_set_ind:

;main.h,139 :: 		void set_ind(char Ind) {  // 0 - 31
;main.h,140 :: 		if(L_invert == 0) {
	MOVF        main_L_invert+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_set_ind46
;main.h,141 :: 		Ind_005 = Ind.B0;
	BTFSC       FARG_set_ind_Ind+0, 0 
	GOTO        L__set_ind512
	BCF         LATC0_bit+0, BitPos(LATC0_bit+0) 
	GOTO        L__set_ind513
L__set_ind512:
	BSF         LATC0_bit+0, BitPos(LATC0_bit+0) 
L__set_ind513:
;main.h,142 :: 		Ind_011 = Ind.B1;
	BTFSC       FARG_set_ind_Ind+0, 1 
	GOTO        L__set_ind514
	BCF         LATC1_bit+0, BitPos(LATC1_bit+0) 
	GOTO        L__set_ind515
L__set_ind514:
	BSF         LATC1_bit+0, BitPos(LATC1_bit+0) 
L__set_ind515:
;main.h,143 :: 		Ind_022 = Ind.B2;
	BTFSC       FARG_set_ind_Ind+0, 2 
	GOTO        L__set_ind516
	BCF         LATC2_bit+0, BitPos(LATC2_bit+0) 
	GOTO        L__set_ind517
L__set_ind516:
	BSF         LATC2_bit+0, BitPos(LATC2_bit+0) 
L__set_ind517:
;main.h,144 :: 		Ind_045 = Ind.B3;
	BTFSC       FARG_set_ind_Ind+0, 3 
	GOTO        L__set_ind518
	BCF         LATC3_bit+0, BitPos(LATC3_bit+0) 
	GOTO        L__set_ind519
L__set_ind518:
	BSF         LATC3_bit+0, BitPos(LATC3_bit+0) 
L__set_ind519:
;main.h,145 :: 		Ind_1   = Ind.B4;
	BTFSC       FARG_set_ind_Ind+0, 4 
	GOTO        L__set_ind520
	BCF         LATC4_bit+0, BitPos(LATC4_bit+0) 
	GOTO        L__set_ind521
L__set_ind520:
	BSF         LATC4_bit+0, BitPos(LATC4_bit+0) 
L__set_ind521:
;main.h,146 :: 		Ind_22  = Ind.B5;
	BTFSC       FARG_set_ind_Ind+0, 5 
	GOTO        L__set_ind522
	BCF         LATC5_bit+0, BitPos(LATC5_bit+0) 
	GOTO        L__set_ind523
L__set_ind522:
	BSF         LATC5_bit+0, BitPos(LATC5_bit+0) 
L__set_ind523:
;main.h,147 :: 		Ind_45  = Ind.B6;
	BTFSC       FARG_set_ind_Ind+0, 6 
	GOTO        L__set_ind524
	BCF         LATA5_bit+0, BitPos(LATA5_bit+0) 
	GOTO        L__set_ind525
L__set_ind524:
	BSF         LATA5_bit+0, BitPos(LATA5_bit+0) 
L__set_ind525:
;main.h,149 :: 		}
	GOTO        L_set_ind47
L_set_ind46:
;main.h,151 :: 		Ind_005 = ~Ind.B0;
	BTFSC       FARG_set_ind_Ind+0, 0 
	GOTO        L__set_ind526
	BSF         LATC0_bit+0, BitPos(LATC0_bit+0) 
	GOTO        L__set_ind527
L__set_ind526:
	BCF         LATC0_bit+0, BitPos(LATC0_bit+0) 
L__set_ind527:
;main.h,152 :: 		Ind_011 = ~Ind.B1;
	BTFSC       FARG_set_ind_Ind+0, 1 
	GOTO        L__set_ind528
	BSF         LATC1_bit+0, BitPos(LATC1_bit+0) 
	GOTO        L__set_ind529
L__set_ind528:
	BCF         LATC1_bit+0, BitPos(LATC1_bit+0) 
L__set_ind529:
;main.h,153 :: 		Ind_022 = ~Ind.B2;
	BTFSC       FARG_set_ind_Ind+0, 2 
	GOTO        L__set_ind530
	BSF         LATC2_bit+0, BitPos(LATC2_bit+0) 
	GOTO        L__set_ind531
L__set_ind530:
	BCF         LATC2_bit+0, BitPos(LATC2_bit+0) 
L__set_ind531:
;main.h,154 :: 		Ind_045 = ~Ind.B3;
	BTFSC       FARG_set_ind_Ind+0, 3 
	GOTO        L__set_ind532
	BSF         LATC3_bit+0, BitPos(LATC3_bit+0) 
	GOTO        L__set_ind533
L__set_ind532:
	BCF         LATC3_bit+0, BitPos(LATC3_bit+0) 
L__set_ind533:
;main.h,155 :: 		Ind_1   = ~Ind.B4;
	BTFSC       FARG_set_ind_Ind+0, 4 
	GOTO        L__set_ind534
	BSF         LATC4_bit+0, BitPos(LATC4_bit+0) 
	GOTO        L__set_ind535
L__set_ind534:
	BCF         LATC4_bit+0, BitPos(LATC4_bit+0) 
L__set_ind535:
;main.h,156 :: 		Ind_22  = ~Ind.B5;
	BTFSC       FARG_set_ind_Ind+0, 5 
	GOTO        L__set_ind536
	BSF         LATC5_bit+0, BitPos(LATC5_bit+0) 
	GOTO        L__set_ind537
L__set_ind536:
	BCF         LATC5_bit+0, BitPos(LATC5_bit+0) 
L__set_ind537:
;main.h,157 :: 		Ind_45  = ~Ind.B6;
	BTFSC       FARG_set_ind_Ind+0, 6 
	GOTO        L__set_ind538
	BSF         LATA5_bit+0, BitPos(LATA5_bit+0) 
	GOTO        L__set_ind539
L__set_ind538:
	BCF         LATA5_bit+0, BitPos(LATA5_bit+0) 
L__set_ind539:
;main.h,159 :: 		}
L_set_ind47:
;main.h,160 :: 		Vdelay_ms(Rel_Del);
	MOVF        main_Rel_Del+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        main_Rel_Del+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;main.h,161 :: 		}
L_end_set_ind:
	RETURN      0
; end of _set_ind

_set_cap:

;main.h,163 :: 		void set_cap(char Cap) { // 0 - 31
;main.h,164 :: 		Cap_10  =  Cap.B0;
	BTFSC       FARG_set_cap_Cap+0, 0 
	GOTO        L__set_cap541
	BCF         LATB1_bit+0, BitPos(LATB1_bit+0) 
	GOTO        L__set_cap542
L__set_cap541:
	BSF         LATB1_bit+0, BitPos(LATB1_bit+0) 
L__set_cap542:
;main.h,165 :: 		Cap_22  =  Cap.B1;
	BTFSC       FARG_set_cap_Cap+0, 1 
	GOTO        L__set_cap543
	BCF         LATB2_bit+0, BitPos(LATB2_bit+0) 
	GOTO        L__set_cap544
L__set_cap543:
	BSF         LATB2_bit+0, BitPos(LATB2_bit+0) 
L__set_cap544:
;main.h,166 :: 		Cap_47  =  Cap.B2;
	BTFSC       FARG_set_cap_Cap+0, 2 
	GOTO        L__set_cap545
	BCF         LATB3_bit+0, BitPos(LATB3_bit+0) 
	GOTO        L__set_cap546
L__set_cap545:
	BSF         LATB3_bit+0, BitPos(LATB3_bit+0) 
L__set_cap546:
;main.h,167 :: 		Cap_100 =  Cap.B3;
	BTFSC       FARG_set_cap_Cap+0, 3 
	GOTO        L__set_cap547
	BCF         LATB4_bit+0, BitPos(LATB4_bit+0) 
	GOTO        L__set_cap548
L__set_cap547:
	BSF         LATB4_bit+0, BitPos(LATB4_bit+0) 
L__set_cap548:
;main.h,168 :: 		Cap_220 =  Cap.B4;
	BTFSC       FARG_set_cap_Cap+0, 4 
	GOTO        L__set_cap549
	BCF         LATB5_bit+0, BitPos(LATB5_bit+0) 
	GOTO        L__set_cap550
L__set_cap549:
	BSF         LATB5_bit+0, BitPos(LATB5_bit+0) 
L__set_cap550:
;main.h,169 :: 		Cap_470 =  Cap.B5;
	BTFSC       FARG_set_cap_Cap+0, 5 
	GOTO        L__set_cap551
	BCF         LATB6_bit+0, BitPos(LATB6_bit+0) 
	GOTO        L__set_cap552
L__set_cap551:
	BSF         LATB6_bit+0, BitPos(LATB6_bit+0) 
L__set_cap552:
;main.h,170 :: 		Cap_1000 =  Cap.B6;
	BTFSC       FARG_set_cap_Cap+0, 6 
	GOTO        L__set_cap553
	BCF         LATB7_bit+0, BitPos(LATB7_bit+0) 
	GOTO        L__set_cap554
L__set_cap553:
	BSF         LATB7_bit+0, BitPos(LATB7_bit+0) 
L__set_cap554:
;main.h,172 :: 		Vdelay_ms(Rel_Del);
	MOVF        main_Rel_Del+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        main_Rel_Del+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;main.h,173 :: 		}
L_end_set_cap:
	RETURN      0
; end of _set_cap

_set_sw:

;main.h,175 :: 		void set_sw(char SW) {  // 0 - IN,  1 - OUT
;main.h,176 :: 		Cap_sw = SW;
	BTFSC       FARG_set_sw_SW+0, 0 
	GOTO        L__set_sw556
	BCF         LATA7_bit+0, BitPos(LATA7_bit+0) 
	GOTO        L__set_sw557
L__set_sw556:
	BSF         LATA7_bit+0, BitPos(LATA7_bit+0) 
L__set_sw557:
;main.h,177 :: 		Vdelay_ms(Rel_Del);
	MOVF        main_Rel_Del+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        main_Rel_Del+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;main.h,178 :: 		}
L_end_set_sw:
	RETURN      0
; end of _set_sw

_atu_reset:

;main.h,180 :: 		void atu_reset() {
;main.h,181 :: 		ind = 0;
	CLRF        main_ind+0 
;main.h,182 :: 		cap = 0;
	CLRF        main_cap+0 
;main.h,183 :: 		set_ind(ind);
	CLRF        FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.h,184 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,185 :: 		Vdelay_ms(Rel_Del);
	MOVF        main_Rel_Del+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        main_Rel_Del+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;main.h,186 :: 		}
L_end_atu_reset:
	RETURN      0
; end of _atu_reset

_coarse_cap:

;main.h,189 :: 		void coarse_cap() {
;main.h,190 :: 		char step = 3;
	MOVLW       3
	MOVWF       coarse_cap_step_L0+0 
;main.h,194 :: 		cap = 0;
	CLRF        main_cap+0 
;main.h,195 :: 		set_cap(cap);
	CLRF        FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,196 :: 		step_cap = step;
	MOVF        coarse_cap_step_L0+0, 0 
	MOVWF       main_step_cap+0 
;main.h,197 :: 		get_swr(); if(SWR==0) return;
	CALL        _get_swr+0, 0
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coarse_cap560
	MOVLW       0
	XORWF       _SWR+0, 0 
L__coarse_cap560:
	BTFSS       STATUS+0, 2 
	GOTO        L_coarse_cap48
	GOTO        L_end_coarse_cap
L_coarse_cap48:
;main.h,198 :: 		min_swr = SWR + SWR/20;
	MOVLW       20
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        _SWR+0, 0 
	MOVWF       R0 
	MOVF        _SWR+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R0, 0 
	ADDWF       _SWR+0, 0 
	MOVWF       coarse_cap_min_swr_L0+0 
	MOVF        R1, 0 
	ADDWFC      _SWR+1, 0 
	MOVWF       coarse_cap_min_swr_L0+1 
;main.h,199 :: 		for(count=step; count<=31;) {
	MOVF        coarse_cap_step_L0+0, 0 
	MOVWF       coarse_cap_count_L0+0 
L_coarse_cap49:
	MOVF        coarse_cap_count_L0+0, 0 
	SUBLW       31
	BTFSS       STATUS+0, 0 
	GOTO        L_coarse_cap50
;main.h,200 :: 		set_cap(count*C_mult);
	MOVF        coarse_cap_count_L0+0, 0 
	MULWF       main_C_mult+0 
	MOVF        PRODL+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,201 :: 		get_swr(); if(SWR==0) return;
	CALL        _get_swr+0, 0
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coarse_cap561
	MOVLW       0
	XORWF       _SWR+0, 0 
L__coarse_cap561:
	BTFSS       STATUS+0, 2 
	GOTO        L_coarse_cap52
	GOTO        L_end_coarse_cap
L_coarse_cap52:
;main.h,202 :: 		if(SWR < min_swr) {
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       coarse_cap_min_swr_L0+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coarse_cap562
	MOVF        coarse_cap_min_swr_L0+0, 0 
	SUBWF       _SWR+0, 0 
L__coarse_cap562:
	BTFSC       STATUS+0, 0 
	GOTO        L_coarse_cap53
;main.h,203 :: 		min_swr = SWR + SWR/20;
	MOVLW       20
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        _SWR+0, 0 
	MOVWF       R0 
	MOVF        _SWR+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R0, 0 
	ADDWF       _SWR+0, 0 
	MOVWF       coarse_cap_min_swr_L0+0 
	MOVF        R1, 0 
	ADDWFC      _SWR+1, 0 
	MOVWF       coarse_cap_min_swr_L0+1 
;main.h,204 :: 		cap = count*C_mult;
	MOVF        coarse_cap_count_L0+0, 0 
	MULWF       main_C_mult+0 
	MOVF        PRODL+0, 0 
	MOVWF       main_cap+0 
;main.h,205 :: 		step_cap = step;
	MOVF        coarse_cap_step_L0+0, 0 
	MOVWF       main_step_cap+0 
;main.h,206 :: 		if(SWR<120) break;
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coarse_cap563
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__coarse_cap563:
	BTFSC       STATUS+0, 0 
	GOTO        L_coarse_cap54
	GOTO        L_coarse_cap50
L_coarse_cap54:
;main.h,207 :: 		count +=step;
	MOVF        coarse_cap_step_L0+0, 0 
	ADDWF       coarse_cap_count_L0+0, 0 
	MOVWF       R2 
	MOVF        R2, 0 
	MOVWF       coarse_cap_count_L0+0 
;main.h,208 :: 		if(C_linear==0 & count==9) count = 8;
	MOVF        main_C_linear+0, 0 
	XORLW       0
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        R2, 0 
	XORLW       9
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_coarse_cap55
	MOVLW       8
	MOVWF       coarse_cap_count_L0+0 
	GOTO        L_coarse_cap56
L_coarse_cap55:
;main.h,209 :: 		else if(C_linear==0 & count==17) {count = 16; step = 4;}
	MOVF        main_C_linear+0, 0 
	XORLW       0
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        coarse_cap_count_L0+0, 0 
	XORLW       17
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_coarse_cap57
	MOVLW       16
	MOVWF       coarse_cap_count_L0+0 
	MOVLW       4
	MOVWF       coarse_cap_step_L0+0 
L_coarse_cap57:
L_coarse_cap56:
;main.h,210 :: 		}
	GOTO        L_coarse_cap58
L_coarse_cap53:
;main.h,211 :: 		else break;
	GOTO        L_coarse_cap50
L_coarse_cap58:
;main.h,212 :: 		}
	GOTO        L_coarse_cap49
L_coarse_cap50:
;main.h,213 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,214 :: 		return;
;main.h,215 :: 		}
L_end_coarse_cap:
	RETURN      0
; end of _coarse_cap

_coarse_tune:

;main.h,217 :: 		void coarse_tune() {
;main.h,218 :: 		char step = 3;
	MOVLW       3
	MOVWF       coarse_tune_step_L0+0 
;main.h,223 :: 		mem_cap = 0;
	CLRF        coarse_tune_mem_cap_L0+0 
;main.h,224 :: 		step_ind = step;
	MOVF        coarse_tune_step_L0+0, 0 
	MOVWF       main_step_ind+0 
;main.h,225 :: 		mem_step_cap = 3;
	MOVLW       3
	MOVWF       coarse_tune_mem_step_cap_L0+0 
;main.h,226 :: 		min_swr = SWR + SWR/20;
	MOVLW       20
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        _SWR+0, 0 
	MOVWF       R0 
	MOVF        _SWR+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R0, 0 
	ADDWF       _SWR+0, 0 
	MOVWF       coarse_tune_min_swr_L0+0 
	MOVF        R1, 0 
	ADDWFC      _SWR+1, 0 
	MOVWF       coarse_tune_min_swr_L0+1 
;main.h,227 :: 		for(count=0; count<=31;) {
	CLRF        coarse_tune_count_L0+0 
L_coarse_tune59:
	MOVF        coarse_tune_count_L0+0, 0 
	SUBLW       31
	BTFSS       STATUS+0, 0 
	GOTO        L_coarse_tune60
;main.h,228 :: 		set_ind(count*L_mult);
	MOVF        coarse_tune_count_L0+0, 0 
	MULWF       main_L_mult+0 
	MOVF        PRODL+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.h,229 :: 		coarse_cap();
	CALL        _coarse_cap+0, 0
;main.h,230 :: 		get_swr();  if(SWR==0) return;
	CALL        _get_swr+0, 0
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coarse_tune565
	MOVLW       0
	XORWF       _SWR+0, 0 
L__coarse_tune565:
	BTFSS       STATUS+0, 2 
	GOTO        L_coarse_tune62
	GOTO        L_end_coarse_tune
L_coarse_tune62:
;main.h,231 :: 		if(SWR < min_swr) {
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       coarse_tune_min_swr_L0+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coarse_tune566
	MOVF        coarse_tune_min_swr_L0+0, 0 
	SUBWF       _SWR+0, 0 
L__coarse_tune566:
	BTFSC       STATUS+0, 0 
	GOTO        L_coarse_tune63
;main.h,232 :: 		min_swr = SWR + SWR/20;
	MOVLW       20
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        _SWR+0, 0 
	MOVWF       R0 
	MOVF        _SWR+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R0, 0 
	ADDWF       _SWR+0, 0 
	MOVWF       coarse_tune_min_swr_L0+0 
	MOVF        R1, 0 
	ADDWFC      _SWR+1, 0 
	MOVWF       coarse_tune_min_swr_L0+1 
;main.h,233 :: 		ind = count*L_mult;
	MOVF        coarse_tune_count_L0+0, 0 
	MULWF       main_L_mult+0 
	MOVF        PRODL+0, 0 
	MOVWF       main_ind+0 
;main.h,234 :: 		mem_cap = cap;
	MOVF        main_cap+0, 0 
	MOVWF       coarse_tune_mem_cap_L0+0 
;main.h,235 :: 		step_ind = step;
	MOVF        coarse_tune_step_L0+0, 0 
	MOVWF       main_step_ind+0 
;main.h,236 :: 		mem_step_cap = step_cap;
	MOVF        main_step_cap+0, 0 
	MOVWF       coarse_tune_mem_step_cap_L0+0 
;main.h,237 :: 		if(SWR<120) break;
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coarse_tune567
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__coarse_tune567:
	BTFSC       STATUS+0, 0 
	GOTO        L_coarse_tune64
	GOTO        L_coarse_tune60
L_coarse_tune64:
;main.h,238 :: 		count +=step;
	MOVF        coarse_tune_step_L0+0, 0 
	ADDWF       coarse_tune_count_L0+0, 0 
	MOVWF       R2 
	MOVF        R2, 0 
	MOVWF       coarse_tune_count_L0+0 
;main.h,239 :: 		if(L_linear==0 & count==9) count = 8;
	MOVF        main_L_linear+0, 0 
	XORLW       0
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        R2, 0 
	XORLW       9
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_coarse_tune65
	MOVLW       8
	MOVWF       coarse_tune_count_L0+0 
	GOTO        L_coarse_tune66
L_coarse_tune65:
;main.h,240 :: 		else if(L_linear==0 & count==17) {count = 16; step = 4;}
	MOVF        main_L_linear+0, 0 
	XORLW       0
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        coarse_tune_count_L0+0, 0 
	XORLW       17
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_coarse_tune67
	MOVLW       16
	MOVWF       coarse_tune_count_L0+0 
	MOVLW       4
	MOVWF       coarse_tune_step_L0+0 
L_coarse_tune67:
L_coarse_tune66:
;main.h,241 :: 		}
	GOTO        L_coarse_tune68
L_coarse_tune63:
;main.h,242 :: 		else break;
	GOTO        L_coarse_tune60
L_coarse_tune68:
;main.h,243 :: 		}
	GOTO        L_coarse_tune59
L_coarse_tune60:
;main.h,244 :: 		cap = mem_cap;
	MOVF        coarse_tune_mem_cap_L0+0, 0 
	MOVWF       main_cap+0 
;main.h,245 :: 		set_ind(ind);
	MOVF        main_ind+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.h,246 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,247 :: 		step_cap = mem_step_cap;
	MOVF        coarse_tune_mem_step_cap_L0+0, 0 
	MOVWF       main_step_cap+0 
;main.h,248 :: 		Delay_ms(10);
	MOVLW       52
	MOVWF       R12, 0
	MOVLW       241
	MOVWF       R13, 0
L_coarse_tune69:
	DECFSZ      R13, 1, 1
	BRA         L_coarse_tune69
	DECFSZ      R12, 1, 1
	BRA         L_coarse_tune69
	NOP
	NOP
;main.h,249 :: 		return;
;main.h,250 :: 		}
L_end_coarse_tune:
	RETURN      0
; end of _coarse_tune

_sharp_cap:

;main.h,252 :: 		void sharp_cap() {
;main.h,255 :: 		range = step_cap*C_mult;
	MOVF        main_step_cap+0, 0 
	MULWF       main_C_mult+0 
	MOVF        PRODL+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       sharp_cap_range_L0+0 
;main.h,257 :: 		max_range = cap + range;
	MOVF        R0, 0 
	ADDWF       main_cap+0, 0 
	MOVWF       R4 
	MOVF        R4, 0 
	MOVWF       sharp_cap_max_range_L0+0 
;main.h,258 :: 		if(max_range>32*C_mult-1) max_range = 32*C_mult-1;
	MOVLW       5
	MOVWF       R2 
	MOVF        main_C_mult+0, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        R2, 0 
L__sharp_cap569:
	BZ          L__sharp_cap570
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	ADDLW       255
	GOTO        L__sharp_cap569
L__sharp_cap570:
	MOVLW       1
	SUBWF       R0, 0 
	MOVWF       R2 
	MOVLW       0
	SUBWFB      R1, 0 
	MOVWF       R3 
	MOVLW       128
	XORWF       R3, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_cap571
	MOVF        R4, 0 
	SUBWF       R2, 0 
L__sharp_cap571:
	BTFSC       STATUS+0, 0 
	GOTO        L_sharp_cap70
	MOVLW       5
	MOVWF       R0 
	MOVF        main_C_mult+0, 0 
	MOVWF       sharp_cap_max_range_L0+0 
	MOVF        R0, 0 
L__sharp_cap572:
	BZ          L__sharp_cap573
	RLCF        sharp_cap_max_range_L0+0, 1 
	BCF         sharp_cap_max_range_L0+0, 0 
	ADDLW       255
	GOTO        L__sharp_cap572
L__sharp_cap573:
	DECF        sharp_cap_max_range_L0+0, 1 
L_sharp_cap70:
;main.h,259 :: 		if(cap>range) min_range = cap - range; else min_range = 0;
	MOVF        main_cap+0, 0 
	SUBWF       sharp_cap_range_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_sharp_cap71
	MOVF        sharp_cap_range_L0+0, 0 
	SUBWF       main_cap+0, 0 
	MOVWF       sharp_cap_min_range_L0+0 
	GOTO        L_sharp_cap72
L_sharp_cap71:
	CLRF        sharp_cap_min_range_L0+0 
L_sharp_cap72:
;main.h,260 :: 		cap = min_range;
	MOVF        sharp_cap_min_range_L0+0, 0 
	MOVWF       main_cap+0 
;main.h,261 :: 		set_cap(cap);
	MOVF        sharp_cap_min_range_L0+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,262 :: 		get_swr(); if(SWR==0) return;
	CALL        _get_swr+0, 0
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_cap574
	MOVLW       0
	XORWF       _SWR+0, 0 
L__sharp_cap574:
	BTFSS       STATUS+0, 2 
	GOTO        L_sharp_cap73
	GOTO        L_end_sharp_cap
L_sharp_cap73:
;main.h,263 :: 		min_SWR = SWR;
	MOVF        _SWR+0, 0 
	MOVWF       sharp_cap_min_swr_L0+0 
	MOVF        _SWR+1, 0 
	MOVWF       sharp_cap_min_swr_L0+1 
;main.h,264 :: 		for(count=min_range+C_mult; count<=max_range; count+=C_mult)  {
	MOVF        main_C_mult+0, 0 
	ADDWF       sharp_cap_min_range_L0+0, 0 
	MOVWF       sharp_cap_count_L0+0 
L_sharp_cap74:
	MOVF        sharp_cap_count_L0+0, 0 
	SUBWF       sharp_cap_max_range_L0+0, 0 
	BTFSS       STATUS+0, 0 
	GOTO        L_sharp_cap75
;main.h,265 :: 		set_cap(count);
	MOVF        sharp_cap_count_L0+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,266 :: 		get_swr(); if(SWR==0) return;
	CALL        _get_swr+0, 0
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_cap575
	MOVLW       0
	XORWF       _SWR+0, 0 
L__sharp_cap575:
	BTFSS       STATUS+0, 2 
	GOTO        L_sharp_cap77
	GOTO        L_end_sharp_cap
L_sharp_cap77:
;main.h,267 :: 		if(SWR>=min_SWR) { Delay_ms(10); get_swr(); }
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       sharp_cap_min_swr_L0+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_cap576
	MOVF        sharp_cap_min_swr_L0+0, 0 
	SUBWF       _SWR+0, 0 
L__sharp_cap576:
	BTFSS       STATUS+0, 0 
	GOTO        L_sharp_cap78
	MOVLW       52
	MOVWF       R12, 0
	MOVLW       241
	MOVWF       R13, 0
L_sharp_cap79:
	DECFSZ      R13, 1, 1
	BRA         L_sharp_cap79
	DECFSZ      R12, 1, 1
	BRA         L_sharp_cap79
	NOP
	NOP
	CALL        _get_swr+0, 0
L_sharp_cap78:
;main.h,268 :: 		if(SWR>=min_SWR) { Delay_ms(10); get_swr(); }
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       sharp_cap_min_swr_L0+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_cap577
	MOVF        sharp_cap_min_swr_L0+0, 0 
	SUBWF       _SWR+0, 0 
L__sharp_cap577:
	BTFSS       STATUS+0, 0 
	GOTO        L_sharp_cap80
	MOVLW       52
	MOVWF       R12, 0
	MOVLW       241
	MOVWF       R13, 0
L_sharp_cap81:
	DECFSZ      R13, 1, 1
	BRA         L_sharp_cap81
	DECFSZ      R12, 1, 1
	BRA         L_sharp_cap81
	NOP
	NOP
	CALL        _get_swr+0, 0
L_sharp_cap80:
;main.h,269 :: 		if(SWR < min_SWR) {
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       sharp_cap_min_swr_L0+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_cap578
	MOVF        sharp_cap_min_swr_L0+0, 0 
	SUBWF       _SWR+0, 0 
L__sharp_cap578:
	BTFSC       STATUS+0, 0 
	GOTO        L_sharp_cap82
;main.h,270 :: 		min_SWR = SWR;
	MOVF        _SWR+0, 0 
	MOVWF       sharp_cap_min_swr_L0+0 
	MOVF        _SWR+1, 0 
	MOVWF       sharp_cap_min_swr_L0+1 
;main.h,271 :: 		cap = count;
	MOVF        sharp_cap_count_L0+0, 0 
	MOVWF       main_cap+0 
;main.h,272 :: 		if(SWR<120) break;
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_cap579
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__sharp_cap579:
	BTFSC       STATUS+0, 0 
	GOTO        L_sharp_cap83
	GOTO        L_sharp_cap75
L_sharp_cap83:
;main.h,273 :: 		}
	GOTO        L_sharp_cap84
L_sharp_cap82:
;main.h,274 :: 		else break;
	GOTO        L_sharp_cap75
L_sharp_cap84:
;main.h,264 :: 		for(count=min_range+C_mult; count<=max_range; count+=C_mult)  {
	MOVF        main_C_mult+0, 0 
	ADDWF       sharp_cap_count_L0+0, 1 
;main.h,275 :: 		}
	GOTO        L_sharp_cap74
L_sharp_cap75:
;main.h,276 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,277 :: 		return;
;main.h,278 :: 		}
L_end_sharp_cap:
	RETURN      0
; end of _sharp_cap

_sharp_ind:

;main.h,280 :: 		void sharp_ind() {
;main.h,283 :: 		range = step_ind * L_mult;
	MOVF        main_step_ind+0, 0 
	MULWF       main_L_mult+0 
	MOVF        PRODL+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       sharp_ind_range_L0+0 
;main.h,285 :: 		max_range = ind + range;
	MOVF        R0, 0 
	ADDWF       main_ind+0, 0 
	MOVWF       R4 
	MOVF        R4, 0 
	MOVWF       sharp_ind_max_range_L0+0 
;main.h,286 :: 		if(max_range>32*L_mult-1) max_range = 32*L_mult-1;
	MOVLW       5
	MOVWF       R2 
	MOVF        main_L_mult+0, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        R2, 0 
L__sharp_ind581:
	BZ          L__sharp_ind582
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	ADDLW       255
	GOTO        L__sharp_ind581
L__sharp_ind582:
	MOVLW       1
	SUBWF       R0, 0 
	MOVWF       R2 
	MOVLW       0
	SUBWFB      R1, 0 
	MOVWF       R3 
	MOVLW       128
	XORWF       R3, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_ind583
	MOVF        R4, 0 
	SUBWF       R2, 0 
L__sharp_ind583:
	BTFSC       STATUS+0, 0 
	GOTO        L_sharp_ind85
	MOVLW       5
	MOVWF       R0 
	MOVF        main_L_mult+0, 0 
	MOVWF       sharp_ind_max_range_L0+0 
	MOVF        R0, 0 
L__sharp_ind584:
	BZ          L__sharp_ind585
	RLCF        sharp_ind_max_range_L0+0, 1 
	BCF         sharp_ind_max_range_L0+0, 0 
	ADDLW       255
	GOTO        L__sharp_ind584
L__sharp_ind585:
	DECF        sharp_ind_max_range_L0+0, 1 
L_sharp_ind85:
;main.h,287 :: 		if(ind>range) min_range = ind - range; else min_range = 0;
	MOVF        main_ind+0, 0 
	SUBWF       sharp_ind_range_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_sharp_ind86
	MOVF        sharp_ind_range_L0+0, 0 
	SUBWF       main_ind+0, 0 
	MOVWF       sharp_ind_min_range_L0+0 
	GOTO        L_sharp_ind87
L_sharp_ind86:
	CLRF        sharp_ind_min_range_L0+0 
L_sharp_ind87:
;main.h,288 :: 		ind = min_range;
	MOVF        sharp_ind_min_range_L0+0, 0 
	MOVWF       main_ind+0 
;main.h,289 :: 		set_ind(ind);
	MOVF        sharp_ind_min_range_L0+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.h,290 :: 		get_swr(); if(SWR==0) return;
	CALL        _get_swr+0, 0
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_ind586
	MOVLW       0
	XORWF       _SWR+0, 0 
L__sharp_ind586:
	BTFSS       STATUS+0, 2 
	GOTO        L_sharp_ind88
	GOTO        L_end_sharp_ind
L_sharp_ind88:
;main.h,291 :: 		min_SWR = SWR;
	MOVF        _SWR+0, 0 
	MOVWF       sharp_ind_min_SWR_L0+0 
	MOVF        _SWR+1, 0 
	MOVWF       sharp_ind_min_SWR_L0+1 
;main.h,292 :: 		for(count=min_range+L_mult; count<=max_range; count+=L_mult) {
	MOVF        main_L_mult+0, 0 
	ADDWF       sharp_ind_min_range_L0+0, 0 
	MOVWF       sharp_ind_count_L0+0 
L_sharp_ind89:
	MOVF        sharp_ind_count_L0+0, 0 
	SUBWF       sharp_ind_max_range_L0+0, 0 
	BTFSS       STATUS+0, 0 
	GOTO        L_sharp_ind90
;main.h,293 :: 		set_ind(count);
	MOVF        sharp_ind_count_L0+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.h,294 :: 		get_swr(); if(SWR==0) return;
	CALL        _get_swr+0, 0
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_ind587
	MOVLW       0
	XORWF       _SWR+0, 0 
L__sharp_ind587:
	BTFSS       STATUS+0, 2 
	GOTO        L_sharp_ind92
	GOTO        L_end_sharp_ind
L_sharp_ind92:
;main.h,295 :: 		if(SWR>=min_SWR) { Delay_ms(10); get_swr(); }
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       sharp_ind_min_SWR_L0+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_ind588
	MOVF        sharp_ind_min_SWR_L0+0, 0 
	SUBWF       _SWR+0, 0 
L__sharp_ind588:
	BTFSS       STATUS+0, 0 
	GOTO        L_sharp_ind93
	MOVLW       52
	MOVWF       R12, 0
	MOVLW       241
	MOVWF       R13, 0
L_sharp_ind94:
	DECFSZ      R13, 1, 1
	BRA         L_sharp_ind94
	DECFSZ      R12, 1, 1
	BRA         L_sharp_ind94
	NOP
	NOP
	CALL        _get_swr+0, 0
L_sharp_ind93:
;main.h,296 :: 		if(SWR>=min_SWR) { Delay_ms(10); get_swr(); }
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       sharp_ind_min_SWR_L0+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_ind589
	MOVF        sharp_ind_min_SWR_L0+0, 0 
	SUBWF       _SWR+0, 0 
L__sharp_ind589:
	BTFSS       STATUS+0, 0 
	GOTO        L_sharp_ind95
	MOVLW       52
	MOVWF       R12, 0
	MOVLW       241
	MOVWF       R13, 0
L_sharp_ind96:
	DECFSZ      R13, 1, 1
	BRA         L_sharp_ind96
	DECFSZ      R12, 1, 1
	BRA         L_sharp_ind96
	NOP
	NOP
	CALL        _get_swr+0, 0
L_sharp_ind95:
;main.h,297 :: 		if(SWR < min_SWR) {
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       sharp_ind_min_SWR_L0+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_ind590
	MOVF        sharp_ind_min_SWR_L0+0, 0 
	SUBWF       _SWR+0, 0 
L__sharp_ind590:
	BTFSC       STATUS+0, 0 
	GOTO        L_sharp_ind97
;main.h,298 :: 		min_SWR = SWR;
	MOVF        _SWR+0, 0 
	MOVWF       sharp_ind_min_SWR_L0+0 
	MOVF        _SWR+1, 0 
	MOVWF       sharp_ind_min_SWR_L0+1 
;main.h,299 :: 		ind = count;
	MOVF        sharp_ind_count_L0+0, 0 
	MOVWF       main_ind+0 
;main.h,300 :: 		if(SWR<120) break;
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_ind591
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__sharp_ind591:
	BTFSC       STATUS+0, 0 
	GOTO        L_sharp_ind98
	GOTO        L_sharp_ind90
L_sharp_ind98:
;main.h,301 :: 		}
	GOTO        L_sharp_ind99
L_sharp_ind97:
;main.h,302 :: 		else break;
	GOTO        L_sharp_ind90
L_sharp_ind99:
;main.h,292 :: 		for(count=min_range+L_mult; count<=max_range; count+=L_mult) {
	MOVF        main_L_mult+0, 0 
	ADDWF       sharp_ind_count_L0+0, 1 
;main.h,303 :: 		}
	GOTO        L_sharp_ind89
L_sharp_ind90:
;main.h,304 :: 		set_ind(ind);
	MOVF        main_ind+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.h,305 :: 		return;
;main.h,306 :: 		}
L_end_sharp_ind:
	RETURN      0
; end of _sharp_ind

_sub_tune:

;main.h,309 :: 		void sub_tune () {
;main.h,312 :: 		swr_mem = SWR;
	MOVF        _SWR+0, 0 
	MOVWF       sub_tune_swr_mem_L0+0 
	MOVF        _SWR+1, 0 
	MOVWF       sub_tune_swr_mem_L0+1 
;main.h,313 :: 		coarse_tune(); if(SWR==0) {atu_reset(); return;}
	CALL        _coarse_tune+0, 0
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune593
	MOVLW       0
	XORWF       _SWR+0, 0 
L__sub_tune593:
	BTFSS       STATUS+0, 2 
	GOTO        L_sub_tune100
	CALL        _atu_reset+0, 0
	GOTO        L_end_sub_tune
L_sub_tune100:
;main.h,314 :: 		get_swr(); if(SWR<120) return;
	CALL        _get_swr+0, 0
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune594
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__sub_tune594:
	BTFSC       STATUS+0, 0 
	GOTO        L_sub_tune101
	GOTO        L_end_sub_tune
L_sub_tune101:
;main.h,315 :: 		sharp_ind();  if(SWR==0) {atu_reset(); return;}
	CALL        _sharp_ind+0, 0
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune595
	MOVLW       0
	XORWF       _SWR+0, 0 
L__sub_tune595:
	BTFSS       STATUS+0, 2 
	GOTO        L_sub_tune102
	CALL        _atu_reset+0, 0
	GOTO        L_end_sub_tune
L_sub_tune102:
;main.h,316 :: 		get_swr(); if(SWR<120) return;
	CALL        _get_swr+0, 0
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune596
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__sub_tune596:
	BTFSC       STATUS+0, 0 
	GOTO        L_sub_tune103
	GOTO        L_end_sub_tune
L_sub_tune103:
;main.h,317 :: 		sharp_cap(); if(SWR==0) {atu_reset(); return;}
	CALL        _sharp_cap+0, 0
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune597
	MOVLW       0
	XORWF       _SWR+0, 0 
L__sub_tune597:
	BTFSS       STATUS+0, 2 
	GOTO        L_sub_tune104
	CALL        _atu_reset+0, 0
	GOTO        L_end_sub_tune
L_sub_tune104:
;main.h,318 :: 		get_swr(); if(SWR<120) return;
	CALL        _get_swr+0, 0
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune598
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__sub_tune598:
	BTFSC       STATUS+0, 0 
	GOTO        L_sub_tune105
	GOTO        L_end_sub_tune
L_sub_tune105:
;main.h,320 :: 		if(SWR<200 & SWR<swr_mem & (swr_mem-SWR)>100) return;
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R1 
	MOVLW       128
	SUBWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune599
	MOVLW       200
	SUBWF       _SWR+0, 0 
L__sub_tune599:
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R1 
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       sub_tune_swr_mem_L0+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune600
	MOVF        sub_tune_swr_mem_L0+0, 0 
	SUBWF       _SWR+0, 0 
L__sub_tune600:
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 0 
	MOVWF       R3 
	MOVF        _SWR+0, 0 
	SUBWF       sub_tune_swr_mem_L0+0, 0 
	MOVWF       R1 
	MOVF        _SWR+1, 0 
	SUBWFB      sub_tune_swr_mem_L0+1, 0 
	MOVWF       R2 
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune601
	MOVF        R1, 0 
	SUBLW       100
L__sub_tune601:
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R0 
	MOVF        R3, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_sub_tune106
	GOTO        L_end_sub_tune
L_sub_tune106:
;main.h,321 :: 		swr_mem = SWR;
	MOVF        _SWR+0, 0 
	MOVWF       sub_tune_swr_mem_L0+0 
	MOVF        _SWR+1, 0 
	MOVWF       sub_tune_swr_mem_L0+1 
;main.h,322 :: 		ind_mem = ind;
	MOVF        main_ind+0, 0 
	MOVWF       sub_tune_ind_mem_L0+0 
	MOVLW       0
	MOVWF       sub_tune_ind_mem_L0+1 
;main.h,323 :: 		cap_mem = cap;
	MOVF        main_cap+0, 0 
	MOVWF       sub_tune_cap_mem_L0+0 
	MOVLW       0
	MOVWF       sub_tune_cap_mem_L0+1 
;main.h,325 :: 		if(SW==1) SW = 0; else SW = 1;
	MOVF        main_SW+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_sub_tune107
	CLRF        main_SW+0 
	GOTO        L_sub_tune108
L_sub_tune107:
	MOVLW       1
	MOVWF       main_SW+0 
L_sub_tune108:
;main.h,326 :: 		atu_reset();
	CALL        _atu_reset+0, 0
;main.h,327 :: 		set_sw(SW);
	MOVF        main_SW+0, 0 
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
;main.h,328 :: 		Delay_ms(50);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_sub_tune109:
	DECFSZ      R13, 1, 1
	BRA         L_sub_tune109
	DECFSZ      R12, 1, 1
	BRA         L_sub_tune109
	DECFSZ      R11, 1, 1
	BRA         L_sub_tune109
	NOP
;main.h,329 :: 		get_swr(); if(SWR<120) return;
	CALL        _get_swr+0, 0
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune602
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__sub_tune602:
	BTFSC       STATUS+0, 0 
	GOTO        L_sub_tune110
	GOTO        L_end_sub_tune
L_sub_tune110:
;main.h,331 :: 		coarse_tune(); if(SWR==0) {atu_reset(); return;}
	CALL        _coarse_tune+0, 0
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune603
	MOVLW       0
	XORWF       _SWR+0, 0 
L__sub_tune603:
	BTFSS       STATUS+0, 2 
	GOTO        L_sub_tune111
	CALL        _atu_reset+0, 0
	GOTO        L_end_sub_tune
L_sub_tune111:
;main.h,332 :: 		get_swr(); if(SWR<120) return;
	CALL        _get_swr+0, 0
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune604
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__sub_tune604:
	BTFSC       STATUS+0, 0 
	GOTO        L_sub_tune112
	GOTO        L_end_sub_tune
L_sub_tune112:
;main.h,333 :: 		sharp_ind(); if(SWR==0) {atu_reset(); return;}
	CALL        _sharp_ind+0, 0
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune605
	MOVLW       0
	XORWF       _SWR+0, 0 
L__sub_tune605:
	BTFSS       STATUS+0, 2 
	GOTO        L_sub_tune113
	CALL        _atu_reset+0, 0
	GOTO        L_end_sub_tune
L_sub_tune113:
;main.h,334 :: 		get_swr(); if(SWR<120) return;
	CALL        _get_swr+0, 0
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune606
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__sub_tune606:
	BTFSC       STATUS+0, 0 
	GOTO        L_sub_tune114
	GOTO        L_end_sub_tune
L_sub_tune114:
;main.h,335 :: 		sharp_cap(); if(SWR==0) {atu_reset(); return;}
	CALL        _sharp_cap+0, 0
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune607
	MOVLW       0
	XORWF       _SWR+0, 0 
L__sub_tune607:
	BTFSS       STATUS+0, 2 
	GOTO        L_sub_tune115
	CALL        _atu_reset+0, 0
	GOTO        L_end_sub_tune
L_sub_tune115:
;main.h,336 :: 		get_swr(); if(SWR<120) return;
	CALL        _get_swr+0, 0
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune608
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__sub_tune608:
	BTFSC       STATUS+0, 0 
	GOTO        L_sub_tune116
	GOTO        L_end_sub_tune
L_sub_tune116:
;main.h,338 :: 		if(SWR>swr_mem) {
	MOVLW       128
	XORWF       sub_tune_swr_mem_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       _SWR+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune609
	MOVF        _SWR+0, 0 
	SUBWF       sub_tune_swr_mem_L0+0, 0 
L__sub_tune609:
	BTFSC       STATUS+0, 0 
	GOTO        L_sub_tune117
;main.h,339 :: 		if(SW==1) SW = 0; else SW = 1;
	MOVF        main_SW+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_sub_tune118
	CLRF        main_SW+0 
	GOTO        L_sub_tune119
L_sub_tune118:
	MOVLW       1
	MOVWF       main_SW+0 
L_sub_tune119:
;main.h,340 :: 		set_sw(SW);
	MOVF        main_SW+0, 0 
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
;main.h,341 :: 		ind = ind_mem;
	MOVF        sub_tune_ind_mem_L0+0, 0 
	MOVWF       main_ind+0 
;main.h,342 :: 		cap = cap_mem;
	MOVF        sub_tune_cap_mem_L0+0, 0 
	MOVWF       main_cap+0 
;main.h,343 :: 		set_ind(ind);
	MOVF        sub_tune_ind_mem_L0+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.h,344 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,345 :: 		SWR = swr_mem;
	MOVF        sub_tune_swr_mem_L0+0, 0 
	MOVWF       _SWR+0 
	MOVF        sub_tune_swr_mem_L0+1, 0 
	MOVWF       _SWR+1 
;main.h,346 :: 		}
L_sub_tune117:
;main.h,348 :: 		asm CLRWDT;
	CLRWDT
;main.h,349 :: 		return;
;main.h,350 :: 		}
L_end_sub_tune:
	RETURN      0
; end of _sub_tune

_tune:

;main.h,354 :: 		void tune() {
;main.h,356 :: 		asm CLRWDT;
	CLRWDT
;main.h,358 :: 		p_cnt = 0;
	CLRF        _p_cnt+0 
;main.h,359 :: 		P_max = 0;
	CLRF        _P_max+0 
	CLRF        _P_max+1 
;main.h,361 :: 		rready = 0;
	CLRF        _rready+0 
;main.h,362 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,363 :: 		if(SWR<110) return;
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__tune611
	MOVLW       110
	SUBWF       _SWR+0, 0 
L__tune611:
	BTFSC       STATUS+0, 0 
	GOTO        L_tune120
	GOTO        L_end_tune
L_tune120:
;main.h,364 :: 		atu_reset();
	CALL        _atu_reset+0, 0
;main.h,365 :: 		if(Loss_ind==0) lcd_ind();
	MOVF        main_Loss_ind+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_tune121
	CALL        _lcd_ind+0, 0
L_tune121:
;main.h,366 :: 		Delay_ms(50);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_tune122:
	DECFSZ      R13, 1, 1
	BRA         L_tune122
	DECFSZ      R12, 1, 1
	BRA         L_tune122
	DECFSZ      R11, 1, 1
	BRA         L_tune122
	NOP
;main.h,367 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,368 :: 		swr_a = SWR;
	MOVF        _SWR+0, 0 
	MOVWF       _swr_a+0 
	MOVF        _SWR+1, 0 
	MOVWF       _swr_a+1 
;main.h,369 :: 		if(SWR<110) return;
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__tune612
	MOVLW       110
	SUBWF       _SWR+0, 0 
L__tune612:
	BTFSC       STATUS+0, 0 
	GOTO        L_tune123
	GOTO        L_end_tune
L_tune123:
;main.h,370 :: 		if(max_swr>110 & SWR>max_swr) return;
	MOVLW       128
	MOVWF       R1 
	MOVLW       128
	XORWF       main_max_swr+1, 0 
	SUBWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__tune613
	MOVF        main_max_swr+0, 0 
	SUBLW       110
L__tune613:
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R1 
	MOVLW       128
	XORWF       main_max_swr+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       _SWR+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__tune614
	MOVF        _SWR+0, 0 
	SUBWF       main_max_swr+0, 0 
L__tune614:
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_tune124
	GOTO        L_end_tune
L_tune124:
;main.h,373 :: 		sub_tune(); if(SWR==0) {atu_reset(); return;}
	CALL        _sub_tune+0, 0
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__tune615
	MOVLW       0
	XORWF       _SWR+0, 0 
L__tune615:
	BTFSS       STATUS+0, 2 
	GOTO        L_tune125
	CALL        _atu_reset+0, 0
	GOTO        L_end_tune
L_tune125:
;main.h,374 :: 		if(SWR<120) return;
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__tune616
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__tune616:
	BTFSC       STATUS+0, 0 
	GOTO        L_tune126
	GOTO        L_end_tune
L_tune126:
;main.h,375 :: 		if(C_q==5 & L_q==5) return;
	MOVF        main_C_q+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        main_L_q+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_tune127
	GOTO        L_end_tune
L_tune127:
;main.h,377 :: 		if(L_q>5) {
	MOVF        main_L_q+0, 0 
	SUBLW       5
	BTFSC       STATUS+0, 0 
	GOTO        L_tune128
;main.h,378 :: 		step_ind = L_mult;
	MOVF        main_L_mult+0, 0 
	MOVWF       main_step_ind+0 
;main.h,379 :: 		L_mult = 1;
	MOVLW       1
	MOVWF       main_L_mult+0 
;main.h,380 :: 		sharp_ind();
	CALL        _sharp_ind+0, 0
;main.h,381 :: 		}
L_tune128:
;main.h,382 :: 		if(SWR<120) return;
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__tune617
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__tune617:
	BTFSC       STATUS+0, 0 
	GOTO        L_tune129
	GOTO        L_end_tune
L_tune129:
;main.h,383 :: 		if(C_q>5) {
	MOVF        main_C_q+0, 0 
	SUBLW       5
	BTFSC       STATUS+0, 0 
	GOTO        L_tune130
;main.h,384 :: 		step_cap = C_mult;  // = C_mult
	MOVF        main_C_mult+0, 0 
	MOVWF       main_step_cap+0 
;main.h,385 :: 		C_mult = 1;
	MOVLW       1
	MOVWF       main_C_mult+0 
;main.h,386 :: 		sharp_cap();
	CALL        _sharp_cap+0, 0
;main.h,387 :: 		}
L_tune130:
;main.h,388 :: 		if(L_q==5)L_mult = 1;
	MOVF        main_L_q+0, 0 
	XORLW       5
	BTFSS       STATUS+0, 2 
	GOTO        L_tune131
	MOVLW       1
	MOVWF       main_L_mult+0 
	GOTO        L_tune132
L_tune131:
;main.h,389 :: 		else if(L_q==6) L_mult = 2;
	MOVF        main_L_q+0, 0 
	XORLW       6
	BTFSS       STATUS+0, 2 
	GOTO        L_tune133
	MOVLW       2
	MOVWF       main_L_mult+0 
	GOTO        L_tune134
L_tune133:
;main.h,390 :: 		else if(L_q==7) L_mult = 4;
	MOVF        main_L_q+0, 0 
	XORLW       7
	BTFSS       STATUS+0, 2 
	GOTO        L_tune135
	MOVLW       4
	MOVWF       main_L_mult+0 
L_tune135:
L_tune134:
L_tune132:
;main.h,391 :: 		if(C_q==5) C_mult =1;
	MOVF        main_C_q+0, 0 
	XORLW       5
	BTFSS       STATUS+0, 2 
	GOTO        L_tune136
	MOVLW       1
	MOVWF       main_C_mult+0 
	GOTO        L_tune137
L_tune136:
;main.h,392 :: 		else if(C_q==6) C_mult = 2;
	MOVF        main_C_q+0, 0 
	XORLW       6
	BTFSS       STATUS+0, 2 
	GOTO        L_tune138
	MOVLW       2
	MOVWF       main_C_mult+0 
	GOTO        L_tune139
L_tune138:
;main.h,393 :: 		else if(C_q==7) C_mult = 4;
	MOVF        main_C_q+0, 0 
	XORLW       7
	BTFSS       STATUS+0, 2 
	GOTO        L_tune140
	MOVLW       4
	MOVWF       main_C_mult+0 
L_tune140:
L_tune139:
L_tune137:
;main.h,394 :: 		asm CLRWDT;
	CLRWDT
;main.h,395 :: 		return;
;main.h,396 :: 		}
L_end_tune:
	RETURN      0
; end of _tune

_main:

;main.c,35 :: 		void main() {
;main.c,36 :: 		if(RCON.B3==0) Restart = 1;
	BTFSC       RCON+0, 3 
	GOTO        L_main141
	MOVLW       1
	MOVWF       _Restart+0 
L_main141:
;main.c,37 :: 		pic_init();
	CALL        _pic_init+0, 0
;main.c,40 :: 		Delay_ms (300);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       23
	MOVWF       R12, 0
	MOVLW       106
	MOVWF       R13, 0
L_main142:
	DECFSZ      R13, 1, 1
	BRA         L_main142
	DECFSZ      R12, 1, 1
	BRA         L_main142
	DECFSZ      R11, 1, 1
	BRA         L_main142
	NOP
;main.c,41 :: 		asm CLRWDT;
	CLRWDT
;main.c,42 :: 		cells_init();
	CALL        _cells_init+0, 0
;main.c,43 :: 		Soft_I2C_Init();
	CALL        _Soft_I2C_Init+0, 0
;main.c,44 :: 		if(type==0) { // 2-colors led  reset
	MOVF        _type+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main143
;main.c,45 :: 		Soft_I2C_Scl = 1;
	BSF         LATC6_bit+0, BitPos(LATC6_bit+0) 
;main.c,46 :: 		Soft_I2C_Sda = 1;
	BSF         LATC7_bit+0, BitPos(LATC7_bit+0) 
;main.c,47 :: 		}
L_main143:
;main.c,48 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
	MOVF        _Dysp_delay+0, 0 
	MOVWF       R0 
	CALL        _byte2double+0, 0
	MOVF        _dysp_cnt_mult+0, 0 
	MOVWF       R4 
	MOVF        _dysp_cnt_mult+1, 0 
	MOVWF       R5 
	MOVF        _dysp_cnt_mult+2, 0 
	MOVWF       R6 
	MOVF        _dysp_cnt_mult+3, 0 
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	CALL        _double2int+0, 0
	MOVF        R0, 0 
	MOVWF       _dysp_cnt+0 
	MOVF        R1, 0 
	MOVWF       _dysp_cnt+1 
;main.c,50 :: 		Delay_ms(300);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       23
	MOVWF       R12, 0
	MOVLW       106
	MOVWF       R13, 0
L_main144:
	DECFSZ      R13, 1, 1
	BRA         L_main144
	DECFSZ      R12, 1, 1
	BRA         L_main144
	DECFSZ      R11, 1, 1
	BRA         L_main144
	NOP
;main.c,51 :: 		asm CLRWDT;
	CLRWDT
;main.c,53 :: 		if(PORTB.B1==0 & PORTB.B2==0) {  // Test mode
	BTFSC       PORTB+0, 1 
	GOTO        L__main619
	BSF         R4, 0 
	GOTO        L__main620
L__main619:
	BCF         R4, 0 
L__main620:
	BTFSC       PORTB+0, 2 
	GOTO        L__main621
	BSF         STATUS+0, 0 
	GOTO        L__main622
L__main621:
	BCF         STATUS+0, 0 
L__main622:
	BTFSS       R4, 0 
	GOTO        L__main623
	BTFSS       STATUS+0, 0 
	GOTO        L__main623
	BSF         R4, 0 
	GOTO        L__main624
L__main623:
	BCF         R4, 0 
L__main624:
	BTFSS       R4, 0 
	GOTO        L_main145
;main.c,54 :: 		Test = 1;
	MOVLW       1
	MOVWF       _Test+0 
;main.c,55 :: 		Auto =0;
	CLRF        _Auto+0 
;main.c,56 :: 		}
L_main145:
;main.c,57 :: 		if(L_q==5) L_mult = 1;
	MOVF        main_L_q+0, 0 
	XORLW       5
	BTFSS       STATUS+0, 2 
	GOTO        L_main146
	MOVLW       1
	MOVWF       main_L_mult+0 
	GOTO        L_main147
L_main146:
;main.c,58 :: 		else if(L_q==6) L_mult = 2;
	MOVF        main_L_q+0, 0 
	XORLW       6
	BTFSS       STATUS+0, 2 
	GOTO        L_main148
	MOVLW       2
	MOVWF       main_L_mult+0 
	GOTO        L_main149
L_main148:
;main.c,59 :: 		else if(L_q==7) L_mult = 4;
	MOVF        main_L_q+0, 0 
	XORLW       7
	BTFSS       STATUS+0, 2 
	GOTO        L_main150
	MOVLW       4
	MOVWF       main_L_mult+0 
	GOTO        L_main151
L_main150:
;main.c,60 :: 		else if(L_q==8) L_mult = 8;
	MOVF        main_L_q+0, 0 
	XORLW       8
	BTFSS       STATUS+0, 2 
	GOTO        L_main152
	MOVLW       8
	MOVWF       main_L_mult+0 
L_main152:
L_main151:
L_main149:
L_main147:
;main.c,61 :: 		if(C_q==5) C_mult =1;
	MOVF        main_C_q+0, 0 
	XORLW       5
	BTFSS       STATUS+0, 2 
	GOTO        L_main153
	MOVLW       1
	MOVWF       main_C_mult+0 
	GOTO        L_main154
L_main153:
;main.c,62 :: 		else if(C_q==6) C_mult = 2;
	MOVF        main_C_q+0, 0 
	XORLW       6
	BTFSS       STATUS+0, 2 
	GOTO        L_main155
	MOVLW       2
	MOVWF       main_C_mult+0 
	GOTO        L_main156
L_main155:
;main.c,63 :: 		else if(C_q==7) C_mult = 4;
	MOVF        main_C_q+0, 0 
	XORLW       7
	BTFSS       STATUS+0, 2 
	GOTO        L_main157
	MOVLW       4
	MOVWF       main_C_mult+0 
L_main157:
L_main156:
L_main154:
;main.c,65 :: 		Delay_ms(300);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       23
	MOVWF       R12, 0
	MOVLW       106
	MOVWF       R13, 0
L_main158:
	DECFSZ      R13, 1, 1
	BRA         L_main158
	DECFSZ      R12, 1, 1
	BRA         L_main158
	DECFSZ      R11, 1, 1
	BRA         L_main158
	NOP
;main.c,66 :: 		asm CLRWDT;
	CLRWDT
;main.c,67 :: 		Delay_ms(300);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       23
	MOVWF       R12, 0
	MOVLW       106
	MOVWF       R13, 0
L_main159:
	DECFSZ      R13, 1, 1
	BRA         L_main159
	DECFSZ      R12, 1, 1
	BRA         L_main159
	DECFSZ      R11, 1, 1
	BRA         L_main159
	NOP
;main.c,68 :: 		asm CLRWDT;
	CLRWDT
;main.c,69 :: 		Delay_ms(300);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       23
	MOVWF       R12, 0
	MOVLW       106
	MOVWF       R13, 0
L_main160:
	DECFSZ      R13, 1, 1
	BRA         L_main160
	DECFSZ      R12, 1, 1
	BRA         L_main160
	DECFSZ      R11, 1, 1
	BRA         L_main160
	NOP
;main.c,70 :: 		asm CLRWDT;
	CLRWDT
;main.c,71 :: 		Delay_ms(300);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       23
	MOVWF       R12, 0
	MOVLW       106
	MOVWF       R13, 0
L_main161:
	DECFSZ      R13, 1, 1
	BRA         L_main161
	DECFSZ      R12, 1, 1
	BRA         L_main161
	DECFSZ      R11, 1, 1
	BRA         L_main161
	NOP
;main.c,72 :: 		asm CLRWDT;
	CLRWDT
;main.c,73 :: 		Delay_ms(300);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       23
	MOVWF       R12, 0
	MOVLW       106
	MOVWF       R13, 0
L_main162:
	DECFSZ      R13, 1, 1
	BRA         L_main162
	DECFSZ      R12, 1, 1
	BRA         L_main162
	DECFSZ      R11, 1, 1
	BRA         L_main162
	NOP
;main.c,74 :: 		asm CLRWDT;
	CLRWDT
;main.c,76 :: 		led_init();
	CALL        _led_init+0, 0
;main.c,78 :: 		if(PORTB.B1==0 & PORTB.B2==0 & PORTB.B0==0)  { // Fast Test mode (loop)
	BTFSC       PORTB+0, 1 
	GOTO        L__main625
	BSF         R4, 0 
	GOTO        L__main626
L__main625:
	BCF         R4, 0 
L__main626:
	BTFSC       PORTB+0, 2 
	GOTO        L__main627
	BSF         STATUS+0, 0 
	GOTO        L__main628
L__main627:
	BCF         STATUS+0, 0 
L__main628:
	BTFSS       R4, 0 
	GOTO        L__main629
	BTFSS       STATUS+0, 0 
	GOTO        L__main629
	BSF         R4, 0 
	GOTO        L__main630
L__main629:
	BCF         R4, 0 
L__main630:
	BTFSC       PORTB+0, 0 
	GOTO        L__main631
	BSF         STATUS+0, 0 
	GOTO        L__main632
L__main631:
	BCF         STATUS+0, 0 
L__main632:
	BTFSS       R4, 0 
	GOTO        L__main633
	BTFSS       STATUS+0, 0 
	GOTO        L__main633
	BSF         R4, 0 
	GOTO        L__main634
L__main633:
	BCF         R4, 0 
L__main634:
	BTFSS       R4, 0 
	GOTO        L_main163
;main.c,79 :: 		if(type==4 | type==5)  led_wr_str (0, 12, "FAST TEST", 9); // 128*64
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main164
	CLRF        FARG_led_wr_str+0 
	MOVLW       12
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr1_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr1_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_main165
L_main164:
;main.c,80 :: 		else if(type!=0) led_wr_str (0, 3, "FAST TEST", 9); // 1602 | 128*32
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_main166
	CLRF        FARG_led_wr_str+0 
	MOVLW       3
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr2_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr2_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_main166:
L_main165:
;main.c,81 :: 		set_cap(255);
	MOVLW       255
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.c,82 :: 		if(L_invert==0) set_ind(255);
	MOVF        main_L_invert+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main167
	MOVLW       255
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
	GOTO        L_main168
L_main167:
;main.c,83 :: 		else set_ind(0);
	CLRF        FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
L_main168:
;main.c,84 :: 		set_sw(1);
	MOVLW       1
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
;main.c,85 :: 		asm CLRWDT;
	CLRWDT
;main.c,86 :: 		while(1) {Delay_ms(500);asm CLRWDT;}
L_main169:
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main171:
	DECFSZ      R13, 1, 1
	BRA         L_main171
	DECFSZ      R12, 1, 1
	BRA         L_main171
	DECFSZ      R11, 1, 1
	BRA         L_main171
	NOP
	NOP
	CLRWDT
	GOTO        L_main169
;main.c,87 :: 		}
L_main163:
;main.c,88 :: 		asm CLRWDT;
	CLRWDT
;main.c,90 :: 		if(Button(&PORTB, 0, 100, 0))  { //  Fider loss input
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	CLRF        FARG_Button_pin+0 
	MOVLW       100
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main172
;main.c,91 :: 		if(type==4 | type==5) { led_wr_str (0, 6, "Fider Loss", 10); // 128*64
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main173
	CLRF        FARG_led_wr_str+0 
	MOVLW       6
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr3_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr3_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       10
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,92 :: 		led_wr_str (2, 6, "input", 5);
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	MOVLW       6
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr4_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr4_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       5
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,93 :: 		led_wr_str (4, 6+3*12, "dB", 2);}
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	MOVLW       42
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr5_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr5_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_main174
L_main173:
;main.c,94 :: 		else if(type!=0) { led_wr_str (0, 0, "Fider Loss input", 16); // 1602 | 128*32
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_main175
	CLRF        FARG_led_wr_str+0 
	CLRF        FARG_led_wr_str+0 
	MOVLW       ?lstr6_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr6_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,95 :: 		led_wr_str (1, 3, "dB", 2);}
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	MOVLW       3
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr7_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr7_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_main175:
L_main174:
;main.c,96 :: 		Fid_loss = Bcd2Dec(EEPROM_Read(0x34));
	MOVLW       52
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	MOVWF       _Fid_loss+0 
;main.c,97 :: 		show_loss();
	CALL        _show_loss+0, 0
;main.c,99 :: 		while(1) {
L_main176:
;main.c,100 :: 		if(Button(&PORTB, 2, 50, 0)){   // BYP button
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       50
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main178
;main.c,101 :: 		if(Fid_loss<99) {
	MOVLW       99
	SUBWF       _Fid_loss+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main179
;main.c,102 :: 		Fid_loss ++;
	INCF        _Fid_loss+0, 1 
;main.c,103 :: 		show_loss();
	CALL        _show_loss+0, 0
;main.c,104 :: 		EEPROM_Write(0x34, Dec2Bcd(Fid_loss));
	MOVF        _Fid_loss+0, 0 
	MOVWF       FARG_Dec2Bcd_decnum+0 
	CALL        _Dec2Bcd+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_EEPROM_Write_data_+0 
	MOVLW       52
	MOVWF       FARG_EEPROM_Write_address+0 
	CALL        _EEPROM_Write+0, 0
;main.c,105 :: 		}
L_main179:
;main.c,106 :: 		while(Button(&PORTB, 2, 50, 0)) asm CLRWDT;
L_main180:
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       50
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main181
	CLRWDT
	GOTO        L_main180
L_main181:
;main.c,107 :: 		}
L_main178:
;main.c,109 :: 		if(Button(&PORTB, 1, 50, 0)){   // AUTO button
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       1
	MOVWF       FARG_Button_pin+0 
	MOVLW       50
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main182
;main.c,110 :: 		if(Fid_loss>0) {
	MOVF        _Fid_loss+0, 0 
	SUBLW       0
	BTFSC       STATUS+0, 0 
	GOTO        L_main183
;main.c,111 :: 		Fid_loss --;
	DECF        _Fid_loss+0, 1 
;main.c,112 :: 		show_loss();
	CALL        _show_loss+0, 0
;main.c,113 :: 		EEPROM_Write(0x34, Dec2Bcd(Fid_loss));
	MOVF        _Fid_loss+0, 0 
	MOVWF       FARG_Dec2Bcd_decnum+0 
	CALL        _Dec2Bcd+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_EEPROM_Write_data_+0 
	MOVLW       52
	MOVWF       FARG_EEPROM_Write_address+0 
	CALL        _EEPROM_Write+0, 0
;main.c,114 :: 		}
L_main183:
;main.c,115 :: 		while(Button(&PORTB, 1, 50, 0)) asm CLRWDT;
L_main184:
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       1
	MOVWF       FARG_Button_pin+0 
	MOVLW       50
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main185
	CLRWDT
	GOTO        L_main184
L_main185:
;main.c,116 :: 		}
L_main182:
;main.c,117 :: 		asm CLRWDT;
	CLRWDT
;main.c,118 :: 		}  // while
	GOTO        L_main176
;main.c,119 :: 		} //  Fider loss input
L_main172:
;main.c,121 :: 		if(Test==0) {
	MOVF        _Test+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main186
;main.c,122 :: 		cap = EEPROM_Read(255);
	MOVLW       255
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_cap+0 
;main.c,123 :: 		ind = EEPROM_Read(254);
	MOVLW       254
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_ind+0 
;main.c,124 :: 		SW = EEPROM_Read(253);
	MOVLW       253
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_SW+0 
;main.c,125 :: 		swr_a = EEPROM_Read(252) * 256;
	MOVLW       252
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       _swr_a+1 
	CLRF        _swr_a+0 
;main.c,126 :: 		swr_a += EEPROM_Read(251);
	MOVLW       251
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	ADDWF       _swr_a+0, 1 
	MOVLW       0
	ADDWFC      _swr_a+1, 1 
;main.c,127 :: 		set_ind(ind);
	MOVF        main_ind+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.c,128 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.c,129 :: 		set_sw(SW);
	MOVF        main_SW+0, 0 
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
;main.c,130 :: 		if(Restart==1 ) lcd_prep_short = 1;
	MOVF        _Restart+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main187
	MOVLW       1
	MOVWF       _lcd_prep_short+0 
L_main187:
;main.c,131 :: 		lcd_prep();
	CALL        _lcd_prep+0, 0
;main.c,132 :: 		}
	GOTO        L_main188
L_main186:
;main.c,133 :: 		else Test_init();
	CALL        _test_init+0, 0
L_main188:
;main.c,135 :: 		lcd_ind();
	CALL        _lcd_ind+0, 0
;main.c,136 :: 		tune_btn_release = 1;
	BSF         _tune_btn_release+0, BitPos(_tune_btn_release+0) 
;main.c,142 :: 		while(1) {
L_main189:
;main.c,143 :: 		asm CLRWDT;
	CLRWDT
;main.c,144 :: 		lcd_pwr();
	CALL        _lcd_pwr+0, 0
;main.c,146 :: 		if(Test==0) button_proc();
	MOVF        _Test+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main191
	CALL        _button_proc+0, 0
	GOTO        L_main192
L_main191:
;main.c,147 :: 		else button_proc_test();
	CALL        _button_proc_test+0, 0
L_main192:
;main.c,149 :: 		if(dysp_cnt!=0) dysp_cnt --;
	MOVLW       0
	XORWF       _dysp_cnt+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main635
	MOVLW       0
	XORWF       _dysp_cnt+0, 0 
L__main635:
	BTFSC       STATUS+0, 2 
	GOTO        L_main193
	MOVLW       1
	SUBWF       _dysp_cnt+0, 1 
	MOVLW       0
	SUBWFB      _dysp_cnt+1, 1 
	GOTO        L_main194
L_main193:
;main.c,150 :: 		else if(Test==0 & Dysp_delay!=0 & dysp==1){
	MOVF        _Test+0, 0 
	XORLW       0
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _Dysp_delay+0, 0 
	XORLW       0
	MOVLW       0
	BTFSS       STATUS+0, 2 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _dysp+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main195
;main.c,151 :: 		if(Relay_off){
	MOVF        main_Relay_off+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main196
;main.c,152 :: 		set_ind(0);
	CLRF        FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.c,153 :: 		set_cap(0);
	CLRF        FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.c,154 :: 		set_SW(0);
	CLRF        FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
;main.c,155 :: 		}
L_main196:
;main.c,156 :: 		dysp = 0;
	CLRF        _dysp+0 
;main.c,157 :: 		dysp_off();
	CALL        _dysp_off+0, 0
;main.c,158 :: 		}
L_main195:
L_main194:
;main.c,162 :: 		}
	GOTO        L_main189
;main.c,163 :: 		}
L_end_main:
	GOTO        $+0
; end of _main

_button_proc_test:

;main.c,168 :: 		void button_proc_test(void) {
;main.c,169 :: 		if(Button(&PORTB, 0, 50, 0)){    // Tune btn
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	CLRF        FARG_Button_pin+0 
	MOVLW       50
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc_test197
;main.c,170 :: 		Delay_ms(250);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_button_proc_test198:
	DECFSZ      R13, 1, 1
	BRA         L_button_proc_test198
	DECFSZ      R12, 1, 1
	BRA         L_button_proc_test198
	DECFSZ      R11, 1, 1
	BRA         L_button_proc_test198
	NOP
	NOP
;main.c,171 :: 		asm CLRWDT;
	CLRWDT
;main.c,172 :: 		if(PORTB.B0==1) { // short press button
	BTFSS       PORTB+0, 0 
	GOTO        L_button_proc_test199
;main.c,173 :: 		if(SW==0) SW = 1; else SW = 0;
	MOVF        main_SW+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_button_proc_test200
	MOVLW       1
	MOVWF       main_SW+0 
	GOTO        L_button_proc_test201
L_button_proc_test200:
	CLRF        main_SW+0 
L_button_proc_test201:
;main.c,174 :: 		set_sw(SW);
	MOVF        main_SW+0, 0 
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
;main.c,175 :: 		lcd_ind();
	CALL        _lcd_ind+0, 0
;main.c,176 :: 		}
	GOTO        L_button_proc_test202
L_button_proc_test199:
;main.c,178 :: 		if(L==1) L = 0; else L = 1;
	MOVF        _L+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_button_proc_test203
	CLRF        _L+0 
	GOTO        L_button_proc_test204
L_button_proc_test203:
	MOVLW       1
	MOVWF       _L+0 
L_button_proc_test204:
;main.c,179 :: 		if(L==1) {
	MOVF        _L+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_button_proc_test205
;main.c,180 :: 		if(type==4 |type==5)   // 128*64 OLED
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc_test206
;main.c,181 :: 		led_wr_str (0, 16+12*8, "l", 1);
	CLRF        FARG_led_wr_str+0 
	MOVLW       112
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr8_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr8_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_button_proc_test207
L_button_proc_test206:
;main.c,182 :: 		else if(type!=0)              // 1602 LCD & 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc_test208
;main.c,183 :: 		led_wr_str (0, 8, "l", 1);
	CLRF        FARG_led_wr_str+0 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr9_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr9_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_button_proc_test208:
L_button_proc_test207:
;main.c,184 :: 		}
	GOTO        L_button_proc_test209
L_button_proc_test205:
;main.c,186 :: 		if(type==4 |type==5)   // 128*64 OLED
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc_test210
;main.c,187 :: 		led_wr_str (0, 16+12*8, "c", 1);
	CLRF        FARG_led_wr_str+0 
	MOVLW       112
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr10_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr10_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_button_proc_test211
L_button_proc_test210:
;main.c,188 :: 		else if(type!=0)              // 1602 LCD & 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc_test212
;main.c,189 :: 		led_wr_str (0, 8, "c", 1);
	CLRF        FARG_led_wr_str+0 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr11_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr11_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_button_proc_test212:
L_button_proc_test211:
;main.c,190 :: 		}
L_button_proc_test209:
;main.c,191 :: 		}
L_button_proc_test202:
;main.c,192 :: 		while(Button(&PORTB, 0, 50, 0)) {lcd_pwr(); asm CLRWDT;   }
L_button_proc_test213:
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	CLRF        FARG_Button_pin+0 
	MOVLW       50
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc_test214
	CALL        _lcd_pwr+0, 0
	CLRWDT
	GOTO        L_button_proc_test213
L_button_proc_test214:
;main.c,193 :: 		}  // END Tune btn
L_button_proc_test197:
;main.c,195 :: 		if(Button(&PORTB, 2, 50, 0)){   // BYP button
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       50
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc_test215
;main.c,196 :: 		asm CLRWDT;
	CLRWDT
;main.c,197 :: 		while(PORTB.B2==0) {
L_button_proc_test216:
	BTFSC       PORTB+0, 2 
	GOTO        L_button_proc_test217
;main.c,198 :: 		if(L & ind<32*L_mult-1) {
	MOVLW       5
	MOVWF       R2 
	MOVF        main_L_mult+0, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        R2, 0 
L__button_proc_test637:
	BZ          L__button_proc_test638
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	ADDLW       255
	GOTO        L__button_proc_test637
L__button_proc_test638:
	MOVLW       1
	SUBWF       R0, 0 
	MOVWF       R2 
	MOVLW       0
	SUBWFB      R1, 0 
	MOVWF       R3 
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       R3, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__button_proc_test639
	MOVF        R2, 0 
	SUBWF       main_ind+0, 0 
L__button_proc_test639:
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R0 
	MOVF        _L+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc_test218
;main.c,199 :: 		ind ++;
	INCF        main_ind+0, 1 
;main.c,200 :: 		set_ind(ind);
	MOVF        main_ind+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.c,201 :: 		}
	GOTO        L_button_proc_test219
L_button_proc_test218:
;main.c,202 :: 		else if(!L & cap<32*L_mult-1) {
	MOVF        _L+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R4 
	MOVLW       5
	MOVWF       R2 
	MOVF        main_L_mult+0, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        R2, 0 
L__button_proc_test640:
	BZ          L__button_proc_test641
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	ADDLW       255
	GOTO        L__button_proc_test640
L__button_proc_test641:
	MOVLW       1
	SUBWF       R0, 0 
	MOVWF       R2 
	MOVLW       0
	SUBWFB      R1, 0 
	MOVWF       R3 
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       R3, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__button_proc_test642
	MOVF        R2, 0 
	SUBWF       main_cap+0, 0 
L__button_proc_test642:
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R0 
	MOVF        R4, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc_test220
;main.c,203 :: 		cap ++;
	INCF        main_cap+0, 1 
;main.c,204 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.c,205 :: 		}
L_button_proc_test220:
L_button_proc_test219:
;main.c,206 :: 		lcd_ind();
	CALL        _lcd_ind+0, 0
;main.c,207 :: 		lcd_pwr();
	CALL        _lcd_pwr+0, 0
;main.c,208 :: 		Delay_ms(30);
	MOVLW       156
	MOVWF       R12, 0
	MOVLW       215
	MOVWF       R13, 0
L_button_proc_test221:
	DECFSZ      R13, 1, 1
	BRA         L_button_proc_test221
	DECFSZ      R12, 1, 1
	BRA         L_button_proc_test221
;main.c,209 :: 		asm CLRWDT;
	CLRWDT
;main.c,210 :: 		}
	GOTO        L_button_proc_test216
L_button_proc_test217:
;main.c,211 :: 		}   // end of BYP button
L_button_proc_test215:
;main.c,213 :: 		if(Button(&PORTB, 1, 50, 0) & Bypas==0){   // Auto button
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       1
	MOVWF       FARG_Button_pin+0 
	MOVLW       50
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        _bypas+0, 0 
	XORLW       0
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc_test222
;main.c,214 :: 		asm CLRWDT;
	CLRWDT
;main.c,215 :: 		while(PORTB.B1==0) {
L_button_proc_test223:
	BTFSC       PORTB+0, 1 
	GOTO        L_button_proc_test224
;main.c,216 :: 		if(L & ind>0) {
	MOVF        main_ind+0, 0 
	SUBLW       0
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R0 
	MOVF        _L+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc_test225
;main.c,217 :: 		ind --;
	DECF        main_ind+0, 1 
;main.c,218 :: 		set_ind(ind);
	MOVF        main_ind+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.c,219 :: 		}
	GOTO        L_button_proc_test226
L_button_proc_test225:
;main.c,220 :: 		else if(!L & cap>0) {
	MOVF        _L+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        main_cap+0, 0 
	SUBLW       0
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc_test227
;main.c,221 :: 		cap --;
	DECF        main_cap+0, 1 
;main.c,222 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.c,223 :: 		}
L_button_proc_test227:
L_button_proc_test226:
;main.c,224 :: 		lcd_ind();
	CALL        _lcd_ind+0, 0
;main.c,225 :: 		lcd_pwr();
	CALL        _lcd_pwr+0, 0
;main.c,226 :: 		Delay_ms(30);
	MOVLW       156
	MOVWF       R12, 0
	MOVLW       215
	MOVWF       R13, 0
L_button_proc_test228:
	DECFSZ      R13, 1, 1
	BRA         L_button_proc_test228
	DECFSZ      R12, 1, 1
	BRA         L_button_proc_test228
;main.c,227 :: 		asm CLRWDT;
	CLRWDT
;main.c,228 :: 		}
	GOTO        L_button_proc_test223
L_button_proc_test224:
;main.c,229 :: 		}
L_button_proc_test222:
;main.c,230 :: 		return;
;main.c,231 :: 		}
L_end_button_proc_test:
	RETURN      0
; end of _button_proc_test

_button_proc:

;main.c,234 :: 		void button_proc(void) {
;main.c,235 :: 		if(tune_btn_release==0 & Button(&PORTB, 0, 50, 1)) tune_btn_release = 1;
	BTFSC       _tune_btn_release+0, BitPos(_tune_btn_release+0) 
	GOTO        L__button_proc644
	BSF         R4, 0 
	GOTO        L__button_proc645
L__button_proc644:
	BCF         R4, 0 
L__button_proc645:
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	CLRF        FARG_Button_pin+0 
	MOVLW       50
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	CLRF        R1 
	BTFSC       R4, 0 
	INCF        R1, 1 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc229
	BSF         _tune_btn_release+0, BitPos(_tune_btn_release+0) 
L_button_proc229:
;main.c,236 :: 		if(tune_btn_release==0 & Button(&PORTB, 0, 50, 0)) dysp_cnt = Dysp_delay * dysp_cnt_mult;
	BTFSC       _tune_btn_release+0, BitPos(_tune_btn_release+0) 
	GOTO        L__button_proc646
	BSF         R4, 0 
	GOTO        L__button_proc647
L__button_proc646:
	BCF         R4, 0 
L__button_proc647:
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	CLRF        FARG_Button_pin+0 
	MOVLW       50
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	CLRF        R1 
	BTFSC       R4, 0 
	INCF        R1, 1 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc230
	MOVF        _Dysp_delay+0, 0 
	MOVWF       R0 
	CALL        _byte2double+0, 0
	MOVF        _dysp_cnt_mult+0, 0 
	MOVWF       R4 
	MOVF        _dysp_cnt_mult+1, 0 
	MOVWF       R5 
	MOVF        _dysp_cnt_mult+2, 0 
	MOVWF       R6 
	MOVF        _dysp_cnt_mult+3, 0 
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	CALL        _double2int+0, 0
	MOVF        R0, 0 
	MOVWF       _dysp_cnt+0 
	MOVF        R1, 0 
	MOVWF       _dysp_cnt+1 
L_button_proc230:
;main.c,237 :: 		if((Button(&PORTB, 0, 50, 0) & tune_btn_release) | Soft_tune){
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	CLRF        FARG_Button_pin+0 
	MOVLW       50
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	CLRF        R1 
	BTFSC       _tune_btn_release+0, BitPos(_tune_btn_release+0) 
	INCF        R1, 1 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	MOVF        _Soft_tune+0, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc231
;main.c,238 :: 		if(dysp==0) { // dysplay ON
	MOVF        _dysp+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_button_proc232
;main.c,239 :: 		if(Relay_off==1){ set_ind(ind); set_cap(cap); set_SW(SW); }
	MOVF        main_Relay_off+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_button_proc233
	MOVF        main_ind+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
	MOVF        main_SW+0, 0 
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
L_button_proc233:
;main.c,240 :: 		dysp = 1;
	MOVLW       1
	MOVWF       _dysp+0 
;main.c,241 :: 		dysp_on();
	CALL        _dysp_on+0, 0
;main.c,242 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
	MOVF        _Dysp_delay+0, 0 
	MOVWF       R0 
	CALL        _byte2double+0, 0
	MOVF        _dysp_cnt_mult+0, 0 
	MOVWF       R4 
	MOVF        _dysp_cnt_mult+1, 0 
	MOVWF       R5 
	MOVF        _dysp_cnt_mult+2, 0 
	MOVWF       R6 
	MOVF        _dysp_cnt_mult+3, 0 
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	CALL        _double2int+0, 0
	MOVF        R0, 0 
	MOVWF       _dysp_cnt+0 
	MOVF        R1, 0 
	MOVWF       _dysp_cnt+1 
;main.c,243 :: 		return;
	GOTO        L_end_button_proc
;main.c,244 :: 		}
L_button_proc232:
;main.c,245 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
	MOVF        _Dysp_delay+0, 0 
	MOVWF       R0 
	CALL        _byte2double+0, 0
	MOVF        _dysp_cnt_mult+0, 0 
	MOVWF       R4 
	MOVF        _dysp_cnt_mult+1, 0 
	MOVWF       R5 
	MOVF        _dysp_cnt_mult+2, 0 
	MOVWF       R6 
	MOVF        _dysp_cnt_mult+3, 0 
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	CALL        _double2int+0, 0
	MOVF        R0, 0 
	MOVWF       _dysp_cnt+0 
	MOVF        R1, 0 
	MOVWF       _dysp_cnt+1 
;main.c,246 :: 		asm CLRWDT;
	CLRWDT
;main.c,247 :: 		Delay_ms(250);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_button_proc234:
	DECFSZ      R13, 1, 1
	BRA         L_button_proc234
	DECFSZ      R12, 1, 1
	BRA         L_button_proc234
	DECFSZ      R11, 1, 1
	BRA         L_button_proc234
	NOP
	NOP
;main.c,248 :: 		asm CLRWDT;
	CLRWDT
;main.c,249 :: 		if(Soft_tune == 0 & PORTB.B0==1) { // short press button
	MOVF        _Soft_tune+0, 0 
	XORLW       0
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	BTFSC       PORTB+0, 0 
	GOTO        L__button_proc648
	BCF         STATUS+0, 0 
	GOTO        L__button_proc649
L__button_proc648:
	BSF         STATUS+0, 0 
L__button_proc649:
	CLRF        R0 
	BTFSC       STATUS+0, 0 
	INCF        R0, 1 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc235
;main.c,250 :: 		show_reset();
	CALL        _show_reset+0, 0
;main.c,251 :: 		bypas =0;
	CLRF        _bypas+0 
;main.c,252 :: 		}
	GOTO        L_button_proc236
L_button_proc235:
;main.c,254 :: 		p_Tx = 1;         //
	MOVLW       1
	MOVWF       _p_Tx+0 
;main.c,255 :: 		n_Tx = 0;         // TX request
	CLRF        _n_Tx+0 
;main.c,256 :: 		Delay_ms(250);    //
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_button_proc237:
	DECFSZ      R13, 1, 1
	BRA         L_button_proc237
	DECFSZ      R12, 1, 1
	BRA         L_button_proc237
	DECFSZ      R11, 1, 1
	BRA         L_button_proc237
	NOP
	NOP
;main.c,257 :: 		btn_push();
	CALL        _btn_push+0, 0
;main.c,258 :: 		bypas = 0;
	CLRF        _bypas+0 
;main.c,259 :: 		Soft_tune = 0;
	CLRF        _Soft_tune+0 
;main.c,260 :: 		tune_btn_release = 0;
	BCF         _tune_btn_release+0, BitPos(_tune_btn_release+0) 
;main.c,261 :: 		}
L_button_proc236:
;main.c,262 :: 		}
L_button_proc231:
;main.c,264 :: 		if(Button(&PORTB, 2, 50, 0)){   // BYP button
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       50
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc238
;main.c,265 :: 		if(dysp==0) { // dysplay ON
	MOVF        _dysp+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_button_proc239
;main.c,266 :: 		if(Relay_off==1){ set_ind(ind); set_cap(cap); set_SW(SW); }
	MOVF        main_Relay_off+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_button_proc240
	MOVF        main_ind+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
	MOVF        main_SW+0, 0 
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
L_button_proc240:
;main.c,267 :: 		dysp = 1;
	MOVLW       1
	MOVWF       _dysp+0 
;main.c,268 :: 		dysp_on();
	CALL        _dysp_on+0, 0
;main.c,269 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
	MOVF        _Dysp_delay+0, 0 
	MOVWF       R0 
	CALL        _byte2double+0, 0
	MOVF        _dysp_cnt_mult+0, 0 
	MOVWF       R4 
	MOVF        _dysp_cnt_mult+1, 0 
	MOVWF       R5 
	MOVF        _dysp_cnt_mult+2, 0 
	MOVWF       R6 
	MOVF        _dysp_cnt_mult+3, 0 
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	CALL        _double2int+0, 0
	MOVF        R0, 0 
	MOVWF       _dysp_cnt+0 
	MOVF        R1, 0 
	MOVWF       _dysp_cnt+1 
;main.c,270 :: 		return;
	GOTO        L_end_button_proc
;main.c,271 :: 		}
L_button_proc239:
;main.c,272 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
	MOVF        _Dysp_delay+0, 0 
	MOVWF       R0 
	CALL        _byte2double+0, 0
	MOVF        _dysp_cnt_mult+0, 0 
	MOVWF       R4 
	MOVF        _dysp_cnt_mult+1, 0 
	MOVWF       R5 
	MOVF        _dysp_cnt_mult+2, 0 
	MOVWF       R6 
	MOVF        _dysp_cnt_mult+3, 0 
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	CALL        _double2int+0, 0
	MOVF        R0, 0 
	MOVWF       _dysp_cnt+0 
	MOVF        R1, 0 
	MOVWF       _dysp_cnt+1 
;main.c,273 :: 		asm CLRWDT;
	CLRWDT
;main.c,274 :: 		if(bypas == 0) {
	MOVF        _bypas+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_button_proc241
;main.c,275 :: 		bypas = 1;
	MOVLW       1
	MOVWF       _bypas+0 
;main.c,276 :: 		cap_mem = cap;
	MOVF        main_cap+0, 0 
	MOVWF       _cap_mem+0 
;main.c,277 :: 		ind_mem = ind;
	MOVF        main_ind+0, 0 
	MOVWF       _ind_mem+0 
;main.c,278 :: 		SW_mem = SW;
	MOVF        main_SW+0, 0 
	MOVWF       _SW_mem+0 
;main.c,279 :: 		cap = 0;
	CLRF        main_cap+0 
;main.c,280 :: 		if(L_invert) ind = 255;
	MOVF        main_L_invert+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc242
	MOVLW       255
	MOVWF       main_ind+0 
	GOTO        L_button_proc243
L_button_proc242:
;main.c,281 :: 		else ind = 0;
	CLRF        main_ind+0 
L_button_proc243:
;main.c,282 :: 		SW = 1;
	MOVLW       1
	MOVWF       main_SW+0 
;main.c,283 :: 		set_ind(ind);
	MOVF        main_ind+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.c,284 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.c,285 :: 		set_SW(SW);
	MOVF        main_SW+0, 0 
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
;main.c,286 :: 		if(Loss_mode==0) lcd_ind();
	MOVF        _Loss_mode+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_button_proc244
	CALL        _lcd_ind+0, 0
L_button_proc244:
;main.c,287 :: 		Auto_mem = Auto;
	MOVF        _Auto+0, 0 
	MOVWF       _Auto_mem+0 
;main.c,288 :: 		Auto = 0;
	CLRF        _Auto+0 
;main.c,289 :: 		}
	GOTO        L_button_proc245
L_button_proc241:
;main.c,291 :: 		bypas = 0;
	CLRF        _bypas+0 
;main.c,292 :: 		cap = cap_mem;
	MOVF        _cap_mem+0, 0 
	MOVWF       main_cap+0 
;main.c,293 :: 		ind = ind_mem;
	MOVF        _ind_mem+0, 0 
	MOVWF       main_ind+0 
;main.c,294 :: 		SW = SW_mem;
	MOVF        _SW_mem+0, 0 
	MOVWF       main_SW+0 
;main.c,295 :: 		set_cap(cap);
	MOVF        _cap_mem+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.c,296 :: 		set_ind(ind);
	MOVF        main_ind+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.c,297 :: 		set_SW(SW);
	MOVF        main_SW+0, 0 
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
;main.c,298 :: 		if(Loss_mode==0) lcd_ind();
	MOVF        _Loss_mode+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_button_proc246
	CALL        _lcd_ind+0, 0
L_button_proc246:
;main.c,299 :: 		Auto = Auto_mem;
	MOVF        _Auto_mem+0, 0 
	MOVWF       _Auto+0 
;main.c,300 :: 		}
L_button_proc245:
;main.c,301 :: 		if(type==4 | type==5) {      // 128*64 OLED
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc247
;main.c,302 :: 		if(Auto & !Bypas) led_wr_str (0, 16+8*12, ".", 1);
	MOVF        _bypas+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        _Auto+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc248
	CLRF        FARG_led_wr_str+0 
	MOVLW       112
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr12_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr12_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_button_proc249
L_button_proc248:
;main.c,303 :: 		else if(!Auto & Bypas) led_wr_str (0, 16+8*12, "_", 1);
	MOVF        _Auto+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        _bypas+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc250
	CLRF        FARG_led_wr_str+0 
	MOVLW       112
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr13_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr13_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_button_proc251
L_button_proc250:
;main.c,304 :: 		else led_wr_str (0, 16+8*12, " ", 1);
	CLRF        FARG_led_wr_str+0 
	MOVLW       112
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr14_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr14_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_button_proc251:
L_button_proc249:
;main.c,305 :: 		}
	GOTO        L_button_proc252
L_button_proc247:
;main.c,306 :: 		else if(type!=0) { //  1602 LCD  or 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc253
;main.c,307 :: 		if(Auto & !Bypas) led_wr_str (0, 8, ".", 1);
	MOVF        _bypas+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        _Auto+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc254
	CLRF        FARG_led_wr_str+0 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr15_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr15_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_button_proc255
L_button_proc254:
;main.c,308 :: 		else if(!Auto & Bypas) led_wr_str (0, 8, "_", 1);
	MOVF        _Auto+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        _bypas+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc256
	CLRF        FARG_led_wr_str+0 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr16_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr16_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_button_proc257
L_button_proc256:
;main.c,309 :: 		else led_wr_str (0, 8, " ", 1);
	CLRF        FARG_led_wr_str+0 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr17_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr17_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_button_proc257:
L_button_proc255:
;main.c,310 :: 		}
L_button_proc253:
L_button_proc252:
;main.c,311 :: 		asm CLRWDT;
	CLRWDT
;main.c,312 :: 		while(Button(&PORTB, 2, 50, 0)) {lcd_pwr(); asm CLRWDT;   }
L_button_proc258:
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       50
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc259
	CALL        _lcd_pwr+0, 0
	CLRWDT
	GOTO        L_button_proc258
L_button_proc259:
;main.c,313 :: 		}
L_button_proc238:
;main.c,315 :: 		if(Button(&PORTB, 1, 50, 0) & Bypas==0){   // Auto button
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       1
	MOVWF       FARG_Button_pin+0 
	MOVLW       50
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        _bypas+0, 0 
	XORLW       0
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc260
;main.c,316 :: 		if(dysp==0) { // dysplay ON
	MOVF        _dysp+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_button_proc261
;main.c,317 :: 		if(Relay_off==1){ set_ind(ind); set_cap(cap); set_SW(SW); }
	MOVF        main_Relay_off+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_button_proc262
	MOVF        main_ind+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
	MOVF        main_SW+0, 0 
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
L_button_proc262:
;main.c,318 :: 		dysp = 1;
	MOVLW       1
	MOVWF       _dysp+0 
;main.c,319 :: 		dysp_on();
	CALL        _dysp_on+0, 0
;main.c,320 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
	MOVF        _Dysp_delay+0, 0 
	MOVWF       R0 
	CALL        _byte2double+0, 0
	MOVF        _dysp_cnt_mult+0, 0 
	MOVWF       R4 
	MOVF        _dysp_cnt_mult+1, 0 
	MOVWF       R5 
	MOVF        _dysp_cnt_mult+2, 0 
	MOVWF       R6 
	MOVF        _dysp_cnt_mult+3, 0 
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	CALL        _double2int+0, 0
	MOVF        R0, 0 
	MOVWF       _dysp_cnt+0 
	MOVF        R1, 0 
	MOVWF       _dysp_cnt+1 
;main.c,321 :: 		return;
	GOTO        L_end_button_proc
;main.c,322 :: 		}
L_button_proc261:
;main.c,323 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
	MOVF        _Dysp_delay+0, 0 
	MOVWF       R0 
	CALL        _byte2double+0, 0
	MOVF        _dysp_cnt_mult+0, 0 
	MOVWF       R4 
	MOVF        _dysp_cnt_mult+1, 0 
	MOVWF       R5 
	MOVF        _dysp_cnt_mult+2, 0 
	MOVWF       R6 
	MOVF        _dysp_cnt_mult+3, 0 
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	CALL        _double2int+0, 0
	MOVF        R0, 0 
	MOVWF       _dysp_cnt+0 
	MOVF        R1, 0 
	MOVWF       _dysp_cnt+1 
;main.c,324 :: 		asm CLRWDT;
	CLRWDT
;main.c,325 :: 		if(Auto == 0) Auto = 1;
	MOVF        _Auto+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_button_proc263
	MOVLW       1
	MOVWF       _Auto+0 
	GOTO        L_button_proc264
L_button_proc263:
;main.c,326 :: 		else Auto = 0;
	CLRF        _Auto+0 
L_button_proc264:
;main.c,327 :: 		EEPROM_Write(2, Auto);
	MOVLW       2
	MOVWF       FARG_EEPROM_Write_address+0 
	MOVF        _Auto+0, 0 
	MOVWF       FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,328 :: 		if(type==4 | type==5) {      // 128*64 OLED
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc265
;main.c,329 :: 		if(Auto & !Bypas) led_wr_str (0, 16+8*12, ".", 1);
	MOVF        _bypas+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        _Auto+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc266
	CLRF        FARG_led_wr_str+0 
	MOVLW       112
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr18_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr18_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_button_proc267
L_button_proc266:
;main.c,330 :: 		else if(!Auto & Bypas) led_wr_str (0, 16+8*12, "_", 1);
	MOVF        _Auto+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        _bypas+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc268
	CLRF        FARG_led_wr_str+0 
	MOVLW       112
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr19_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr19_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_button_proc269
L_button_proc268:
;main.c,331 :: 		else led_wr_str (0, 16+8*12, " ", 1);
	CLRF        FARG_led_wr_str+0 
	MOVLW       112
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr20_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr20_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_button_proc269:
L_button_proc267:
;main.c,332 :: 		}
	GOTO        L_button_proc270
L_button_proc265:
;main.c,333 :: 		else if(type!=0) { //  1602 LCD  or 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc271
;main.c,334 :: 		if(Auto & !Bypas) led_wr_str (0, 8, ".", 1);
	MOVF        _bypas+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        _Auto+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc272
	CLRF        FARG_led_wr_str+0 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr21_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr21_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_button_proc273
L_button_proc272:
;main.c,335 :: 		else if(!Auto & Bypas) led_wr_str (0, 8, "_", 1);
	MOVF        _Auto+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        _bypas+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc274
	CLRF        FARG_led_wr_str+0 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr22_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr22_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_button_proc275
L_button_proc274:
;main.c,336 :: 		else led_wr_str (0, 8, " ", 1);
	CLRF        FARG_led_wr_str+0 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr23_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr23_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_button_proc275:
L_button_proc273:
;main.c,337 :: 		}
L_button_proc271:
L_button_proc270:
;main.c,338 :: 		asm CLRWDT;
	CLRWDT
;main.c,339 :: 		while(Button(&PORTB, 1, 50, 0)) {lcd_pwr(); asm CLRWDT; }
L_button_proc276:
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       1
	MOVWF       FARG_Button_pin+0 
	MOVLW       50
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc277
	CALL        _lcd_pwr+0, 0
	CLRWDT
	GOTO        L_button_proc276
L_button_proc277:
;main.c,340 :: 		}
L_button_proc260:
;main.c,341 :: 		return;
;main.c,342 :: 		}
L_end_button_proc:
	RETURN      0
; end of _button_proc

_show_reset:

;main.c,344 :: 		void show_reset() {
;main.c,345 :: 		atu_reset();
	CALL        _atu_reset+0, 0
;main.c,346 :: 		SW = 1;
	MOVLW       1
	MOVWF       main_SW+0 
;main.c,347 :: 		set_sw(SW);
	MOVLW       1
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
;main.c,348 :: 		EEPROM_Write(255, 0);
	MOVLW       255
	MOVWF       FARG_EEPROM_Write_address+0 
	CLRF        FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,349 :: 		EEPROM_Write(254, 0);
	MOVLW       254
	MOVWF       FARG_EEPROM_Write_address+0 
	CLRF        FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,350 :: 		EEPROM_Write(253, 1);
	MOVLW       253
	MOVWF       FARG_EEPROM_Write_address+0 
	MOVLW       1
	MOVWF       FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,351 :: 		EEPROM_Write(252, 0);
	MOVLW       252
	MOVWF       FARG_EEPROM_Write_address+0 
	CLRF        FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,352 :: 		EEPROM_Write(251, 0);
	MOVLW       251
	MOVWF       FARG_EEPROM_Write_address+0 
	CLRF        FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,353 :: 		lcd_ind();
	CALL        _lcd_ind+0, 0
;main.c,354 :: 		Loss_mode = 0;
	CLRF        _Loss_mode+0 
;main.c,355 :: 		p_Tx = 0;
	CLRF        _p_Tx+0 
;main.c,356 :: 		n_Tx = 1;
	MOVLW       1
	MOVWF       _n_Tx+0 
;main.c,357 :: 		SWR = 0;
	CLRF        _SWR+0 
	CLRF        _SWR+1 
;main.c,358 :: 		PWR = 0;
	CLRF        _PWR+0 
	CLRF        _PWR+1 
;main.c,359 :: 		SWR_fixed_old = 0;
	CLRF        _SWR_fixed_old+0 
	CLRF        _SWR_fixed_old+1 
;main.c,360 :: 		if(type==4 | type==5) {    // 128*64 OLED
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_show_reset278
;main.c,361 :: 		led_wr_str (2, 16, "RESET   ", 8);
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr24_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr24_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,362 :: 		asm CLRWDT;
	CLRWDT
;main.c,363 :: 		delay_ms(600);
	MOVLW       13
	MOVWF       R11, 0
	MOVLW       45
	MOVWF       R12, 0
	MOVLW       215
	MOVWF       R13, 0
L_show_reset279:
	DECFSZ      R13, 1, 1
	BRA         L_show_reset279
	DECFSZ      R12, 1, 1
	BRA         L_show_reset279
	DECFSZ      R11, 1, 1
	BRA         L_show_reset279
	NOP
	NOP
;main.c,364 :: 		led_wr_str (2, 16, "SWR=0.00", 8);
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr25_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr25_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,365 :: 		asm CLRWDT;
	CLRWDT
;main.c,366 :: 		}
	GOTO        L_show_reset280
L_show_reset278:
;main.c,367 :: 		else if(type!=0) {// 1602 LCD & 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_show_reset281
;main.c,368 :: 		led_wr_str (1, 0, "RESET   ", 8);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CLRF        FARG_led_wr_str+0 
	MOVLW       ?lstr26_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr26_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,369 :: 		asm CLRWDT;
	CLRWDT
;main.c,370 :: 		delay_ms(600);
	MOVLW       13
	MOVWF       R11, 0
	MOVLW       45
	MOVWF       R12, 0
	MOVLW       215
	MOVWF       R13, 0
L_show_reset282:
	DECFSZ      R13, 1, 1
	BRA         L_show_reset282
	DECFSZ      R12, 1, 1
	BRA         L_show_reset282
	DECFSZ      R11, 1, 1
	BRA         L_show_reset282
	NOP
	NOP
;main.c,371 :: 		led_wr_str (1, 0, "SWR=0.00", 8);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CLRF        FARG_led_wr_str+0 
	MOVLW       ?lstr27_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr27_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,372 :: 		asm CLRWDT;
	CLRWDT
;main.c,373 :: 		}
	GOTO        L_show_reset283
L_show_reset281:
;main.c,375 :: 		Soft_I2C_Scl = 1;
	BSF         LATC6_bit+0, BitPos(LATC6_bit+0) 
;main.c,376 :: 		Soft_I2C_Sda = 1;
	BSF         LATC7_bit+0, BitPos(LATC7_bit+0) 
;main.c,377 :: 		}
L_show_reset283:
L_show_reset280:
;main.c,378 :: 		SWR_old = 10000;
	MOVLW       16
	MOVWF       _SWR_old+0 
	MOVLW       39
	MOVWF       _SWR_old+1 
;main.c,379 :: 		Power_old = 10000;
	MOVLW       16
	MOVWF       _Power_old+0 
	MOVLW       39
	MOVWF       _Power_old+1 
;main.c,380 :: 		lcd_pwr();
	CALL        _lcd_pwr+0, 0
;main.c,381 :: 		return;
;main.c,382 :: 		}
L_end_show_reset:
	RETURN      0
; end of _show_reset

_btn_push:

;main.c,384 :: 		void btn_push() {
;main.c,385 :: 		asm CLRWDT;
	CLRWDT
;main.c,386 :: 		if(type==4 | type==5)  {   // 128*64 OLED
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_btn_push284
;main.c,387 :: 		led_wr_str (2, 16+12*4, "TUNE", 4);
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	MOVLW       64
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr28_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr28_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,388 :: 		}
	GOTO        L_btn_push285
L_btn_push284:
;main.c,389 :: 		else if(type!=0) {   // 1602 LCD & 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_btn_push286
;main.c,390 :: 		led_wr_str (1, 4, "TUNE", 4);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr29_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr29_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,391 :: 		}
	GOTO        L_btn_push287
L_btn_push286:
;main.c,393 :: 		Soft_I2C_Scl = 1;
	BSF         LATC6_bit+0, BitPos(LATC6_bit+0) 
;main.c,394 :: 		Soft_I2C_Sda = 1;
	BSF         LATC7_bit+0, BitPos(LATC7_bit+0) 
;main.c,395 :: 		}
L_btn_push287:
L_btn_push285:
;main.c,396 :: 		tune();
	CALL        _tune+0, 0
;main.c,397 :: 		if(type==0) {
	MOVF        _type+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_btn_push288
;main.c,399 :: 		}
	GOTO        L_btn_push289
L_btn_push288:
;main.c,400 :: 		else if(Loss_mode==0 | Loss_ind==0) lcd_ind();
	MOVF        _Loss_mode+0, 0 
	XORLW       0
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        main_Loss_ind+0, 0 
	XORLW       0
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_btn_push290
	CALL        _lcd_ind+0, 0
L_btn_push290:
L_btn_push289:
;main.c,401 :: 		EEPROM_Write(255, cap);
	MOVLW       255
	MOVWF       FARG_EEPROM_Write_address+0 
	MOVF        main_cap+0, 0 
	MOVWF       FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,402 :: 		EEPROM_Write(254, ind);
	MOVLW       254
	MOVWF       FARG_EEPROM_Write_address+0 
	MOVF        main_ind+0, 0 
	MOVWF       FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,403 :: 		EEPROM_Write(253, SW);
	MOVLW       253
	MOVWF       FARG_EEPROM_Write_address+0 
	MOVF        main_SW+0, 0 
	MOVWF       FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,404 :: 		EEPROM_Write(252, swr_a/256);
	MOVLW       252
	MOVWF       FARG_EEPROM_Write_address+0 
	MOVLW       0
	MOVWF       R4 
	MOVLW       1
	MOVWF       R5 
	MOVF        _swr_a+0, 0 
	MOVWF       R0 
	MOVF        _swr_a+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,405 :: 		EEPROM_Write(251, swr_a%256);
	MOVLW       251
	MOVWF       FARG_EEPROM_Write_address+0 
	MOVLW       0
	MOVWF       R4 
	MOVLW       1
	MOVWF       R5 
	MOVF        _swr_a+0, 0 
	MOVWF       R0 
	MOVF        _swr_a+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,406 :: 		SWR_old = 10000;
	MOVLW       16
	MOVWF       _SWR_old+0 
	MOVLW       39
	MOVWF       _SWR_old+1 
;main.c,407 :: 		Power_old = 10000;
	MOVLW       16
	MOVWF       _Power_old+0 
	MOVLW       39
	MOVWF       _Power_old+1 
;main.c,408 :: 		lcd_pwr();
	CALL        _lcd_pwr+0, 0
;main.c,409 :: 		SWR_fixed_old = SWR;
	MOVF        _SWR+0, 0 
	MOVWF       _SWR_fixed_old+0 
	MOVF        _SWR+1, 0 
	MOVWF       _SWR_fixed_old+1 
;main.c,410 :: 		p_Tx = 0;
	CLRF        _p_Tx+0 
;main.c,411 :: 		n_Tx = 1;
	MOVLW       1
	MOVWF       _n_Tx+0 
;main.c,412 :: 		asm CLRWDT;
	CLRWDT
;main.c,413 :: 		return;
;main.c,414 :: 		}
L_end_btn_push:
	RETURN      0
; end of _btn_push

_lcd_prep:

;main.c,417 :: 		void lcd_prep() {
;main.c,418 :: 		asm CLRWDT;
	CLRWDT
;main.c,419 :: 		if(type==4 |type==5){   // 128*64 OLED
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_prep291
;main.c,420 :: 		if(lcd_prep_short==0) {
	MOVF        _lcd_prep_short+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_prep292
;main.c,421 :: 		led_wr_str (0, 22, "ATU-100", 7);
	CLRF        FARG_led_wr_str+0 
	MOVLW       22
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr30_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr30_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       7
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,422 :: 		led_wr_str (2, 6, "EXT board", 9);
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	MOVLW       6
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr31_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr31_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,423 :: 		led_wr_str (4, 16, "by N7DDC", 8);
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr32_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr32_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,424 :: 		led_wr_str (6, 4, "FW ver 3.2", 10);
	MOVLW       6
	MOVWF       FARG_led_wr_str+0 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr33_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr33_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       10
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,425 :: 		asm CLRWDT;
	CLRWDT
;main.c,426 :: 		Delay_ms(600);
	MOVLW       13
	MOVWF       R11, 0
	MOVLW       45
	MOVWF       R12, 0
	MOVLW       215
	MOVWF       R13, 0
L_lcd_prep293:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_prep293
	DECFSZ      R12, 1, 1
	BRA         L_lcd_prep293
	DECFSZ      R11, 1, 1
	BRA         L_lcd_prep293
	NOP
	NOP
;main.c,427 :: 		asm CLRWDT;
	CLRWDT
;main.c,428 :: 		Delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_lcd_prep294:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_prep294
	DECFSZ      R12, 1, 1
	BRA         L_lcd_prep294
	DECFSZ      R11, 1, 1
	BRA         L_lcd_prep294
	NOP
	NOP
;main.c,429 :: 		asm CLRWDT;
	CLRWDT
;main.c,430 :: 		led_wr_str (0, 16, "        ", 8);
	CLRF        FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr34_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr34_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,431 :: 		led_wr_str (2, 4, "          ", 10);
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr35_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr35_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       10
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,432 :: 		led_wr_str (4, 16, "        ", 8);
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr36_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr36_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,433 :: 		led_wr_str (6, 4, "          ", 10);
	MOVLW       6
	MOVWF       FARG_led_wr_str+0 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr37_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr37_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       10
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,434 :: 		}
L_lcd_prep292:
;main.c,435 :: 		Delay_ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_lcd_prep295:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_prep295
	DECFSZ      R12, 1, 1
	BRA         L_lcd_prep295
	DECFSZ      R11, 1, 1
	BRA         L_lcd_prep295
	NOP
	NOP
;main.c,436 :: 		if(P_High==1) led_wr_str (0, 16, "PWR=  0W", 8);
	MOVF        main_P_High+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_prep296
	CLRF        FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr38_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr38_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_lcd_prep297
L_lcd_prep296:
;main.c,437 :: 		else  led_wr_str (0, 16, "PWR=0.0W", 8);
	CLRF        FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr39_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr39_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_lcd_prep297:
;main.c,438 :: 		led_wr_str (2, 16, "SWR=0.00", 8);
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr40_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr40_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,439 :: 		if(Auto) led_wr_str (0, 16+8*12, ".", 1);
	MOVF        _Auto+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_prep298
	CLRF        FARG_led_wr_str+0 
	MOVLW       112
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr41_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr41_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_lcd_prep298:
;main.c,440 :: 		}
	GOTO        L_lcd_prep299
L_lcd_prep291:
;main.c,441 :: 		else if(type!=0) {   // 1602 LCD & 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_prep300
;main.c,442 :: 		if(lcd_prep_short==0) {
	MOVF        _lcd_prep_short+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_prep301
;main.c,443 :: 		led_wr_str (0, 4, "ATU-100", 7);
	CLRF        FARG_led_wr_str+0 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr42_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr42_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       7
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,444 :: 		led_wr_str (1, 3, "EXT board", 9);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	MOVLW       3
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr43_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr43_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,445 :: 		asm CLRWDT;
	CLRWDT
;main.c,446 :: 		Delay_ms(700);
	MOVLW       15
	MOVWF       R11, 0
	MOVLW       53
	MOVWF       R12, 0
	MOVLW       81
	MOVWF       R13, 0
L_lcd_prep302:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_prep302
	DECFSZ      R12, 1, 1
	BRA         L_lcd_prep302
	DECFSZ      R11, 1, 1
	BRA         L_lcd_prep302
;main.c,447 :: 		asm CLRWDT;
	CLRWDT
;main.c,448 :: 		Delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_lcd_prep303:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_prep303
	DECFSZ      R12, 1, 1
	BRA         L_lcd_prep303
	DECFSZ      R11, 1, 1
	BRA         L_lcd_prep303
	NOP
	NOP
;main.c,449 :: 		asm CLRWDT;
	CLRWDT
;main.c,450 :: 		led_wr_str (0, 4, "by N7DDC", 8);
	CLRF        FARG_led_wr_str+0 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr44_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr44_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,451 :: 		led_wr_str (1, 3, "FW ver 3.2", 10);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	MOVLW       3
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr45_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr45_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       10
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,452 :: 		asm CLRWDT;
	CLRWDT
;main.c,453 :: 		Delay_ms(600);
	MOVLW       13
	MOVWF       R11, 0
	MOVLW       45
	MOVWF       R12, 0
	MOVLW       215
	MOVWF       R13, 0
L_lcd_prep304:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_prep304
	DECFSZ      R12, 1, 1
	BRA         L_lcd_prep304
	DECFSZ      R11, 1, 1
	BRA         L_lcd_prep304
	NOP
	NOP
;main.c,454 :: 		asm CLRWDT;
	CLRWDT
;main.c,455 :: 		Delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_lcd_prep305:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_prep305
	DECFSZ      R12, 1, 1
	BRA         L_lcd_prep305
	DECFSZ      R11, 1, 1
	BRA         L_lcd_prep305
	NOP
	NOP
;main.c,456 :: 		asm CLRWDT;
	CLRWDT
;main.c,457 :: 		led_wr_str (0, 4, "        ", 8);
	CLRF        FARG_led_wr_str+0 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr46_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr46_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,458 :: 		led_wr_str (1, 3, "          ", 10);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	MOVLW       3
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr47_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr47_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       10
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,459 :: 		}
L_lcd_prep301:
;main.c,460 :: 		Delay_ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_lcd_prep306:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_prep306
	DECFSZ      R12, 1, 1
	BRA         L_lcd_prep306
	DECFSZ      R11, 1, 1
	BRA         L_lcd_prep306
	NOP
	NOP
;main.c,461 :: 		if(P_High==1) led_wr_str (0, 0, "PWR=  0W", 8);
	MOVF        main_P_High+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_prep307
	CLRF        FARG_led_wr_str+0 
	CLRF        FARG_led_wr_str+0 
	MOVLW       ?lstr48_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr48_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_lcd_prep308
L_lcd_prep307:
;main.c,462 :: 		else led_wr_str (0, 0, "PWR=0.0W", 8);
	CLRF        FARG_led_wr_str+0 
	CLRF        FARG_led_wr_str+0 
	MOVLW       ?lstr49_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr49_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_lcd_prep308:
;main.c,463 :: 		led_wr_str (1, 0, "SWR=0.00", 8);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CLRF        FARG_led_wr_str+0 
	MOVLW       ?lstr50_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr50_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,464 :: 		if(Auto) led_wr_str (0, 8, ".", 1);
	MOVF        _Auto+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_prep309
	CLRF        FARG_led_wr_str+0 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr51_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr51_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_lcd_prep309:
;main.c,465 :: 		}
L_lcd_prep300:
L_lcd_prep299:
;main.c,466 :: 		asm CLRWDT;
	CLRWDT
;main.c,467 :: 		lcd_ind();
	CALL        _lcd_ind+0, 0
;main.c,468 :: 		return;
;main.c,469 :: 		}
L_end_lcd_prep:
	RETURN      0
; end of _lcd_prep

_lcd_swr:

;main.c,472 :: 		void lcd_swr(int swr) {
;main.c,473 :: 		asm CLRWDT;
	CLRWDT
;main.c,474 :: 		if(swr!=SWR_old) {
	MOVF        FARG_lcd_swr_swr+1, 0 
	XORWF       _SWR_old+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_swr654
	MOVF        _SWR_old+0, 0 
	XORWF       FARG_lcd_swr_swr+0, 0 
L__lcd_swr654:
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_swr310
;main.c,475 :: 		SWR_old = swr;
	MOVF        FARG_lcd_swr_swr+0, 0 
	MOVWF       _SWR_old+0 
	MOVF        FARG_lcd_swr_swr+1, 0 
	MOVWF       _SWR_old+1 
;main.c,476 :: 		if(SWR==0) {  // Low power
	MOVLW       0
	XORWF       FARG_lcd_swr_swr+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_swr655
	MOVLW       0
	XORWF       FARG_lcd_swr_swr+0, 0 
L__lcd_swr655:
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_swr311
;main.c,477 :: 		if(type==4 | type==5) led_wr_str (2, 16+4*12, "0.00", 4);   // 128*64 OLED
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_swr312
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	MOVLW       64
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr52_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr52_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_lcd_swr313
L_lcd_swr312:
;main.c,478 :: 		else if(type!=0) led_wr_str (1, 4, "0.00", 4);  // 1602  & 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_swr314
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr53_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr53_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_lcd_swr315
L_lcd_swr314:
;main.c,479 :: 		else  if(type==0) {    // real-time 2-colors led work
	MOVF        _type+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_swr316
;main.c,480 :: 		Soft_I2C_Scl = 1;
	BSF         LATC6_bit+0, BitPos(LATC6_bit+0) 
;main.c,481 :: 		Soft_I2C_Sda = 1;
	BSF         LATC7_bit+0, BitPos(LATC7_bit+0) 
;main.c,482 :: 		}
L_lcd_swr316:
L_lcd_swr315:
L_lcd_swr313:
;main.c,483 :: 		SWR_old = 0;
	CLRF        _SWR_old+0 
	CLRF        _SWR_old+1 
;main.c,484 :: 		}
	GOTO        L_lcd_swr317
L_lcd_swr311:
;main.c,486 :: 		IntToStr(swr, work_str);
	MOVF        FARG_lcd_swr_swr+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        FARG_lcd_swr_swr+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,487 :: 		work_str_2[0] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+0 
;main.c,488 :: 		work_str_2[1] = '.';
	MOVLW       46
	MOVWF       _work_str_2+1 
;main.c,489 :: 		work_str_2[2] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+2 
;main.c,490 :: 		work_str_2[3] = work_str[5];
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+3 
;main.c,491 :: 		if(type==4 | type==5) led_wr_str (2, 16+4*12, work_str_2, 4);  // 128*64 OLED
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_swr318
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	MOVLW       64
	MOVWF       FARG_led_wr_str+0 
	MOVLW       _work_str_2+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(_work_str_2+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_lcd_swr319
L_lcd_swr318:
;main.c,492 :: 		else if(type!=0) led_wr_str (1, 4, work_str_2, 4);       // 1602  & 128*32
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_swr320
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	MOVLW       _work_str_2+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(_work_str_2+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_lcd_swr321
L_lcd_swr320:
;main.c,493 :: 		else  if(type==0) {    // real-time 2-colors led work
	MOVF        _type+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_swr322
;main.c,494 :: 		if(swr<=150) { Soft_I2C_Scl = 0; Soft_I2C_Sda = 1; } // Green
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_lcd_swr_swr+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_swr656
	MOVF        FARG_lcd_swr_swr+0, 0 
	SUBLW       150
L__lcd_swr656:
	BTFSS       STATUS+0, 0 
	GOTO        L_lcd_swr323
	BCF         LATC6_bit+0, BitPos(LATC6_bit+0) 
	BSF         LATC7_bit+0, BitPos(LATC7_bit+0) 
	GOTO        L_lcd_swr324
L_lcd_swr323:
;main.c,495 :: 		else if(swr<=250) {Soft_I2C_Scl = 0; PORTB.B7 = 0;} // Orange
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_lcd_swr_swr+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_swr657
	MOVF        FARG_lcd_swr_swr+0, 0 
	SUBLW       250
L__lcd_swr657:
	BTFSS       STATUS+0, 0 
	GOTO        L_lcd_swr325
	BCF         LATC6_bit+0, BitPos(LATC6_bit+0) 
	BCF         PORTB+0, 7 
	GOTO        L_lcd_swr326
L_lcd_swr325:
;main.c,496 :: 		else { Soft_I2C_Scl = 1; Soft_I2C_Sda = 0; }  // Red
	BSF         LATC6_bit+0, BitPos(LATC6_bit+0) 
	BCF         LATC7_bit+0, BitPos(LATC7_bit+0) 
L_lcd_swr326:
L_lcd_swr324:
;main.c,497 :: 		}
L_lcd_swr322:
L_lcd_swr321:
L_lcd_swr319:
;main.c,498 :: 		}
L_lcd_swr317:
;main.c,499 :: 		}
L_lcd_swr310:
;main.c,500 :: 		asm CLRWDT;
	CLRWDT
;main.c,501 :: 		return;
;main.c,502 :: 		}
L_end_lcd_swr:
	RETURN      0
; end of _lcd_swr

_button_delay:

;main.c,505 :: 		void button_delay() {
;main.c,506 :: 		if((Button(&PORTB, 0, 25, 0)) | (Button(&PORTB, 1, 25, 0)) | (Button(&PORTB, 2, 25, 0))) {
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	CLRF        FARG_Button_pin+0 
	MOVLW       25
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 0 
	MOVWF       FLOC__button_delay+0 
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       1
	MOVWF       FARG_Button_pin+0 
	MOVLW       25
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 0 
	IORWF       FLOC__button_delay+0, 1 
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       25
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        FLOC__button_delay+0, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_delay327
;main.c,507 :: 		but = 1;
	MOVLW       1
	MOVWF       _but+0 
;main.c,508 :: 		}
L_button_delay327:
;main.c,509 :: 		return;
;main.c,510 :: 		}
L_end_button_delay:
	RETURN      0
; end of _button_delay

_show_pwr:

;main.c,512 :: 		void show_pwr(int Power, int SWR) {
;main.c,515 :: 		a = 100;
	MOVLW       0
	MOVWF       show_pwr_a_L0+0 
	MOVLW       0
	MOVWF       show_pwr_a_L0+1 
	MOVLW       72
	MOVWF       show_pwr_a_L0+2 
	MOVLW       133
	MOVWF       show_pwr_a_L0+3 
;main.c,516 :: 		asm CLRWDT;
	CLRWDT
;main.c,518 :: 		if(Test==0 & Loss_ind==1 & Power>=10) {
	MOVF        _Test+0, 0 
	XORLW       0
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        main_Loss_ind+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVLW       128
	XORWF       FARG_show_pwr_Power+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__show_pwr660
	MOVLW       10
	SUBWF       FARG_show_pwr_Power+0, 0 
L__show_pwr660:
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr328
;main.c,519 :: 		if(Loss_mode==0) {   // prepare
	MOVF        _Loss_mode+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr329
;main.c,520 :: 		if(type==4 |type==5){   // 128*64 OLED
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr330
;main.c,521 :: 		if(P_High==1) led_wr_str(4, 16, "ANT=  0W", 8);
	MOVF        main_P_High+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr331
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr54_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr54_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_show_pwr332
L_show_pwr331:
;main.c,522 :: 		else led_wr_str(4, 16, "ANT=0.0W", 8);
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr55_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr55_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_show_pwr332:
;main.c,523 :: 		led_wr_str(6, 16, "EFF=  0%", 8);
	MOVLW       6
	MOVWF       FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr56_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr56_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,524 :: 		}
	GOTO        L_show_pwr333
L_show_pwr330:
;main.c,525 :: 		else if(type==2 | type==3) {   // 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       3
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr334
;main.c,526 :: 		if(P_High==1) led_wr_str (0, 9, "ANT=  0W", 8);
	MOVF        main_P_High+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr335
	CLRF        FARG_led_wr_str+0 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr57_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr57_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_show_pwr336
L_show_pwr335:
;main.c,527 :: 		else led_wr_str (0, 9, "ANT=0.0W", 8);
	CLRF        FARG_led_wr_str+0 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr58_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr58_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_show_pwr336:
;main.c,528 :: 		led_wr_str (1, 9, "EFF=  0%", 8);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr59_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr59_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,529 :: 		}
	GOTO        L_show_pwr337
L_show_pwr334:
;main.c,530 :: 		else if(type==1) {   // 1602 LCD
	MOVF        _type+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr338
;main.c,531 :: 		if(P_High==1) led_wr_str (0, 9, "AN=  0W", 7);
	MOVF        main_P_High+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr339
	CLRF        FARG_led_wr_str+0 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr60_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr60_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       7
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_show_pwr340
L_show_pwr339:
;main.c,532 :: 		else led_wr_str (0, 9, "AN=0.0W", 7);
	CLRF        FARG_led_wr_str+0 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr61_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr61_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       7
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_show_pwr340:
;main.c,533 :: 		led_wr_str (1, 9, "EFF= 0%", 7);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr62_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr62_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       7
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,534 :: 		}
L_show_pwr338:
L_show_pwr337:
L_show_pwr333:
;main.c,535 :: 		}
L_show_pwr329:
;main.c,536 :: 		Loss_mode = 1;
	MOVLW       1
	MOVWF       _Loss_mode+0 
;main.c,537 :: 		}
	GOTO        L_show_pwr341
L_show_pwr328:
;main.c,539 :: 		if(Loss_mode==1) lcd_ind();
	MOVF        _Loss_mode+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr342
	CALL        _lcd_ind+0, 0
L_show_pwr342:
;main.c,540 :: 		Loss_mode = 0;
	CLRF        _Loss_mode+0 
;main.c,541 :: 		}
L_show_pwr341:
;main.c,542 :: 		asm CLRWDT;
	CLRWDT
;main.c,543 :: 		if(Power != Power_old) {
	MOVF        FARG_show_pwr_Power+1, 0 
	XORWF       _Power_old+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__show_pwr661
	MOVF        _Power_old+0, 0 
	XORWF       FARG_show_pwr_Power+0, 0 
L__show_pwr661:
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr343
;main.c,544 :: 		Power_old = Power;
	MOVF        FARG_show_pwr_Power+0, 0 
	MOVWF       _Power_old+0 
	MOVF        FARG_show_pwr_Power+1, 0 
	MOVWF       _Power_old+1 
;main.c,546 :: 		if(P_High==0) {
	MOVF        main_P_High+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr344
;main.c,547 :: 		if(Power >= 100) {   // > 10 W
	MOVLW       128
	XORWF       FARG_show_pwr_Power+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__show_pwr662
	MOVLW       100
	SUBWF       FARG_show_pwr_Power+0, 0 
L__show_pwr662:
	BTFSS       STATUS+0, 0 
	GOTO        L_show_pwr345
;main.c,548 :: 		Power += 5;  // rounding to 1 W
	MOVLW       5
	ADDWF       FARG_show_pwr_Power+0, 0 
	MOVWF       R0 
	MOVLW       0
	ADDWFC      FARG_show_pwr_Power+1, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       FARG_show_pwr_Power+0 
	MOVF        R1, 0 
	MOVWF       FARG_show_pwr_Power+1 
;main.c,549 :: 		IntToStr(Power, work_str);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,550 :: 		work_str_2[0] = work_str[2];
	MOVF        _work_str+2, 0 
	MOVWF       _work_str_2+0 
;main.c,551 :: 		work_str_2[1] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+1 
;main.c,552 :: 		work_str_2[2] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+2 
;main.c,553 :: 		work_str_2[3] = 'W';
	MOVLW       87
	MOVWF       _work_str_2+3 
;main.c,554 :: 		}
	GOTO        L_show_pwr346
L_show_pwr345:
;main.c,556 :: 		IntToStr(Power, work_str);
	MOVF        FARG_show_pwr_Power+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        FARG_show_pwr_Power+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,557 :: 		if(work_str[4] != ' ') work_str_2[0] = work_str[4]; else work_str_2[0] = '0';
	MOVF        _work_str+4, 0 
	XORLW       32
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr347
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+0 
	GOTO        L_show_pwr348
L_show_pwr347:
	MOVLW       48
	MOVWF       _work_str_2+0 
L_show_pwr348:
;main.c,558 :: 		work_str_2[1] = '.';
	MOVLW       46
	MOVWF       _work_str_2+1 
;main.c,559 :: 		if(work_str[5] != ' ') work_str_2[2] = work_str[5]; else work_str_2[2] = '0';
	MOVF        _work_str+5, 0 
	XORLW       32
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr349
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+2 
	GOTO        L_show_pwr350
L_show_pwr349:
	MOVLW       48
	MOVWF       _work_str_2+2 
L_show_pwr350:
;main.c,560 :: 		work_str_2[3] = 'W';
	MOVLW       87
	MOVWF       _work_str_2+3 
;main.c,561 :: 		}
L_show_pwr346:
;main.c,562 :: 		}
	GOTO        L_show_pwr351
L_show_pwr344:
;main.c,564 :: 		if(Power<999){   // 0 - 999 Watt
	MOVLW       128
	XORWF       FARG_show_pwr_Power+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       3
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__show_pwr663
	MOVLW       231
	SUBWF       FARG_show_pwr_Power+0, 0 
L__show_pwr663:
	BTFSC       STATUS+0, 0 
	GOTO        L_show_pwr352
;main.c,565 :: 		IntToStr(Power, work_str);
	MOVF        FARG_show_pwr_Power+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        FARG_show_pwr_Power+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,566 :: 		work_str_2[0] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+0 
;main.c,567 :: 		work_str_2[1] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+1 
;main.c,568 :: 		work_str_2[2] = work_str[5];
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+2 
;main.c,569 :: 		work_str_2[3] = 'W';
	MOVLW       87
	MOVWF       _work_str_2+3 
;main.c,570 :: 		}
	GOTO        L_show_pwr353
L_show_pwr352:
;main.c,572 :: 		IntToStr(Power, work_str);
	MOVF        FARG_show_pwr_Power+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        FARG_show_pwr_Power+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,573 :: 		work_str_2[0] = work_str[2];
	MOVF        _work_str+2, 0 
	MOVWF       _work_str_2+0 
;main.c,574 :: 		work_str_2[1] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+1 
;main.c,575 :: 		work_str_2[2] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+2 
;main.c,576 :: 		work_str_2[3] = work_str[5];
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+3 
;main.c,577 :: 		}
L_show_pwr353:
;main.c,578 :: 		}
L_show_pwr351:
;main.c,579 :: 		if(type==4 | type==5) led_wr_str (0, 16+4*12, work_str_2, 4);  // 128*64 OLED
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr354
	CLRF        FARG_led_wr_str+0 
	MOVLW       64
	MOVWF       FARG_led_wr_str+0 
	MOVLW       _work_str_2+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(_work_str_2+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_show_pwr355
L_show_pwr354:
;main.c,580 :: 		else if(type!=0) led_wr_str (0, 4, work_str_2, 4);  // 1602  & 128*32
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr356
	CLRF        FARG_led_wr_str+0 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	MOVLW       _work_str_2+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(_work_str_2+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_show_pwr356:
L_show_pwr355:
;main.c,582 :: 		asm CLRWDT;
	CLRWDT
;main.c,584 :: 		if(Loss_mode==1)  {
	MOVF        _Loss_mode+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr357
;main.c,585 :: 		if(ind==0 & cap==0) swr_a = SWR;
	MOVF        main_ind+0, 0 
	XORLW       0
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        main_cap+0, 0 
	XORLW       0
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr358
	MOVF        FARG_show_pwr_SWR+0, 0 
	MOVWF       _swr_a+0 
	MOVF        FARG_show_pwr_SWR+1, 0 
	MOVWF       _swr_a+1 
L_show_pwr358:
;main.c,586 :: 		a = 1.0 / ((swr_a/100.0 + 100.0/swr_a) * Fid_loss/10.0 * 0.115 + 1.0); // Fider loss
	MOVF        _swr_a+0, 0 
	MOVWF       R0 
	MOVF        _swr_a+1, 0 
	MOVWF       R1 
	CALL        _int2double+0, 0
	MOVF        R0, 0 
	MOVWF       FLOC__show_pwr+4 
	MOVF        R1, 0 
	MOVWF       FLOC__show_pwr+5 
	MOVF        R2, 0 
	MOVWF       FLOC__show_pwr+6 
	MOVF        R3, 0 
	MOVWF       FLOC__show_pwr+7 
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       72
	MOVWF       R6 
	MOVLW       133
	MOVWF       R7 
	MOVF        FLOC__show_pwr+4, 0 
	MOVWF       R0 
	MOVF        FLOC__show_pwr+5, 0 
	MOVWF       R1 
	MOVF        FLOC__show_pwr+6, 0 
	MOVWF       R2 
	MOVF        FLOC__show_pwr+7, 0 
	MOVWF       R3 
	CALL        _Div_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       FLOC__show_pwr+0 
	MOVF        R1, 0 
	MOVWF       FLOC__show_pwr+1 
	MOVF        R2, 0 
	MOVWF       FLOC__show_pwr+2 
	MOVF        R3, 0 
	MOVWF       FLOC__show_pwr+3 
	MOVF        FLOC__show_pwr+4, 0 
	MOVWF       R4 
	MOVF        FLOC__show_pwr+5, 0 
	MOVWF       R5 
	MOVF        FLOC__show_pwr+6, 0 
	MOVWF       R6 
	MOVF        FLOC__show_pwr+7, 0 
	MOVWF       R7 
	MOVLW       0
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVLW       72
	MOVWF       R2 
	MOVLW       133
	MOVWF       R3 
	CALL        _Div_32x32_FP+0, 0
	MOVF        FLOC__show_pwr+0, 0 
	MOVWF       R4 
	MOVF        FLOC__show_pwr+1, 0 
	MOVWF       R5 
	MOVF        FLOC__show_pwr+2, 0 
	MOVWF       R6 
	MOVF        FLOC__show_pwr+3, 0 
	MOVWF       R7 
	CALL        _Add_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       FLOC__show_pwr+0 
	MOVF        R1, 0 
	MOVWF       FLOC__show_pwr+1 
	MOVF        R2, 0 
	MOVWF       FLOC__show_pwr+2 
	MOVF        R3, 0 
	MOVWF       FLOC__show_pwr+3 
	MOVF        _Fid_loss+0, 0 
	MOVWF       R0 
	CALL        _byte2double+0, 0
	MOVF        FLOC__show_pwr+0, 0 
	MOVWF       R4 
	MOVF        FLOC__show_pwr+1, 0 
	MOVWF       R5 
	MOVF        FLOC__show_pwr+2, 0 
	MOVWF       R6 
	MOVF        FLOC__show_pwr+3, 0 
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       32
	MOVWF       R6 
	MOVLW       130
	MOVWF       R7 
	CALL        _Div_32x32_FP+0, 0
	MOVLW       31
	MOVWF       R4 
	MOVLW       133
	MOVWF       R5 
	MOVLW       107
	MOVWF       R6 
	MOVLW       123
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       0
	MOVWF       R6 
	MOVLW       127
	MOVWF       R7 
	CALL        _Add_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       R4 
	MOVF        R1, 0 
	MOVWF       R5 
	MOVF        R2, 0 
	MOVWF       R6 
	MOVF        R3, 0 
	MOVWF       R7 
	MOVLW       0
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVLW       0
	MOVWF       R2 
	MOVLW       127
	MOVWF       R3 
	CALL        _Div_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       FLOC__show_pwr+8 
	MOVF        R1, 0 
	MOVWF       FLOC__show_pwr+9 
	MOVF        R2, 0 
	MOVWF       FLOC__show_pwr+10 
	MOVF        R3, 0 
	MOVWF       FLOC__show_pwr+11 
	MOVF        FLOC__show_pwr+8, 0 
	MOVWF       show_pwr_a_L0+0 
	MOVF        FLOC__show_pwr+9, 0 
	MOVWF       show_pwr_a_L0+1 
	MOVF        FLOC__show_pwr+10, 0 
	MOVWF       show_pwr_a_L0+2 
	MOVF        FLOC__show_pwr+11, 0 
	MOVWF       show_pwr_a_L0+3 
;main.c,587 :: 		b = 4.0 / (2.0 + SWR/100.0 + 100.0/SWR);    // SWR loss
	MOVF        FARG_show_pwr_SWR+0, 0 
	MOVWF       R0 
	MOVF        FARG_show_pwr_SWR+1, 0 
	MOVWF       R1 
	CALL        _int2double+0, 0
	MOVF        R0, 0 
	MOVWF       FLOC__show_pwr+4 
	MOVF        R1, 0 
	MOVWF       FLOC__show_pwr+5 
	MOVF        R2, 0 
	MOVWF       FLOC__show_pwr+6 
	MOVF        R3, 0 
	MOVWF       FLOC__show_pwr+7 
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       72
	MOVWF       R6 
	MOVLW       133
	MOVWF       R7 
	MOVF        FLOC__show_pwr+4, 0 
	MOVWF       R0 
	MOVF        FLOC__show_pwr+5, 0 
	MOVWF       R1 
	MOVF        FLOC__show_pwr+6, 0 
	MOVWF       R2 
	MOVF        FLOC__show_pwr+7, 0 
	MOVWF       R3 
	CALL        _Div_32x32_FP+0, 0
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       0
	MOVWF       R6 
	MOVLW       128
	MOVWF       R7 
	CALL        _Add_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       FLOC__show_pwr+0 
	MOVF        R1, 0 
	MOVWF       FLOC__show_pwr+1 
	MOVF        R2, 0 
	MOVWF       FLOC__show_pwr+2 
	MOVF        R3, 0 
	MOVWF       FLOC__show_pwr+3 
	MOVF        FLOC__show_pwr+4, 0 
	MOVWF       R4 
	MOVF        FLOC__show_pwr+5, 0 
	MOVWF       R5 
	MOVF        FLOC__show_pwr+6, 0 
	MOVWF       R6 
	MOVF        FLOC__show_pwr+7, 0 
	MOVWF       R7 
	MOVLW       0
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVLW       72
	MOVWF       R2 
	MOVLW       133
	MOVWF       R3 
	CALL        _Div_32x32_FP+0, 0
	MOVF        FLOC__show_pwr+0, 0 
	MOVWF       R4 
	MOVF        FLOC__show_pwr+1, 0 
	MOVWF       R5 
	MOVF        FLOC__show_pwr+2, 0 
	MOVWF       R6 
	MOVF        FLOC__show_pwr+3, 0 
	MOVWF       R7 
	CALL        _Add_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       R4 
	MOVF        R1, 0 
	MOVWF       R5 
	MOVF        R2, 0 
	MOVWF       R6 
	MOVF        R3, 0 
	MOVWF       R7 
	MOVLW       0
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVLW       0
	MOVWF       R2 
	MOVLW       129
	MOVWF       R3 
	CALL        _Div_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       show_pwr_b_L0+0 
	MOVF        R1, 0 
	MOVWF       show_pwr_b_L0+1 
	MOVF        R2, 0 
	MOVWF       show_pwr_b_L0+2 
	MOVF        R3, 0 
	MOVWF       show_pwr_b_L0+3 
;main.c,588 :: 		if(a>=1.0) a = 1.0;
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       0
	MOVWF       R6 
	MOVLW       127
	MOVWF       R7 
	MOVF        FLOC__show_pwr+8, 0 
	MOVWF       R0 
	MOVF        FLOC__show_pwr+9, 0 
	MOVWF       R1 
	MOVF        FLOC__show_pwr+10, 0 
	MOVWF       R2 
	MOVF        FLOC__show_pwr+11, 0 
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr359
	MOVLW       0
	MOVWF       show_pwr_a_L0+0 
	MOVLW       0
	MOVWF       show_pwr_a_L0+1 
	MOVLW       0
	MOVWF       show_pwr_a_L0+2 
	MOVLW       127
	MOVWF       show_pwr_a_L0+3 
L_show_pwr359:
;main.c,589 :: 		if(b>=1.0) b = 1.0;
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       0
	MOVWF       R6 
	MOVLW       127
	MOVWF       R7 
	MOVF        show_pwr_b_L0+0, 0 
	MOVWF       R0 
	MOVF        show_pwr_b_L0+1, 0 
	MOVWF       R1 
	MOVF        show_pwr_b_L0+2, 0 
	MOVWF       R2 
	MOVF        show_pwr_b_L0+3, 0 
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr360
	MOVLW       0
	MOVWF       show_pwr_b_L0+0 
	MOVLW       0
	MOVWF       show_pwr_b_L0+1 
	MOVLW       0
	MOVWF       show_pwr_b_L0+2 
	MOVLW       127
	MOVWF       show_pwr_b_L0+3 
L_show_pwr360:
;main.c,590 :: 		p_ant = Power * a * b;
	MOVF        FARG_show_pwr_Power+0, 0 
	MOVWF       R0 
	MOVF        FARG_show_pwr_Power+1, 0 
	MOVWF       R1 
	CALL        _int2double+0, 0
	MOVF        show_pwr_a_L0+0, 0 
	MOVWF       R4 
	MOVF        show_pwr_a_L0+1, 0 
	MOVWF       R5 
	MOVF        show_pwr_a_L0+2, 0 
	MOVWF       R6 
	MOVF        show_pwr_a_L0+3, 0 
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	MOVF        show_pwr_b_L0+0, 0 
	MOVWF       R4 
	MOVF        show_pwr_b_L0+1, 0 
	MOVWF       R5 
	MOVF        show_pwr_b_L0+2, 0 
	MOVWF       R6 
	MOVF        show_pwr_b_L0+3, 0 
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	CALL        _double2int+0, 0
	MOVF        R0, 0 
	MOVWF       show_pwr_p_ant_L0+0 
	MOVF        R1, 0 
	MOVWF       show_pwr_p_ant_L0+1 
;main.c,591 :: 		eff = a * b * 100;
	MOVF        show_pwr_a_L0+0, 0 
	MOVWF       R0 
	MOVF        show_pwr_a_L0+1, 0 
	MOVWF       R1 
	MOVF        show_pwr_a_L0+2, 0 
	MOVWF       R2 
	MOVF        show_pwr_a_L0+3, 0 
	MOVWF       R3 
	MOVF        show_pwr_b_L0+0, 0 
	MOVWF       R4 
	MOVF        show_pwr_b_L0+1, 0 
	MOVWF       R5 
	MOVF        show_pwr_b_L0+2, 0 
	MOVWF       R6 
	MOVF        show_pwr_b_L0+3, 0 
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       72
	MOVWF       R6 
	MOVLW       133
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	CALL        _double2int+0, 0
	MOVF        R0, 0 
	MOVWF       show_pwr_eff_L0+0 
	MOVF        R1, 0 
	MOVWF       show_pwr_eff_L0+1 
;main.c,592 :: 		if(eff>=100) eff = 99;
	MOVLW       128
	XORWF       R1, 0 
	MOVWF       R2 
	MOVLW       128
	SUBWF       R2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__show_pwr664
	MOVLW       100
	SUBWF       R0, 0 
L__show_pwr664:
	BTFSS       STATUS+0, 0 
	GOTO        L_show_pwr361
	MOVLW       99
	MOVWF       show_pwr_eff_L0+0 
	MOVLW       0
	MOVWF       show_pwr_eff_L0+1 
L_show_pwr361:
;main.c,594 :: 		if(P_High==0) {
	MOVF        main_P_High+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr362
;main.c,595 :: 		if(p_ant >= 100) {   // > 10 W
	MOVLW       128
	XORWF       show_pwr_p_ant_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__show_pwr665
	MOVLW       100
	SUBWF       show_pwr_p_ant_L0+0, 0 
L__show_pwr665:
	BTFSS       STATUS+0, 0 
	GOTO        L_show_pwr363
;main.c,596 :: 		p_ant += 5;  // rounding to 1 W
	MOVLW       5
	ADDWF       show_pwr_p_ant_L0+0, 0 
	MOVWF       R0 
	MOVLW       0
	ADDWFC      show_pwr_p_ant_L0+1, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       show_pwr_p_ant_L0+0 
	MOVF        R1, 0 
	MOVWF       show_pwr_p_ant_L0+1 
;main.c,597 :: 		IntToStr(p_ant, work_str);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,598 :: 		work_str_2[0] = work_str[2];
	MOVF        _work_str+2, 0 
	MOVWF       _work_str_2+0 
;main.c,599 :: 		work_str_2[1] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+1 
;main.c,600 :: 		work_str_2[2] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+2 
;main.c,601 :: 		work_str_2[3] = 'W';
	MOVLW       87
	MOVWF       _work_str_2+3 
;main.c,602 :: 		}
	GOTO        L_show_pwr364
L_show_pwr363:
;main.c,604 :: 		IntToStr(p_ant, work_str);
	MOVF        show_pwr_p_ant_L0+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        show_pwr_p_ant_L0+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,605 :: 		if(work_str[4] != ' ') work_str_2[0] = work_str[4]; else work_str_2[0] = '0';
	MOVF        _work_str+4, 0 
	XORLW       32
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr365
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+0 
	GOTO        L_show_pwr366
L_show_pwr365:
	MOVLW       48
	MOVWF       _work_str_2+0 
L_show_pwr366:
;main.c,606 :: 		work_str_2[1] = '.';
	MOVLW       46
	MOVWF       _work_str_2+1 
;main.c,607 :: 		if(work_str[5] != ' ') work_str_2[2] = work_str[5]; else work_str_2[2] = '0';
	MOVF        _work_str+5, 0 
	XORLW       32
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr367
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+2 
	GOTO        L_show_pwr368
L_show_pwr367:
	MOVLW       48
	MOVWF       _work_str_2+2 
L_show_pwr368:
;main.c,608 :: 		work_str_2[3] = 'W';
	MOVLW       87
	MOVWF       _work_str_2+3 
;main.c,609 :: 		}
L_show_pwr364:
;main.c,610 :: 		}
	GOTO        L_show_pwr369
L_show_pwr362:
;main.c,612 :: 		if(p_ant<999){   // 0 - 1500 Watts
	MOVLW       128
	XORWF       show_pwr_p_ant_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       3
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__show_pwr666
	MOVLW       231
	SUBWF       show_pwr_p_ant_L0+0, 0 
L__show_pwr666:
	BTFSC       STATUS+0, 0 
	GOTO        L_show_pwr370
;main.c,613 :: 		IntToStr(p_ant, work_str);
	MOVF        show_pwr_p_ant_L0+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        show_pwr_p_ant_L0+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,614 :: 		work_str_2[0] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+0 
;main.c,615 :: 		work_str_2[1] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+1 
;main.c,616 :: 		work_str_2[2] = work_str[5];
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+2 
;main.c,617 :: 		work_str_2[3] = 'W';
	MOVLW       87
	MOVWF       _work_str_2+3 
;main.c,618 :: 		}
	GOTO        L_show_pwr371
L_show_pwr370:
;main.c,620 :: 		IntToStr(p_ant, work_str);
	MOVF        show_pwr_p_ant_L0+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        show_pwr_p_ant_L0+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,621 :: 		work_str_2[0] = work_str[2];
	MOVF        _work_str+2, 0 
	MOVWF       _work_str_2+0 
;main.c,622 :: 		work_str_2[1] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+1 
;main.c,623 :: 		work_str_2[2] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+2 
;main.c,624 :: 		work_str_2[3] = work_str[5];
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+3 
;main.c,625 :: 		}
L_show_pwr371:
;main.c,626 :: 		}
L_show_pwr369:
;main.c,627 :: 		if(type==4 | type==5) led_wr_str (4, 16+4*12, work_str_2, 4);  // 128*64 OLED
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr372
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	MOVLW       64
	MOVWF       FARG_led_wr_str+0 
	MOVLW       _work_str_2+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(_work_str_2+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_show_pwr373
L_show_pwr372:
;main.c,628 :: 		else if(type==2 | type==3) led_wr_str (0, 13, work_str_2, 4);  // 128*32
	MOVF        _type+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       3
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr374
	CLRF        FARG_led_wr_str+0 
	MOVLW       13
	MOVWF       FARG_led_wr_str+0 
	MOVLW       _work_str_2+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(_work_str_2+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_show_pwr375
L_show_pwr374:
;main.c,629 :: 		else if(type!=0) led_wr_str (0, 12, work_str_2, 4);  // 1602
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr376
	CLRF        FARG_led_wr_str+0 
	MOVLW       12
	MOVWF       FARG_led_wr_str+0 
	MOVLW       _work_str_2+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(_work_str_2+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_show_pwr376:
L_show_pwr375:
L_show_pwr373:
;main.c,631 :: 		IntToStr(eff, work_str);
	MOVF        show_pwr_eff_L0+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        show_pwr_eff_L0+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,632 :: 		work_str_2[0] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+0 
;main.c,633 :: 		work_str_2[1] = work_str[5];
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+1 
;main.c,634 :: 		if(type==4 | type==5) led_wr_str(6, 16+5*12, work_str_2, 2);
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr377
	MOVLW       6
	MOVWF       FARG_led_wr_str+0 
	MOVLW       76
	MOVWF       FARG_led_wr_str+0 
	MOVLW       _work_str_2+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(_work_str_2+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_show_pwr378
L_show_pwr377:
;main.c,635 :: 		else if(type==2 | type==3) led_wr_str(1, 14, work_str_2, 2);
	MOVF        _type+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       3
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr379
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	MOVLW       14
	MOVWF       FARG_led_wr_str+0 
	MOVLW       _work_str_2+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(_work_str_2+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_show_pwr380
L_show_pwr379:
;main.c,636 :: 		else if(type==1) led_wr_str(1, 13, work_str_2, 2);
	MOVF        _type+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr381
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	MOVLW       13
	MOVWF       FARG_led_wr_str+0 
	MOVLW       _work_str_2+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(_work_str_2+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_show_pwr381:
L_show_pwr380:
L_show_pwr378:
;main.c,637 :: 		}
L_show_pwr357:
;main.c,638 :: 		}
L_show_pwr343:
;main.c,639 :: 		asm CLRWDT;
	CLRWDT
;main.c,640 :: 		return;
;main.c,641 :: 		}
L_end_show_pwr:
	RETURN      0
; end of _show_pwr

_lcd_pwr:

;main.c,643 :: 		void lcd_pwr() {
;main.c,644 :: 		int p = 0;
	CLRF        lcd_pwr_p_L0+0 
	CLRF        lcd_pwr_p_L0+1 
;main.c,646 :: 		int delta = Auto_delta - 100;
	MOVLW       100
	SUBWF       _Auto_delta+0, 0 
	MOVWF       lcd_pwr_delta_L0+0 
	MOVLW       0
	SUBWFB      _Auto_delta+1, 0 
	MOVWF       lcd_pwr_delta_L0+1 
;main.c,649 :: 		PWR = 0;
	CLRF        _PWR+0 
	CLRF        _PWR+1 
;main.c,650 :: 		asm CLRWDT;
	CLRWDT
;main.c,652 :: 		if(dysp==0 & Relay_off==1){
	MOVF        _dysp+0, 0 
	XORLW       0
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        main_Relay_off+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_pwr382
;main.c,653 :: 		get_pwr();
	CALL        _get_pwr+0, 0
;main.c,654 :: 		if(PWR>=10){
	MOVLW       128
	XORWF       _PWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_pwr668
	MOVLW       10
	SUBWF       _PWR+0, 0 
L__lcd_pwr668:
	BTFSS       STATUS+0, 0 
	GOTO        L_lcd_pwr383
;main.c,655 :: 		set_ind(ind);
	MOVF        main_ind+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.c,656 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.c,657 :: 		set_SW(SW);
	MOVF        main_SW+0, 0 
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
;main.c,659 :: 		dysp = 1;
	MOVLW       1
	MOVWF       _dysp+0 
;main.c,660 :: 		dysp_on();           // dysplay ON
	CALL        _dysp_on+0, 0
;main.c,661 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
	MOVF        _Dysp_delay+0, 0 
	MOVWF       R0 
	CALL        _byte2double+0, 0
	MOVF        _dysp_cnt_mult+0, 0 
	MOVWF       R4 
	MOVF        _dysp_cnt_mult+1, 0 
	MOVWF       R5 
	MOVF        _dysp_cnt_mult+2, 0 
	MOVWF       R6 
	MOVF        _dysp_cnt_mult+3, 0 
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	CALL        _double2int+0, 0
	MOVF        R0, 0 
	MOVWF       _dysp_cnt+0 
	MOVF        R1, 0 
	MOVWF       _dysp_cnt+1 
;main.c,662 :: 		}
L_lcd_pwr383:
;main.c,663 :: 		return;
	GOTO        L_end_lcd_pwr
;main.c,664 :: 		}
L_lcd_pwr382:
;main.c,666 :: 		cnt = 120;
	MOVLW       120
	MOVWF       lcd_pwr_cnt_L0+0 
;main.c,667 :: 		for(peak_cnt = 0; peak_cnt < cnt; peak_cnt++){
	CLRF        lcd_pwr_peak_cnt_L0+0 
L_lcd_pwr384:
	MOVF        lcd_pwr_cnt_L0+0, 0 
	SUBWF       lcd_pwr_peak_cnt_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_lcd_pwr385
;main.c,668 :: 		if(PORTB.B1==0 | PORTB.B2==0 | (PORTB.B0==0 & tune_btn_release)) {button_delay(); if(but==1) {but = 0; return;} }
	BTFSC       PORTB+0, 1 
	GOTO        L__lcd_pwr669
	BSF         R6, 0 
	GOTO        L__lcd_pwr670
L__lcd_pwr669:
	BCF         R6, 0 
L__lcd_pwr670:
	BTFSC       PORTB+0, 2 
	GOTO        L__lcd_pwr671
	BSF         STATUS+0, 0 
	GOTO        L__lcd_pwr672
L__lcd_pwr671:
	BCF         STATUS+0, 0 
L__lcd_pwr672:
	BTFSC       R6, 0 
	GOTO        L__lcd_pwr673
	BTFSC       STATUS+0, 0 
	GOTO        L__lcd_pwr673
	BCF         R6, 1 
	GOTO        L__lcd_pwr674
L__lcd_pwr673:
	BSF         R6, 1 
L__lcd_pwr674:
	BTFSC       PORTB+0, 0 
	GOTO        L__lcd_pwr675
	BSF         STATUS+0, 0 
	GOTO        L__lcd_pwr676
L__lcd_pwr675:
	BCF         STATUS+0, 0 
L__lcd_pwr676:
	BTFSS       STATUS+0, 0 
	GOTO        L__lcd_pwr677
	BTFSS       _tune_btn_release+0, BitPos(_tune_btn_release+0) 
	GOTO        L__lcd_pwr677
	BSF         R6, 0 
	GOTO        L__lcd_pwr678
L__lcd_pwr677:
	BCF         R6, 0 
L__lcd_pwr678:
	BTFSC       R6, 1 
	GOTO        L__lcd_pwr679
	BTFSC       R6, 0 
	GOTO        L__lcd_pwr679
	BCF         STATUS+0, 0 
	GOTO        L__lcd_pwr680
L__lcd_pwr679:
	BSF         STATUS+0, 0 
L__lcd_pwr680:
	BTFSS       STATUS+0, 0 
	GOTO        L_lcd_pwr387
	CALL        _button_delay+0, 0
	MOVF        _but+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_pwr388
	CLRF        _but+0 
	GOTO        L_end_lcd_pwr
L_lcd_pwr388:
L_lcd_pwr387:
;main.c,669 :: 		get_pwr();
	CALL        _get_pwr+0, 0
;main.c,670 :: 		if(PWR>p) {p = PWR; SWR_fixed = SWR;}
	MOVLW       128
	XORWF       lcd_pwr_p_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       _PWR+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_pwr681
	MOVF        _PWR+0, 0 
	SUBWF       lcd_pwr_p_L0+0, 0 
L__lcd_pwr681:
	BTFSC       STATUS+0, 0 
	GOTO        L_lcd_pwr389
	MOVF        _PWR+0, 0 
	MOVWF       lcd_pwr_p_L0+0 
	MOVF        _PWR+1, 0 
	MOVWF       lcd_pwr_p_L0+1 
	MOVF        _SWR+0, 0 
	MOVWF       lcd_pwr_SWR_fixed_L0+0 
	MOVF        _SWR+1, 0 
	MOVWF       lcd_pwr_SWR_fixed_L0+1 
L_lcd_pwr389:
;main.c,671 :: 		Delay_ms(3);
	MOVLW       16
	MOVWF       R12, 0
	MOVLW       148
	MOVWF       R13, 0
L_lcd_pwr390:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr390
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr390
	NOP
;main.c,667 :: 		for(peak_cnt = 0; peak_cnt < cnt; peak_cnt++){
	INCF        lcd_pwr_peak_cnt_L0+0, 1 
;main.c,672 :: 		}
	GOTO        L_lcd_pwr384
L_lcd_pwr385:
;main.c,673 :: 		asm CLRWDT;
	CLRWDT
;main.c,674 :: 		if(p>=100){ p = (p + 5) / 10; p*= 10; }  // round to 1 W if more then 100 W
	MOVLW       128
	XORWF       lcd_pwr_p_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_pwr682
	MOVLW       100
	SUBWF       lcd_pwr_p_L0+0, 0 
L__lcd_pwr682:
	BTFSS       STATUS+0, 0 
	GOTO        L_lcd_pwr391
	MOVLW       5
	ADDWF       lcd_pwr_p_L0+0, 0 
	MOVWF       R0 
	MOVLW       0
	ADDWFC      lcd_pwr_p_L0+1, 0 
	MOVWF       R1 
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Div_16x16_S+0, 0
	MOVF        R0, 0 
	MOVWF       lcd_pwr_p_L0+0 
	MOVF        R1, 0 
	MOVWF       lcd_pwr_p_L0+1 
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVF        R0, 0 
	MOVWF       lcd_pwr_p_L0+0 
	MOVF        R1, 0 
	MOVWF       lcd_pwr_p_L0+1 
L_lcd_pwr391:
;main.c,675 :: 		Power = p;
	MOVF        lcd_pwr_p_L0+0, 0 
	MOVWF       _Power+0 
	MOVF        lcd_pwr_p_L0+1, 0 
	MOVWF       _Power+1 
;main.c,676 :: 		if(Power<10) SWR_fixed = 0;
	MOVLW       128
	XORWF       lcd_pwr_p_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_pwr683
	MOVLW       10
	SUBWF       lcd_pwr_p_L0+0, 0 
L__lcd_pwr683:
	BTFSC       STATUS+0, 0 
	GOTO        L_lcd_pwr392
	CLRF        lcd_pwr_SWR_fixed_L0+0 
	CLRF        lcd_pwr_SWR_fixed_L0+1 
L_lcd_pwr392:
;main.c,677 :: 		lcd_swr(SWR_fixed);
	MOVF        lcd_pwr_SWR_fixed_L0+0, 0 
	MOVWF       FARG_lcd_swr_swr+0 
	MOVF        lcd_pwr_SWR_fixed_L0+1, 0 
	MOVWF       FARG_lcd_swr_swr+1 
	CALL        _lcd_swr+0, 0
;main.c,678 :: 		if(Power>=10 & Dysp_delay>0) {
	MOVLW       128
	XORWF       _Power+1, 0 
	MOVWF       R1 
	MOVLW       128
	SUBWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_pwr684
	MOVLW       10
	SUBWF       _Power+0, 0 
L__lcd_pwr684:
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R1 
	MOVF        _Dysp_delay+0, 0 
	SUBLW       0
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_pwr393
;main.c,679 :: 		if(dysp==0){ dysp = 1; dysp_on(); }          // dysplay ON
	MOVF        _dysp+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_pwr394
	MOVLW       1
	MOVWF       _dysp+0 
	CALL        _dysp_on+0, 0
L_lcd_pwr394:
;main.c,680 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
	MOVF        _Dysp_delay+0, 0 
	MOVWF       R0 
	CALL        _byte2double+0, 0
	MOVF        _dysp_cnt_mult+0, 0 
	MOVWF       R4 
	MOVF        _dysp_cnt_mult+1, 0 
	MOVWF       R5 
	MOVF        _dysp_cnt_mult+2, 0 
	MOVWF       R6 
	MOVF        _dysp_cnt_mult+3, 0 
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	CALL        _double2int+0, 0
	MOVF        R0, 0 
	MOVWF       _dysp_cnt+0 
	MOVF        R1, 0 
	MOVWF       _dysp_cnt+1 
;main.c,681 :: 		}
L_lcd_pwr393:
;main.c,683 :: 		if(Auto & SWR_fixed>=Auto_delta & ((SWR_fixed>SWR_fixed_old & (SWR_fixed-SWR_fixed_old)>delta) | (SWR_fixed<SWR_fixed_old & (SWR_fixed_old-SWR_fixed)>delta) | SWR_fixed_old==999))
	MOVLW       128
	XORWF       lcd_pwr_SWR_fixed_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       _Auto_delta+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_pwr685
	MOVF        _Auto_delta+0, 0 
	SUBWF       lcd_pwr_SWR_fixed_L0+0, 0 
L__lcd_pwr685:
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       _Auto+0, 0 
	MOVWF       R5 
	MOVLW       128
	XORWF       _SWR_fixed_old+1, 0 
	MOVWF       R3 
	MOVLW       128
	XORWF       lcd_pwr_SWR_fixed_L0+1, 0 
	SUBWF       R3, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_pwr686
	MOVF        lcd_pwr_SWR_fixed_L0+0, 0 
	SUBWF       _SWR_fixed_old+0, 0 
L__lcd_pwr686:
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R3 
	MOVF        _SWR_fixed_old+0, 0 
	SUBWF       lcd_pwr_SWR_fixed_L0+0, 0 
	MOVWF       R1 
	MOVF        _SWR_fixed_old+1, 0 
	SUBWFB      lcd_pwr_SWR_fixed_L0+1, 0 
	MOVWF       R2 
	MOVLW       128
	XORWF       lcd_pwr_delta_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_pwr687
	MOVF        R1, 0 
	SUBWF       lcd_pwr_delta_L0+0, 0 
L__lcd_pwr687:
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R3, 0 
	MOVWF       R4 
	MOVLW       128
	XORWF       lcd_pwr_SWR_fixed_L0+1, 0 
	MOVWF       R3 
	MOVLW       128
	XORWF       _SWR_fixed_old+1, 0 
	SUBWF       R3, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_pwr688
	MOVF        _SWR_fixed_old+0, 0 
	SUBWF       lcd_pwr_SWR_fixed_L0+0, 0 
L__lcd_pwr688:
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R3 
	MOVF        lcd_pwr_SWR_fixed_L0+0, 0 
	SUBWF       _SWR_fixed_old+0, 0 
	MOVWF       R1 
	MOVF        lcd_pwr_SWR_fixed_L0+1, 0 
	SUBWFB      _SWR_fixed_old+1, 0 
	MOVWF       R2 
	MOVLW       128
	XORWF       lcd_pwr_delta_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_pwr689
	MOVF        R1, 0 
	SUBWF       lcd_pwr_delta_L0+0, 0 
L__lcd_pwr689:
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R0 
	MOVF        R3, 0 
	ANDWF       R0, 1 
	MOVF        R0, 0 
	IORWF       R4, 0 
	MOVWF       R1 
	MOVF        _SWR_fixed_old+1, 0 
	XORLW       3
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_pwr690
	MOVLW       231
	XORWF       _SWR_fixed_old+0, 0 
L__lcd_pwr690:
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	MOVF        R5, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_pwr395
;main.c,684 :: 		Soft_tune = 1;
	MOVLW       1
	MOVWF       _Soft_tune+0 
L_lcd_pwr395:
;main.c,686 :: 		if(PORTB.B1==0 | PORTB.B2==0 | (PORTB.B0==0 & tune_btn_release)) {button_delay(); if(but==1) {but = 0; return;} }   // Fast return if button pressed
	BTFSC       PORTB+0, 1 
	GOTO        L__lcd_pwr691
	BSF         R6, 0 
	GOTO        L__lcd_pwr692
L__lcd_pwr691:
	BCF         R6, 0 
L__lcd_pwr692:
	BTFSC       PORTB+0, 2 
	GOTO        L__lcd_pwr693
	BSF         STATUS+0, 0 
	GOTO        L__lcd_pwr694
L__lcd_pwr693:
	BCF         STATUS+0, 0 
L__lcd_pwr694:
	BTFSC       R6, 0 
	GOTO        L__lcd_pwr695
	BTFSC       STATUS+0, 0 
	GOTO        L__lcd_pwr695
	BCF         R6, 1 
	GOTO        L__lcd_pwr696
L__lcd_pwr695:
	BSF         R6, 1 
L__lcd_pwr696:
	BTFSC       PORTB+0, 0 
	GOTO        L__lcd_pwr697
	BSF         STATUS+0, 0 
	GOTO        L__lcd_pwr698
L__lcd_pwr697:
	BCF         STATUS+0, 0 
L__lcd_pwr698:
	BTFSS       STATUS+0, 0 
	GOTO        L__lcd_pwr699
	BTFSS       _tune_btn_release+0, BitPos(_tune_btn_release+0) 
	GOTO        L__lcd_pwr699
	BSF         R6, 0 
	GOTO        L__lcd_pwr700
L__lcd_pwr699:
	BCF         R6, 0 
L__lcd_pwr700:
	BTFSC       R6, 1 
	GOTO        L__lcd_pwr701
	BTFSC       R6, 0 
	GOTO        L__lcd_pwr701
	BCF         STATUS+0, 0 
	GOTO        L__lcd_pwr702
L__lcd_pwr701:
	BSF         STATUS+0, 0 
L__lcd_pwr702:
	BTFSS       STATUS+0, 0 
	GOTO        L_lcd_pwr396
	CALL        _button_delay+0, 0
	MOVF        _but+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_pwr397
	CLRF        _but+0 
	GOTO        L_end_lcd_pwr
L_lcd_pwr397:
L_lcd_pwr396:
;main.c,688 :: 		show_pwr(Power, SWR_fixed);
	MOVF        _Power+0, 0 
	MOVWF       FARG_show_pwr_Power+0 
	MOVF        _Power+1, 0 
	MOVWF       FARG_show_pwr_Power+1 
	MOVF        lcd_pwr_SWR_fixed_L0+0, 0 
	MOVWF       FARG_show_pwr_SWR+0 
	MOVF        lcd_pwr_SWR_fixed_L0+1, 0 
	MOVWF       FARG_show_pwr_SWR+1 
	CALL        _show_pwr+0, 0
;main.c,690 :: 		if(PORTB.B1==0 | PORTB.B2==0 | (PORTB.B0==0 & tune_btn_release)) {button_delay(); if(but==1) {but = 0; return;} }
	BTFSC       PORTB+0, 1 
	GOTO        L__lcd_pwr703
	BSF         R6, 0 
	GOTO        L__lcd_pwr704
L__lcd_pwr703:
	BCF         R6, 0 
L__lcd_pwr704:
	BTFSC       PORTB+0, 2 
	GOTO        L__lcd_pwr705
	BSF         STATUS+0, 0 
	GOTO        L__lcd_pwr706
L__lcd_pwr705:
	BCF         STATUS+0, 0 
L__lcd_pwr706:
	BTFSC       R6, 0 
	GOTO        L__lcd_pwr707
	BTFSC       STATUS+0, 0 
	GOTO        L__lcd_pwr707
	BCF         R6, 1 
	GOTO        L__lcd_pwr708
L__lcd_pwr707:
	BSF         R6, 1 
L__lcd_pwr708:
	BTFSC       PORTB+0, 0 
	GOTO        L__lcd_pwr709
	BSF         STATUS+0, 0 
	GOTO        L__lcd_pwr710
L__lcd_pwr709:
	BCF         STATUS+0, 0 
L__lcd_pwr710:
	BTFSS       STATUS+0, 0 
	GOTO        L__lcd_pwr711
	BTFSS       _tune_btn_release+0, BitPos(_tune_btn_release+0) 
	GOTO        L__lcd_pwr711
	BSF         R6, 0 
	GOTO        L__lcd_pwr712
L__lcd_pwr711:
	BCF         R6, 0 
L__lcd_pwr712:
	BTFSC       R6, 1 
	GOTO        L__lcd_pwr713
	BTFSC       R6, 0 
	GOTO        L__lcd_pwr713
	BCF         STATUS+0, 0 
	GOTO        L__lcd_pwr714
L__lcd_pwr713:
	BSF         STATUS+0, 0 
L__lcd_pwr714:
	BTFSS       STATUS+0, 0 
	GOTO        L_lcd_pwr398
	CALL        _button_delay+0, 0
	MOVF        _but+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_pwr399
	CLRF        _but+0 
	GOTO        L_end_lcd_pwr
L_lcd_pwr399:
L_lcd_pwr398:
;main.c,691 :: 		asm CLRWDT;
	CLRWDT
;main.c,692 :: 		if(Overload==1) {
	MOVF        main_Overload+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_pwr400
;main.c,693 :: 		if(type==4 | type==5) {                  // 128*64 OLED
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_pwr401
;main.c,694 :: 		led_wr_str (2, 16, "        ", 8);
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr63_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr63_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,695 :: 		delay_ms(100);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       8
	MOVWF       R12, 0
	MOVLW       119
	MOVWF       R13, 0
L_lcd_pwr402:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr402
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr402
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr402
;main.c,696 :: 		led_wr_str (2, 16, "OVERLOAD", 8);
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr64_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr64_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,697 :: 		delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_lcd_pwr403:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr403
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr403
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr403
	NOP
	NOP
;main.c,698 :: 		asm CLRWDT;
	CLRWDT
;main.c,699 :: 		led_wr_str (2, 16, "        ", 8);
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr65_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr65_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,700 :: 		delay_ms(300);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       23
	MOVWF       R12, 0
	MOVLW       106
	MOVWF       R13, 0
L_lcd_pwr404:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr404
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr404
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr404
	NOP
;main.c,701 :: 		asm CLRWDT;
	CLRWDT
;main.c,702 :: 		led_wr_str (2, 16, "OVERLOAD", 8);
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr66_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr66_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,703 :: 		delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_lcd_pwr405:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr405
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr405
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr405
	NOP
	NOP
;main.c,704 :: 		asm CLRWDT;
	CLRWDT
;main.c,705 :: 		led_wr_str (2, 16, "        ", 8);
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr67_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr67_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,706 :: 		delay_ms(300);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       23
	MOVWF       R12, 0
	MOVLW       106
	MOVWF       R13, 0
L_lcd_pwr406:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr406
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr406
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr406
	NOP
;main.c,707 :: 		asm CLRWDT;
	CLRWDT
;main.c,708 :: 		led_wr_str (2, 16, "OVERLOAD", 8);
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr68_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr68_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,709 :: 		delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_lcd_pwr407:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr407
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr407
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr407
	NOP
	NOP
;main.c,710 :: 		asm CLRWDT;
	CLRWDT
;main.c,711 :: 		led_wr_str (2, 16, "        ", 8);
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr69_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr69_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,712 :: 		delay_ms(100);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       8
	MOVWF       R12, 0
	MOVLW       119
	MOVWF       R13, 0
L_lcd_pwr408:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr408
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr408
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr408
;main.c,713 :: 		led_wr_str (2, 16, "SWR=    ", 8);
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr70_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr70_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,714 :: 		}
	GOTO        L_lcd_pwr409
L_lcd_pwr401:
;main.c,715 :: 		else if(type!=0)  {        // 1602  & 128*32
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_pwr410
;main.c,716 :: 		led_wr_str (1, 0, "        ", 8);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CLRF        FARG_led_wr_str+0 
	MOVLW       ?lstr71_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr71_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,717 :: 		delay_ms(100);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       8
	MOVWF       R12, 0
	MOVLW       119
	MOVWF       R13, 0
L_lcd_pwr411:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr411
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr411
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr411
;main.c,718 :: 		led_wr_str (1, 0, "OVERLOAD", 8);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CLRF        FARG_led_wr_str+0 
	MOVLW       ?lstr72_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr72_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,719 :: 		delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_lcd_pwr412:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr412
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr412
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr412
	NOP
	NOP
;main.c,720 :: 		asm CLRWDT;
	CLRWDT
;main.c,721 :: 		led_wr_str (1, 0, "        ", 8);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CLRF        FARG_led_wr_str+0 
	MOVLW       ?lstr73_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr73_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,722 :: 		delay_ms(300);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       23
	MOVWF       R12, 0
	MOVLW       106
	MOVWF       R13, 0
L_lcd_pwr413:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr413
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr413
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr413
	NOP
;main.c,723 :: 		asm CLRWDT;
	CLRWDT
;main.c,724 :: 		led_wr_str (1, 0, "OVERLOAD", 8);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CLRF        FARG_led_wr_str+0 
	MOVLW       ?lstr74_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr74_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,725 :: 		delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_lcd_pwr414:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr414
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr414
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr414
	NOP
	NOP
;main.c,726 :: 		asm CLRWDT;
	CLRWDT
;main.c,727 :: 		led_wr_str (1, 0, "        ", 8);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CLRF        FARG_led_wr_str+0 
	MOVLW       ?lstr75_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr75_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,728 :: 		delay_ms(300);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       23
	MOVWF       R12, 0
	MOVLW       106
	MOVWF       R13, 0
L_lcd_pwr415:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr415
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr415
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr415
	NOP
;main.c,729 :: 		asm CLRWDT;
	CLRWDT
;main.c,730 :: 		led_wr_str (1, 0, "OVERLOAD", 8);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CLRF        FARG_led_wr_str+0 
	MOVLW       ?lstr76_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr76_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,731 :: 		delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_lcd_pwr416:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr416
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr416
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr416
	NOP
	NOP
;main.c,732 :: 		asm CLRWDT;
	CLRWDT
;main.c,733 :: 		led_wr_str (1, 0, "        ", 8);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CLRF        FARG_led_wr_str+0 
	MOVLW       ?lstr77_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr77_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,734 :: 		delay_ms(100);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       8
	MOVWF       R12, 0
	MOVLW       119
	MOVWF       R13, 0
L_lcd_pwr417:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr417
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr417
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr417
;main.c,735 :: 		led_wr_str (1, 0, "SWR=    ", 8);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CLRF        FARG_led_wr_str+0 
	MOVLW       ?lstr78_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr78_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,736 :: 		}
L_lcd_pwr410:
L_lcd_pwr409:
;main.c,737 :: 		asm CLRWDT;
	CLRWDT
;main.c,738 :: 		SWR_old = 10000;
	MOVLW       16
	MOVWF       _SWR_old+0 
	MOVLW       39
	MOVWF       _SWR_old+1 
;main.c,739 :: 		lcd_swr(SWR_fixed);
	MOVF        lcd_pwr_SWR_fixed_L0+0, 0 
	MOVWF       FARG_lcd_swr_swr+0 
	MOVF        lcd_pwr_SWR_fixed_L0+1, 0 
	MOVWF       FARG_lcd_swr_swr+1 
	CALL        _lcd_swr+0, 0
;main.c,740 :: 		}
L_lcd_pwr400:
;main.c,741 :: 		return;
;main.c,742 :: 		}
L_end_lcd_pwr:
	RETURN      0
; end of _lcd_pwr

_lcd_ind:

;main.c,744 :: 		void lcd_ind() {
;main.c,746 :: 		asm CLRWDT;
	CLRWDT
;main.c,748 :: 		work_int = 0;
	CLRF        _work_int+0 
	CLRF        _work_int+1 
;main.c,749 :: 		if(ind.B0) work_int += Ind1;
	BTFSS       main_ind+0, 0 
	GOTO        L_lcd_ind419
	MOVF        _Ind1+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Ind1+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind419:
;main.c,750 :: 		if(ind.B1) work_int += Ind2;
	BTFSS       main_ind+0, 1 
	GOTO        L_lcd_ind420
	MOVF        _Ind2+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Ind2+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind420:
;main.c,751 :: 		if(ind.B2) work_int += Ind3;
	BTFSS       main_ind+0, 2 
	GOTO        L_lcd_ind421
	MOVF        _Ind3+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Ind3+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind421:
;main.c,752 :: 		if(ind.B3) work_int += Ind4;
	BTFSS       main_ind+0, 3 
	GOTO        L_lcd_ind422
	MOVF        _Ind4+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Ind4+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind422:
;main.c,753 :: 		if(ind.B4) work_int += Ind5;
	BTFSS       main_ind+0, 4 
	GOTO        L_lcd_ind423
	MOVF        _Ind5+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Ind5+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind423:
;main.c,754 :: 		if(ind.B5) work_int += Ind6;
	BTFSS       main_ind+0, 5 
	GOTO        L_lcd_ind424
	MOVF        _Ind6+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Ind6+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind424:
;main.c,755 :: 		if(ind.B6) work_int += Ind7;
	BTFSS       main_ind+0, 6 
	GOTO        L_lcd_ind425
	MOVF        _Ind7+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Ind7+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind425:
;main.c,756 :: 		if(ind.B7) work_int += Ind8;
	BTFSS       main_ind+0, 7 
	GOTO        L_lcd_ind426
	MOVF        _Ind8+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Ind8+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind426:
;main.c,757 :: 		if(work_int>9999) {    // more then 9999 nH
	MOVLW       128
	XORLW       39
	MOVWF       R0 
	MOVLW       128
	XORWF       _work_int+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_ind716
	MOVF        _work_int+0, 0 
	SUBLW       15
L__lcd_ind716:
	BTFSC       STATUS+0, 0 
	GOTO        L_lcd_ind427
;main.c,758 :: 		work_int += 50; // round
	MOVLW       50
	ADDWF       _work_int+0, 0 
	MOVWF       R0 
	MOVLW       0
	ADDWFC      _work_int+1, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       _work_int+0 
	MOVF        R1, 0 
	MOVWF       _work_int+1 
;main.c,759 :: 		IntToStr(work_int, work_str);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,760 :: 		work_str_2[0] = work_str[1];
	MOVF        _work_str+1, 0 
	MOVWF       _work_str_2+0 
;main.c,761 :: 		work_str_2[1] = work_str[2];
	MOVF        _work_str+2, 0 
	MOVWF       _work_str_2+1 
;main.c,762 :: 		work_str_2[2] = '.';
	MOVLW       46
	MOVWF       _work_str_2+2 
;main.c,763 :: 		work_str_2[3] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+3 
;main.c,764 :: 		}
	GOTO        L_lcd_ind428
L_lcd_ind427:
;main.c,766 :: 		IntToStr(work_int, work_str);
	MOVF        _work_int+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _work_int+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,767 :: 		if(work_str[2] != ' ') work_str_2[0] = work_str[2]; else work_str_2[0] = '0';
	MOVF        _work_str+2, 0 
	XORLW       32
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_ind429
	MOVF        _work_str+2, 0 
	MOVWF       _work_str_2+0 
	GOTO        L_lcd_ind430
L_lcd_ind429:
	MOVLW       48
	MOVWF       _work_str_2+0 
L_lcd_ind430:
;main.c,768 :: 		work_str_2[1] = '.';
	MOVLW       46
	MOVWF       _work_str_2+1 
;main.c,769 :: 		if(work_str[3] != ' ') work_str_2[2] = work_str[3]; else work_str_2[2] = '0';
	MOVF        _work_str+3, 0 
	XORLW       32
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_ind431
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+2 
	GOTO        L_lcd_ind432
L_lcd_ind431:
	MOVLW       48
	MOVWF       _work_str_2+2 
L_lcd_ind432:
;main.c,770 :: 		if(work_str[4] != ' ') work_str_2[3] = work_str[4]; else work_str_2[3] = '0';
	MOVF        _work_str+4, 0 
	XORLW       32
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_ind433
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+3 
	GOTO        L_lcd_ind434
L_lcd_ind433:
	MOVLW       48
	MOVWF       _work_str_2+3 
L_lcd_ind434:
;main.c,771 :: 		}
L_lcd_ind428:
;main.c,772 :: 		if(type==4 | type==5) {  // 128*64 OLED
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_ind435
;main.c,773 :: 		if(SW==1) column = 4; else column = 6;
	MOVF        main_SW+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_ind436
	MOVLW       4
	MOVWF       lcd_ind_column_L0+0 
	GOTO        L_lcd_ind437
L_lcd_ind436:
	MOVLW       6
	MOVWF       lcd_ind_column_L0+0 
L_lcd_ind437:
;main.c,774 :: 		led_wr_str (column, 16, "L=", 2);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr79_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr79_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,775 :: 		led_wr_str (column, 16+6*12, "uH", 2);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       88
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr80_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr80_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,776 :: 		led_wr_str (column, 16+2*12, work_str_2, 4);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       40
	MOVWF       FARG_led_wr_str+0 
	MOVLW       _work_str_2+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(_work_str_2+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,777 :: 		}
	GOTO        L_lcd_ind438
L_lcd_ind435:
;main.c,778 :: 		else if(type==2 | type==3) {// 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       3
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_ind439
;main.c,779 :: 		if(SW==1) column = 0; else column = 1;
	MOVF        main_SW+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_ind440
	CLRF        lcd_ind_column_L0+0 
	GOTO        L_lcd_ind441
L_lcd_ind440:
	MOVLW       1
	MOVWF       lcd_ind_column_L0+0 
L_lcd_ind441:
;main.c,780 :: 		led_wr_str (column, 9, "L=", 2);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr81_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr81_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,781 :: 		led_wr_str (column, 15, "uH", 2);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       15
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr82_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr82_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,782 :: 		led_wr_str (column, 11, work_str_2, 4);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       11
	MOVWF       FARG_led_wr_str+0 
	MOVLW       _work_str_2+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(_work_str_2+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,783 :: 		}
	GOTO        L_lcd_ind442
L_lcd_ind439:
;main.c,784 :: 		else if(type==1) { //  1602 LCD
	MOVF        _type+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_ind443
;main.c,785 :: 		if(SW==1) column = 0; else column = 1;
	MOVF        main_SW+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_ind444
	CLRF        lcd_ind_column_L0+0 
	GOTO        L_lcd_ind445
L_lcd_ind444:
	MOVLW       1
	MOVWF       lcd_ind_column_L0+0 
L_lcd_ind445:
;main.c,786 :: 		led_wr_str (column, 9, "L=", 2);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr83_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr83_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,787 :: 		led_wr_str (column, 15, "u", 1);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       15
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr84_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr84_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,788 :: 		led_wr_str (column, 11, work_str_2, 4);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       11
	MOVWF       FARG_led_wr_str+0 
	MOVLW       _work_str_2+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(_work_str_2+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,789 :: 		}
L_lcd_ind443:
L_lcd_ind442:
L_lcd_ind438:
;main.c,791 :: 		asm CLRWDT;
	CLRWDT
;main.c,793 :: 		work_int = 0;
	CLRF        _work_int+0 
	CLRF        _work_int+1 
;main.c,794 :: 		if(cap.B0) work_int += Cap1;
	BTFSS       main_cap+0, 0 
	GOTO        L_lcd_ind447
	MOVF        _Cap1+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Cap1+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind447:
;main.c,795 :: 		if(cap.B1) work_int += Cap2;
	BTFSS       main_cap+0, 1 
	GOTO        L_lcd_ind448
	MOVF        _Cap2+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Cap2+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind448:
;main.c,796 :: 		if(cap.B2) work_int += Cap3;
	BTFSS       main_cap+0, 2 
	GOTO        L_lcd_ind449
	MOVF        _Cap3+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Cap3+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind449:
;main.c,797 :: 		if(cap.B3) work_int += Cap4;
	BTFSS       main_cap+0, 3 
	GOTO        L_lcd_ind450
	MOVF        _Cap4+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Cap4+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind450:
;main.c,798 :: 		if(cap.B4) work_int += Cap5;
	BTFSS       main_cap+0, 4 
	GOTO        L_lcd_ind451
	MOVF        _Cap5+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Cap5+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind451:
;main.c,799 :: 		if(cap.B5) work_int += Cap6;
	BTFSS       main_cap+0, 5 
	GOTO        L_lcd_ind452
	MOVF        _Cap6+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Cap6+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind452:
;main.c,800 :: 		if(cap.B6) work_int += Cap7;
	BTFSS       main_cap+0, 6 
	GOTO        L_lcd_ind453
	MOVF        _Cap7+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Cap7+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind453:
;main.c,801 :: 		IntToStr(work_int, work_str);
	MOVF        _work_int+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _work_int+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,802 :: 		work_str_2[0] = work_str[2];
	MOVF        _work_str+2, 0 
	MOVWF       _work_str_2+0 
;main.c,803 :: 		work_str_2[1] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+1 
;main.c,804 :: 		work_str_2[2] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+2 
;main.c,805 :: 		work_str_2[3] = work_str[5];
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+3 
;main.c,807 :: 		if(type==4 | type==5) {  // 128*64 OLED
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_ind454
;main.c,808 :: 		if(SW==1) column = 6; else column = 4;
	MOVF        main_SW+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_ind455
	MOVLW       6
	MOVWF       lcd_ind_column_L0+0 
	GOTO        L_lcd_ind456
L_lcd_ind455:
	MOVLW       4
	MOVWF       lcd_ind_column_L0+0 
L_lcd_ind456:
;main.c,809 :: 		led_wr_str (column, 16, "C=", 2);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr85_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr85_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,810 :: 		led_wr_str (column, 16+6*12, "pF", 2);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       88
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr86_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr86_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,811 :: 		led_wr_str (column, 16+2*12, work_str_2, 4);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       40
	MOVWF       FARG_led_wr_str+0 
	MOVLW       _work_str_2+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(_work_str_2+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,812 :: 		}
	GOTO        L_lcd_ind457
L_lcd_ind454:
;main.c,813 :: 		else if(type==2 | type==3) {// 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       3
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_ind458
;main.c,814 :: 		if(SW==1) column = 1; else column = 0;
	MOVF        main_SW+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_ind459
	MOVLW       1
	MOVWF       lcd_ind_column_L0+0 
	GOTO        L_lcd_ind460
L_lcd_ind459:
	CLRF        lcd_ind_column_L0+0 
L_lcd_ind460:
;main.c,815 :: 		led_wr_str (column, 9, "C=", 2);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr87_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr87_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,816 :: 		led_wr_str (column, 15, "pF", 2);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       15
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr88_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr88_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,817 :: 		led_wr_str (column, 11, work_str_2, 4);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       11
	MOVWF       FARG_led_wr_str+0 
	MOVLW       _work_str_2+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(_work_str_2+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,818 :: 		}
	GOTO        L_lcd_ind461
L_lcd_ind458:
;main.c,819 :: 		else if(type==1) { // 1602 LCD
	MOVF        _type+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_ind462
;main.c,820 :: 		if(SW==1) column = 1; else column = 0;
	MOVF        main_SW+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_ind463
	MOVLW       1
	MOVWF       lcd_ind_column_L0+0 
	GOTO        L_lcd_ind464
L_lcd_ind463:
	CLRF        lcd_ind_column_L0+0 
L_lcd_ind464:
;main.c,821 :: 		led_wr_str (column, 9, "C=", 2);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr89_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr89_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,822 :: 		led_wr_str (column, 15, "p", 1);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       15
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr90_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr90_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,823 :: 		led_wr_str (column, 11, work_str_2, 4);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       11
	MOVWF       FARG_led_wr_str+0 
	MOVLW       _work_str_2+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(_work_str_2+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,824 :: 		}
L_lcd_ind462:
L_lcd_ind461:
L_lcd_ind457:
;main.c,826 :: 		asm CLRWDT;
	CLRWDT
;main.c,827 :: 		return;
;main.c,828 :: 		}
L_end_lcd_ind:
	RETURN      0
; end of _lcd_ind

_Test_init:

;main.c,831 :: 		void Test_init(void) { // Test mode
;main.c,832 :: 		if(type==4 | type==5)        // 128*64 OLED
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_Test_init465
;main.c,833 :: 		led_wr_str (0, 10, "TEST MODE", 9);
	CLRF        FARG_led_wr_str+0 
	MOVLW       10
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr91_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr91_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_Test_init466
L_Test_init465:
;main.c,834 :: 		else if(type!=0)            // 1602 LCD  or 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_Test_init467
;main.c,835 :: 		led_wr_str (0, 3, "TEST MODE", 9);
	CLRF        FARG_led_wr_str+0 
	MOVLW       3
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr92_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr92_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_Test_init467:
L_Test_init466:
;main.c,836 :: 		asm CLRWDT;
	CLRWDT
;main.c,837 :: 		Delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_Test_init468:
	DECFSZ      R13, 1, 1
	BRA         L_Test_init468
	DECFSZ      R12, 1, 1
	BRA         L_Test_init468
	DECFSZ      R11, 1, 1
	BRA         L_Test_init468
	NOP
	NOP
;main.c,838 :: 		asm CLRWDT;
	CLRWDT
;main.c,839 :: 		Delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_Test_init469:
	DECFSZ      R13, 1, 1
	BRA         L_Test_init469
	DECFSZ      R12, 1, 1
	BRA         L_Test_init469
	DECFSZ      R11, 1, 1
	BRA         L_Test_init469
	NOP
	NOP
;main.c,840 :: 		asm CLRWDT;
	CLRWDT
;main.c,841 :: 		Delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_Test_init470:
	DECFSZ      R13, 1, 1
	BRA         L_Test_init470
	DECFSZ      R12, 1, 1
	BRA         L_Test_init470
	DECFSZ      R11, 1, 1
	BRA         L_Test_init470
	NOP
	NOP
;main.c,842 :: 		asm CLRWDT;
	CLRWDT
;main.c,843 :: 		Delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_Test_init471:
	DECFSZ      R13, 1, 1
	BRA         L_Test_init471
	DECFSZ      R12, 1, 1
	BRA         L_Test_init471
	DECFSZ      R11, 1, 1
	BRA         L_Test_init471
	NOP
	NOP
;main.c,844 :: 		asm CLRWDT;
	CLRWDT
;main.c,845 :: 		if(type==4 | type==5)        // 128*64 OLED
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_Test_init472
;main.c,846 :: 		led_wr_str (0, 10, "         ", 9);
	CLRF        FARG_led_wr_str+0 
	MOVLW       10
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr93_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr93_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_Test_init473
L_Test_init472:
;main.c,847 :: 		else if(type!=0)            // 1602 LCD  or 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_Test_init474
;main.c,848 :: 		led_wr_str (0, 3,  "         ", 9);
	CLRF        FARG_led_wr_str+0 
	MOVLW       3
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr94_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr94_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_Test_init474:
L_Test_init473:
;main.c,849 :: 		atu_reset();
	CALL        _atu_reset+0, 0
;main.c,850 :: 		SW = 1; // C to OUT
	MOVLW       1
	MOVWF       main_SW+0 
;main.c,851 :: 		set_sw(SW);
	MOVLW       1
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
;main.c,852 :: 		EEPROM_Write(255, cap);
	MOVLW       255
	MOVWF       FARG_EEPROM_Write_address+0 
	MOVF        main_cap+0, 0 
	MOVWF       FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,853 :: 		EEPROM_Write(254, ind);
	MOVLW       254
	MOVWF       FARG_EEPROM_Write_address+0 
	MOVF        main_ind+0, 0 
	MOVWF       FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,854 :: 		EEPROM_Write(253, SW);
	MOVLW       253
	MOVWF       FARG_EEPROM_Write_address+0 
	MOVF        main_SW+0, 0 
	MOVWF       FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,856 :: 		if(type==4 | type==5)        // 128*64 OLED
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_Test_init475
;main.c,857 :: 		led_wr_str (0, 16+12*8, "l", 1);
	CLRF        FARG_led_wr_str+0 
	MOVLW       112
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr95_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr95_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_Test_init476
L_Test_init475:
;main.c,858 :: 		else if(type!=0)             // 1602 LCD or 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_Test_init477
;main.c,859 :: 		led_wr_str (0, 8, "l", 1);
	CLRF        FARG_led_wr_str+0 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr96_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr96_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_Test_init477:
L_Test_init476:
;main.c,861 :: 		lcd_prep_short = 1;
	MOVLW       1
	MOVWF       _lcd_prep_short+0 
;main.c,862 :: 		lcd_prep();
	CALL        _lcd_prep+0, 0
;main.c,863 :: 		return;
;main.c,864 :: 		}
L_end_Test_init:
	RETURN      0
; end of _Test_init

_cells_init:

;main.c,867 :: 		void cells_init(void) {
;main.c,869 :: 		asm CLRWDT;
	CLRWDT
;main.c,871 :: 		type = EEPROM_Read(1); // type of display
	MOVLW       1
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       _type+0 
;main.c,872 :: 		if(EEPROM_Read(2) == 1) Auto = 1;
	MOVLW       2
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_cells_init478
	MOVLW       1
	MOVWF       _Auto+0 
L_cells_init478:
;main.c,873 :: 		Rel_Del = Bcd2Dec(EEPROM_Read(3)); // Relay's Delay
	MOVLW       3
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	MOVWF       main_Rel_Del+0 
	MOVLW       0
	MOVWF       main_Rel_Del+1 
;main.c,874 :: 		Auto_delta = Bcd2Dec(EEPROM_Read(4)) * 10;  // Auto_delta
	MOVLW       4
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVLW       10
	MULWF       R0 
	MOVF        PRODL+0, 0 
	MOVWF       _Auto_delta+0 
	MOVF        PRODH+0, 0 
	MOVWF       _Auto_delta+1 
;main.c,875 :: 		min_for_start = Bcd2Dec(EEPROM_Read(5)) * 10; // P_min_for_start
	MOVLW       5
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVLW       10
	MULWF       R0 
	MOVF        PRODL+0, 0 
	MOVWF       main_min_for_start+0 
	MOVF        PRODH+0, 0 
	MOVWF       main_min_for_start+1 
;main.c,876 :: 		max_for_start = Bcd2Dec(EEPROM_Read(6)) * 10; // P_max_for_start
	MOVLW       6
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVLW       10
	MULWF       R0 
	MOVF        PRODL+0, 0 
	MOVWF       main_max_for_start+0 
	MOVF        PRODH+0, 0 
	MOVWF       main_max_for_start+1 
;main.c,879 :: 		max_swr = Bcd2Dec(EEPROM_Read(9)) * 10; // Max SWR
	MOVLW       9
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVLW       10
	MULWF       R0 
	MOVF        PRODL+0, 0 
	MOVWF       main_max_swr+0 
	MOVF        PRODH+0, 0 
	MOVWF       main_max_swr+1 
;main.c,880 :: 		L_q = EEPROM_Read(10);
	MOVLW       10
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_L_q+0 
;main.c,881 :: 		L_linear = EEPROM_Read(11);
	MOVLW       11
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_L_linear+0 
;main.c,882 :: 		C_q = EEPROM_Read(12);
	MOVLW       12
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_C_q+0 
;main.c,883 :: 		C_linear = EEPROM_Read(13);
	MOVLW       13
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_C_linear+0 
;main.c,884 :: 		D_correction = EEPROM_Read(14);
	MOVLW       14
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_D_correction+0 
;main.c,885 :: 		L_invert = EEPROM_Read(15);
	MOVLW       15
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_L_invert+0 
;main.c,887 :: 		asm CLRWDT;
	CLRWDT
;main.c,888 :: 		Ind1 =  Bcd2Dec(EEPROM_Read(16)) * 100 + Bcd2Dec(EEPROM_Read(17));  // Ind1
	MOVLW       16
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVLW       100
	MULWF       R0 
	MOVF        PRODL+0, 0 
	MOVWF       FLOC__cells_init+0 
	MOVF        PRODH+0, 0 
	MOVWF       FLOC__cells_init+1 
	MOVLW       17
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	ADDWF       FLOC__cells_init+0, 0 
	MOVWF       _Ind1+0 
	MOVLW       0
	ADDWFC      FLOC__cells_init+1, 0 
	MOVWF       _Ind1+1 
;main.c,889 :: 		Ind2 =  Bcd2Dec(EEPROM_Read(18)) * 100 + Bcd2Dec(EEPROM_Read(19));  // Ind2
	MOVLW       18
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVLW       100
	MULWF       R0 
	MOVF        PRODL+0, 0 
	MOVWF       FLOC__cells_init+0 
	MOVF        PRODH+0, 0 
	MOVWF       FLOC__cells_init+1 
	MOVLW       19
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	ADDWF       FLOC__cells_init+0, 0 
	MOVWF       _Ind2+0 
	MOVLW       0
	ADDWFC      FLOC__cells_init+1, 0 
	MOVWF       _Ind2+1 
;main.c,890 :: 		Ind3 =  Bcd2Dec(EEPROM_Read(20)) * 100 + Bcd2Dec(EEPROM_Read(21));  // Ind3
	MOVLW       20
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVLW       100
	MULWF       R0 
	MOVF        PRODL+0, 0 
	MOVWF       FLOC__cells_init+0 
	MOVF        PRODH+0, 0 
	MOVWF       FLOC__cells_init+1 
	MOVLW       21
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	ADDWF       FLOC__cells_init+0, 0 
	MOVWF       _Ind3+0 
	MOVLW       0
	ADDWFC      FLOC__cells_init+1, 0 
	MOVWF       _Ind3+1 
;main.c,891 :: 		Ind4 =  Bcd2Dec(EEPROM_Read(22)) * 100 + Bcd2Dec(EEPROM_Read(23));  // Ind4
	MOVLW       22
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVLW       100
	MULWF       R0 
	MOVF        PRODL+0, 0 
	MOVWF       FLOC__cells_init+0 
	MOVF        PRODH+0, 0 
	MOVWF       FLOC__cells_init+1 
	MOVLW       23
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	ADDWF       FLOC__cells_init+0, 0 
	MOVWF       _Ind4+0 
	MOVLW       0
	ADDWFC      FLOC__cells_init+1, 0 
	MOVWF       _Ind4+1 
;main.c,892 :: 		Ind5 =  Bcd2Dec(EEPROM_Read(24)) * 100 + Bcd2Dec(EEPROM_Read(25));  // Ind5
	MOVLW       24
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVLW       100
	MULWF       R0 
	MOVF        PRODL+0, 0 
	MOVWF       FLOC__cells_init+0 
	MOVF        PRODH+0, 0 
	MOVWF       FLOC__cells_init+1 
	MOVLW       25
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	ADDWF       FLOC__cells_init+0, 0 
	MOVWF       _Ind5+0 
	MOVLW       0
	ADDWFC      FLOC__cells_init+1, 0 
	MOVWF       _Ind5+1 
;main.c,893 :: 		Ind6 =  Bcd2Dec(EEPROM_Read(26)) * 100 + Bcd2Dec(EEPROM_Read(27));  // Ind6
	MOVLW       26
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVLW       100
	MULWF       R0 
	MOVF        PRODL+0, 0 
	MOVWF       FLOC__cells_init+0 
	MOVF        PRODH+0, 0 
	MOVWF       FLOC__cells_init+1 
	MOVLW       27
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	ADDWF       FLOC__cells_init+0, 0 
	MOVWF       _Ind6+0 
	MOVLW       0
	ADDWFC      FLOC__cells_init+1, 0 
	MOVWF       _Ind6+1 
;main.c,894 :: 		Ind7 =  Bcd2Dec(EEPROM_Read(28)) * 100 + Bcd2Dec(EEPROM_Read(29));  // Ind7
	MOVLW       28
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVLW       100
	MULWF       R0 
	MOVF        PRODL+0, 0 
	MOVWF       FLOC__cells_init+0 
	MOVF        PRODH+0, 0 
	MOVWF       FLOC__cells_init+1 
	MOVLW       29
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	ADDWF       FLOC__cells_init+0, 0 
	MOVWF       _Ind7+0 
	MOVLW       0
	ADDWFC      FLOC__cells_init+1, 0 
	MOVWF       _Ind7+1 
;main.c,895 :: 		Ind8 =  Bcd2Dec(EEPROM_Read(30)) * 100 + Bcd2Dec(EEPROM_Read(31));  // Ind8
	MOVLW       30
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVLW       100
	MULWF       R0 
	MOVF        PRODL+0, 0 
	MOVWF       FLOC__cells_init+0 
	MOVF        PRODH+0, 0 
	MOVWF       FLOC__cells_init+1 
	MOVLW       31
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	ADDWF       FLOC__cells_init+0, 0 
	MOVWF       _Ind8+0 
	MOVLW       0
	ADDWFC      FLOC__cells_init+1, 0 
	MOVWF       _Ind8+1 
;main.c,897 :: 		Cap1 =  Bcd2Dec(EEPROM_Read(32)) * 100 + Bcd2Dec(EEPROM_Read(33));  // Cap1
	MOVLW       32
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVLW       100
	MULWF       R0 
	MOVF        PRODL+0, 0 
	MOVWF       FLOC__cells_init+0 
	MOVF        PRODH+0, 0 
	MOVWF       FLOC__cells_init+1 
	MOVLW       33
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	ADDWF       FLOC__cells_init+0, 0 
	MOVWF       _Cap1+0 
	MOVLW       0
	ADDWFC      FLOC__cells_init+1, 0 
	MOVWF       _Cap1+1 
;main.c,898 :: 		Cap2 =  Bcd2Dec(EEPROM_Read(34)) * 100 + Bcd2Dec(EEPROM_Read(35));  // Cap2
	MOVLW       34
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVLW       100
	MULWF       R0 
	MOVF        PRODL+0, 0 
	MOVWF       FLOC__cells_init+0 
	MOVF        PRODH+0, 0 
	MOVWF       FLOC__cells_init+1 
	MOVLW       35
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	ADDWF       FLOC__cells_init+0, 0 
	MOVWF       _Cap2+0 
	MOVLW       0
	ADDWFC      FLOC__cells_init+1, 0 
	MOVWF       _Cap2+1 
;main.c,899 :: 		Cap3 =  Bcd2Dec(EEPROM_Read(36)) * 100 + Bcd2Dec(EEPROM_Read(37));  // Cap3
	MOVLW       36
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVLW       100
	MULWF       R0 
	MOVF        PRODL+0, 0 
	MOVWF       FLOC__cells_init+0 
	MOVF        PRODH+0, 0 
	MOVWF       FLOC__cells_init+1 
	MOVLW       37
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	ADDWF       FLOC__cells_init+0, 0 
	MOVWF       _Cap3+0 
	MOVLW       0
	ADDWFC      FLOC__cells_init+1, 0 
	MOVWF       _Cap3+1 
;main.c,900 :: 		Cap4 =  Bcd2Dec(EEPROM_Read(38)) * 100 + Bcd2Dec(EEPROM_Read(39));  // Cap4
	MOVLW       38
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVLW       100
	MULWF       R0 
	MOVF        PRODL+0, 0 
	MOVWF       FLOC__cells_init+0 
	MOVF        PRODH+0, 0 
	MOVWF       FLOC__cells_init+1 
	MOVLW       39
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	ADDWF       FLOC__cells_init+0, 0 
	MOVWF       _Cap4+0 
	MOVLW       0
	ADDWFC      FLOC__cells_init+1, 0 
	MOVWF       _Cap4+1 
;main.c,901 :: 		Cap5 =  Bcd2Dec(EEPROM_Read(40)) * 100 + Bcd2Dec(EEPROM_Read(41));  // Cap5
	MOVLW       40
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVLW       100
	MULWF       R0 
	MOVF        PRODL+0, 0 
	MOVWF       FLOC__cells_init+0 
	MOVF        PRODH+0, 0 
	MOVWF       FLOC__cells_init+1 
	MOVLW       41
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	ADDWF       FLOC__cells_init+0, 0 
	MOVWF       _Cap5+0 
	MOVLW       0
	ADDWFC      FLOC__cells_init+1, 0 
	MOVWF       _Cap5+1 
;main.c,902 :: 		Cap6 =  Bcd2Dec(EEPROM_Read(42)) * 100 + Bcd2Dec(EEPROM_Read(43));  // Cap6
	MOVLW       42
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVLW       100
	MULWF       R0 
	MOVF        PRODL+0, 0 
	MOVWF       FLOC__cells_init+0 
	MOVF        PRODH+0, 0 
	MOVWF       FLOC__cells_init+1 
	MOVLW       43
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	ADDWF       FLOC__cells_init+0, 0 
	MOVWF       _Cap6+0 
	MOVLW       0
	ADDWFC      FLOC__cells_init+1, 0 
	MOVWF       _Cap6+1 
;main.c,903 :: 		Cap7 =  Bcd2Dec(EEPROM_Read(44)) * 100 + Bcd2Dec(EEPROM_Read(45));  // Cap7
	MOVLW       44
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVLW       100
	MULWF       R0 
	MOVF        PRODL+0, 0 
	MOVWF       FLOC__cells_init+0 
	MOVF        PRODH+0, 0 
	MOVWF       FLOC__cells_init+1 
	MOVLW       45
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	ADDWF       FLOC__cells_init+0, 0 
	MOVWF       _Cap7+0 
	MOVLW       0
	ADDWFC      FLOC__cells_init+1, 0 
	MOVWF       _Cap7+1 
;main.c,905 :: 		P_High = EEPROM_Read(0x30);  // High power
	MOVLW       48
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_P_High+0 
;main.c,906 :: 		K_Mult = Bcd2Dec(EEPROM_Read(0x31)); // Tandem Match rate
	MOVLW       49
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	MOVWF       main_K_Mult+0 
;main.c,907 :: 		Dysp_delay = Bcd2Dec(EEPROM_Read(0x32)); // Dysplay ON delay
	MOVLW       50
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	MOVWF       _Dysp_delay+0 
;main.c,908 :: 		Loss_ind = EEPROM_Read(0x33);
	MOVLW       51
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_Loss_ind+0 
;main.c,909 :: 		Fid_loss = Bcd2Dec(EEPROM_Read(0x34));
	MOVLW       52
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	MOVWF       _Fid_loss+0 
;main.c,910 :: 		Relay_off = Bcd2Dec(EEPROM_Read(0x35));
	MOVLW       53
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	MOVWF       main_Relay_off+0 
;main.c,911 :: 		asm CLRWDT;
	CLRWDT
;main.c,912 :: 		return;
;main.c,914 :: 		}
L_end_cells_init:
	RETURN      0
; end of _cells_init

_show_loss:

;main.c,916 :: 		void show_loss(void) {
;main.c,917 :: 		IntToStr(Fid_loss, work_str);
	MOVF        _Fid_loss+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVLW       0
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,918 :: 		if(Fid_loss>=10) work_str_2[0] = work_str[4];
	MOVLW       10
	SUBWF       _Fid_loss+0, 0 
	BTFSS       STATUS+0, 0 
	GOTO        L_show_loss479
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+0 
	GOTO        L_show_loss480
L_show_loss479:
;main.c,919 :: 		else work_str_2[0] = '0';
	MOVLW       48
	MOVWF       _work_str_2+0 
L_show_loss480:
;main.c,920 :: 		work_str_2[1] = '.';
	MOVLW       46
	MOVWF       _work_str_2+1 
;main.c,921 :: 		work_str_2[2] = work_str[5];
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+2 
;main.c,922 :: 		if(type==4 | type==5) led_wr_str (4, 6, work_str_2, 3); // 128*64
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_show_loss481
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	MOVLW       6
	MOVWF       FARG_led_wr_str+0 
	MOVLW       _work_str_2+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(_work_str_2+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       3
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_show_loss482
L_show_loss481:
;main.c,923 :: 		else if(type!=0) led_wr_str (1, 0, work_str_2, 3); // 1602 | 128*32
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_show_loss483
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CLRF        FARG_led_wr_str+0 
	MOVLW       _work_str_2+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(_work_str_2+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       3
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_show_loss483:
L_show_loss482:
;main.c,924 :: 		return;
;main.c,925 :: 		}
L_end_show_loss:
	RETURN      0
; end of _show_loss
