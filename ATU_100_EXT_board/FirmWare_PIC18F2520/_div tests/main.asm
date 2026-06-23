
_correction:

;main.h,44 :: 		int correction(int input) {
;main.h,45 :: 		if(input <= 80) return 0;
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction497
	MOVF        FARG_correction_input+0, 0 
	SUBLW       80
L__correction497:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction0
	CLRF        R0 
	CLRF        R1 
	GOTO        L_end_correction
L_correction0:
;main.h,46 :: 		if(input <= 171) input += 244;
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction498
	MOVF        FARG_correction_input+0, 0 
	SUBLW       171
L__correction498:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction1
	MOVLW       244
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       0
	ADDWFC      FARG_correction_input+1, 1 
	GOTO        L_correction2
L_correction1:
;main.h,47 :: 		else if(input <= 328) input += 254;
	MOVLW       128
	XORLW       1
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction499
	MOVF        FARG_correction_input+0, 0 
	SUBLW       72
L__correction499:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction3
	MOVLW       254
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       0
	ADDWFC      FARG_correction_input+1, 1 
	GOTO        L_correction4
L_correction3:
;main.h,48 :: 		else if(input <= 582) input += 280;
	MOVLW       128
	XORLW       2
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction500
	MOVF        FARG_correction_input+0, 0 
	SUBLW       70
L__correction500:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction5
	MOVLW       24
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       1
	ADDWFC      FARG_correction_input+1, 1 
	GOTO        L_correction6
L_correction5:
;main.h,49 :: 		else if(input <= 820) input += 297;
	MOVLW       128
	XORLW       3
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction501
	MOVF        FARG_correction_input+0, 0 
	SUBLW       52
L__correction501:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction7
	MOVLW       41
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       1
	ADDWFC      FARG_correction_input+1, 1 
	GOTO        L_correction8
L_correction7:
;main.h,50 :: 		else if(input <= 1100) input += 310;
	MOVLW       128
	XORLW       4
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction502
	MOVF        FARG_correction_input+0, 0 
	SUBLW       76
L__correction502:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction9
	MOVLW       54
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       1
	ADDWFC      FARG_correction_input+1, 1 
	GOTO        L_correction10
L_correction9:
;main.h,51 :: 		else if(input <= 2181) input += 430;
	MOVLW       128
	XORLW       8
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction503
	MOVF        FARG_correction_input+0, 0 
	SUBLW       133
L__correction503:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction11
	MOVLW       174
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       1
	ADDWFC      FARG_correction_input+1, 1 
	GOTO        L_correction12
L_correction11:
;main.h,52 :: 		else if(input <= 3322) input += 484;
	MOVLW       128
	XORLW       12
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction504
	MOVF        FARG_correction_input+0, 0 
	SUBLW       250
L__correction504:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction13
	MOVLW       228
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       1
	ADDWFC      FARG_correction_input+1, 1 
	GOTO        L_correction14
L_correction13:
;main.h,53 :: 		else if(input <= 4623) input += 530;
	MOVLW       128
	XORLW       18
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction505
	MOVF        FARG_correction_input+0, 0 
	SUBLW       15
L__correction505:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction15
	MOVLW       18
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       2
	ADDWFC      FARG_correction_input+1, 1 
	GOTO        L_correction16
L_correction15:
;main.h,54 :: 		else if(input <= 5862) input += 648;
	MOVLW       128
	XORLW       22
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction506
	MOVF        FARG_correction_input+0, 0 
	SUBLW       230
L__correction506:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction17
	MOVLW       136
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       2
	ADDWFC      FARG_correction_input+1, 1 
	GOTO        L_correction18
L_correction17:
;main.h,55 :: 		else if(input <= 7146) input += 743;
	MOVLW       128
	XORLW       27
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction507
	MOVF        FARG_correction_input+0, 0 
	SUBLW       234
L__correction507:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction19
	MOVLW       231
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       2
	ADDWFC      FARG_correction_input+1, 1 
	GOTO        L_correction20
L_correction19:
;main.h,56 :: 		else if(input <= 8502) input += 800;
	MOVLW       128
	XORLW       33
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction508
	MOVF        FARG_correction_input+0, 0 
	SUBLW       54
L__correction508:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction21
	MOVLW       32
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       3
	ADDWFC      FARG_correction_input+1, 1 
	GOTO        L_correction22
L_correction21:
;main.h,57 :: 		else if(input <= 10500) input += 840;
	MOVLW       128
	XORLW       41
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction509
	MOVF        FARG_correction_input+0, 0 
	SUBLW       4
L__correction509:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction23
	MOVLW       72
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       3
	ADDWFC      FARG_correction_input+1, 1 
	GOTO        L_correction24
L_correction23:
;main.h,58 :: 		else  input += 860;
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
;main.h,60 :: 		return input;
	MOVF        FARG_correction_input+0, 0 
	MOVWF       R0 
	MOVF        FARG_correction_input+1, 0 
	MOVWF       R1 
;main.h,61 :: 		}
L_end_correction:
	RETURN      0
; end of _correction

_get_reverse:

;main.h,65 :: 		int get_reverse() {
;main.h,66 :: 		return ADC_Get_Sample(1) * 4.883;
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
;main.h,67 :: 		}
L_end_get_reverse:
	RETURN      0
; end of _get_reverse

_get_forward:

;main.h,70 :: 		int get_forward() {
;main.h,72 :: 		Forward = ADC_Get_Sample(0);
	CLRF        FARG_ADC_Get_Sample_channel+0 
	CALL        _ADC_Get_Sample+0, 0
	MOVF        R0, 0 
	MOVWF       get_forward_Forward_L0+0 
	MOVF        R1, 0 
	MOVWF       get_forward_Forward_L0+1 
;main.h,73 :: 		if(Forward > 1000) Overload = 1;
	MOVLW       128
	XORLW       3
	MOVWF       R2 
	MOVLW       128
	XORWF       R1, 0 
	SUBWF       R2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_forward512
	MOVF        R0, 0 
	SUBLW       232
L__get_forward512:
	BTFSC       STATUS+0, 0 
	GOTO        L_get_forward25
	MOVLW       1
	MOVWF       main_Overload+0 
	GOTO        L_get_forward26
L_get_forward25:
;main.h,74 :: 		else Overload = 0;
	CLRF        main_Overload+0 
L_get_forward26:
;main.h,75 :: 		return Forward * 4.883;
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
;main.h,76 :: 		}
L_end_get_forward:
	RETURN      0
; end of _get_forward

_get_pwr:

;main.h,78 :: 		void get_pwr() {
;main.h,81 :: 		asm CLRWDT;
	CLRWDT
;main.h,83 :: 		Forward = get_forward();
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
;main.h,84 :: 		Reverse = get_reverse();
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
;main.h,85 :: 		if(D_correction==1) p = correction(Forward * 3);
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
;main.h,86 :: 		else p = Forward * 3;
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
;main.h,88 :: 		if(Reverse >= Forward)
	MOVLW       128
	XORWF       get_pwr_Reverse_L0+3, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       get_pwr_Forward_L0+3, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_pwr514
	MOVF        get_pwr_Forward_L0+2, 0 
	SUBWF       get_pwr_Reverse_L0+2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_pwr514
	MOVF        get_pwr_Forward_L0+1, 0 
	SUBWF       get_pwr_Reverse_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_pwr514
	MOVF        get_pwr_Forward_L0+0, 0 
	SUBWF       get_pwr_Reverse_L0+0, 0 
L__get_pwr514:
	BTFSS       STATUS+0, 0 
	GOTO        L_get_pwr29
;main.h,89 :: 		Forward = 999;
	MOVLW       231
	MOVWF       get_pwr_Forward_L0+0 
	MOVLW       3
	MOVWF       get_pwr_Forward_L0+1 
	MOVLW       0
	MOVWF       get_pwr_Forward_L0+2 
	MOVWF       get_pwr_Forward_L0+3 
	GOTO        L_get_pwr30
L_get_pwr29:
;main.h,91 :: 		Forward = ((Forward + Reverse) * 100) / (Forward - Reverse);
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
;main.h,92 :: 		if(Forward>999) Forward = 999;
	MOVLW       128
	MOVWF       R4 
	MOVLW       128
	XORWF       R3, 0 
	SUBWF       R4, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_pwr515
	MOVF        R2, 0 
	SUBLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__get_pwr515
	MOVF        R1, 0 
	SUBLW       3
	BTFSS       STATUS+0, 2 
	GOTO        L__get_pwr515
	MOVF        R0, 0 
	SUBLW       231
L__get_pwr515:
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
;main.h,93 :: 		}
L_get_pwr30:
;main.h,95 :: 		p = p * K_Mult / 1000.0;   // mV to Volts on Input
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
;main.h,96 :: 		p = p / 1.414;
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
;main.h,97 :: 		if(P_High==1) p = p * p / 50;     // 0 - 1500 ( 1500 Watts)
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
;main.h,98 :: 		else p = p * p / 5;               // 0 - 1510 (151.0 Watts)
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
;main.h,99 :: 		p = p + 0.5;    // rounding
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
;main.h,101 :: 		PWR = p;
	CALL        _double2int+0, 0
	MOVF        R0, 0 
	MOVWF       _PWR+0 
	MOVF        R1, 0 
	MOVWF       _PWR+1 
;main.h,102 :: 		if(Forward<100) SWR = 999;
	MOVLW       128
	XORWF       get_pwr_Forward_L0+3, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_pwr516
	MOVLW       0
	SUBWF       get_pwr_Forward_L0+2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_pwr516
	MOVLW       0
	SUBWF       get_pwr_Forward_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_pwr516
	MOVLW       100
	SUBWF       get_pwr_Forward_L0+0, 0 
L__get_pwr516:
	BTFSC       STATUS+0, 0 
	GOTO        L_get_pwr34
	MOVLW       231
	MOVWF       _SWR+0 
	MOVLW       3
	MOVWF       _SWR+1 
	GOTO        L_get_pwr35
L_get_pwr34:
;main.h,103 :: 		else SWR = Forward;
	MOVF        get_pwr_Forward_L0+0, 0 
	MOVWF       _SWR+0 
	MOVF        get_pwr_Forward_L0+1, 0 
	MOVWF       _SWR+1 
L_get_pwr35:
;main.h,104 :: 		return;
;main.h,105 :: 		}
L_end_get_pwr:
	RETURN      0
; end of _get_pwr

_get_swr:

;main.h,107 :: 		void get_swr() {
;main.h,108 :: 		get_pwr();
	CALL        _get_pwr+0, 0
;main.h,109 :: 		if(p_cnt!=100) {
	MOVF        _p_cnt+0, 0 
	XORLW       100
	BTFSC       STATUS+0, 2 
	GOTO        L_get_swr36
;main.h,110 :: 		p_cnt += 1;
	INCF        _p_cnt+0, 1 
;main.h,111 :: 		if(PWR>P_max) P_max = PWR;
	MOVLW       128
	XORWF       _P_max+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       _PWR+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_swr518
	MOVF        _PWR+0, 0 
	SUBWF       _P_max+0, 0 
L__get_swr518:
	BTFSC       STATUS+0, 0 
	GOTO        L_get_swr37
	MOVF        _PWR+0, 0 
	MOVWF       _P_max+0 
	MOVF        _PWR+1, 0 
	MOVWF       _P_max+1 
L_get_swr37:
;main.h,112 :: 		}
	GOTO        L_get_swr38
L_get_swr36:
;main.h,114 :: 		p_cnt = 0;
	CLRF        _p_cnt+0 
;main.h,115 :: 		show_pwr(P_max, SWR);
	MOVF        _P_max+0, 0 
	MOVWF       FARG_show_pwr+0 
	MOVF        _P_max+1, 0 
	MOVWF       FARG_show_pwr+1 
	MOVF        _SWR+0, 0 
	MOVWF       FARG_show_pwr+0 
	MOVF        _SWR+1, 0 
	MOVWF       FARG_show_pwr+1 
	CALL        _show_pwr+0, 0
;main.h,116 :: 		P_max = 0;
	CLRF        _P_max+0 
	CLRF        _P_max+1 
;main.h,117 :: 		}
L_get_swr38:
;main.h,118 :: 		while(PWR<min_for_start | (PWR> max_for_start & max_for_start>0)) {  // waiting for good power
L_get_swr39:
	MOVLW       128
	XORWF       _PWR+1, 0 
	MOVWF       R2 
	MOVLW       128
	XORWF       main_min_for_start+1, 0 
	SUBWF       R2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_swr519
	MOVF        main_min_for_start+0, 0 
	SUBWF       _PWR+0, 0 
L__get_swr519:
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
	GOTO        L__get_swr520
	MOVF        _PWR+0, 0 
	SUBWF       main_max_for_start+0, 0 
L__get_swr520:
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
	GOTO        L__get_swr521
	MOVF        main_max_for_start+0, 0 
	SUBLW       0
L__get_swr521:
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
;main.h,119 :: 		asm CLRWDT;
	CLRWDT
;main.h,120 :: 		get_pwr();
	CALL        _get_pwr+0, 0
;main.h,121 :: 		if(p_cnt!=100) {
	MOVF        _p_cnt+0, 0 
	XORLW       100
	BTFSC       STATUS+0, 2 
	GOTO        L_get_swr41
;main.h,122 :: 		p_cnt += 1;
	INCF        _p_cnt+0, 1 
;main.h,123 :: 		if(PWR>P_max) P_max = PWR;
	MOVLW       128
	XORWF       _P_max+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       _PWR+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_swr522
	MOVF        _PWR+0, 0 
	SUBWF       _P_max+0, 0 
L__get_swr522:
	BTFSC       STATUS+0, 0 
	GOTO        L_get_swr42
	MOVF        _PWR+0, 0 
	MOVWF       _P_max+0 
	MOVF        _PWR+1, 0 
	MOVWF       _P_max+1 
L_get_swr42:
;main.h,124 :: 		}
	GOTO        L_get_swr43
L_get_swr41:
;main.h,126 :: 		p_cnt = 0;
	CLRF        _p_cnt+0 
;main.h,127 :: 		show_pwr(P_max, SWR);
	MOVF        _P_max+0, 0 
	MOVWF       FARG_show_pwr+0 
	MOVF        _P_max+1, 0 
	MOVWF       FARG_show_pwr+1 
	MOVF        _SWR+0, 0 
	MOVWF       FARG_show_pwr+0 
	MOVF        _SWR+1, 0 
	MOVWF       FARG_show_pwr+1 
	CALL        _show_pwr+0, 0
;main.h,128 :: 		P_max = 0;
	CLRF        _P_max+0 
	CLRF        _P_max+1 
;main.h,129 :: 		}
L_get_swr43:
;main.h,131 :: 		if(Button(&PORTB, 0, 5, 1)) rready = 1;
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
;main.h,132 :: 		if(rready==1 & Button(&PORTB, 0, 5, 0)) { //  press button  Tune
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
;main.h,133 :: 		show_reset();
	CALL        _show_reset+0, 0
;main.h,134 :: 		SWR = 0;
	CLRF        _SWR+0 
	CLRF        _SWR+1 
;main.h,135 :: 		return;
	GOTO        L_end_get_swr
;main.h,136 :: 		}
L_get_swr45:
;main.h,137 :: 		} //  good power
	GOTO        L_get_swr39
L_get_swr40:
;main.h,138 :: 		return;
;main.h,139 :: 		}
L_end_get_swr:
	RETURN      0
; end of _get_swr

_set_ind:

;main.h,141 :: 		void set_ind(char Ind) {  // 0 - 31
;main.h,142 :: 		if(L_invert == 0) {
	MOVF        main_L_invert+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_set_ind46
;main.h,143 :: 		Ind_005 = Ind.B0;
	BTFSC       FARG_set_ind_Ind+0, 0 
	GOTO        L__set_ind524
	BCF         LATC0_bit+0, BitPos(LATC0_bit+0) 
	GOTO        L__set_ind525
L__set_ind524:
	BSF         LATC0_bit+0, BitPos(LATC0_bit+0) 
L__set_ind525:
;main.h,144 :: 		Ind_011 = Ind.B1;
	BTFSC       FARG_set_ind_Ind+0, 1 
	GOTO        L__set_ind526
	BCF         LATC1_bit+0, BitPos(LATC1_bit+0) 
	GOTO        L__set_ind527
L__set_ind526:
	BSF         LATC1_bit+0, BitPos(LATC1_bit+0) 
L__set_ind527:
;main.h,145 :: 		Ind_022 = Ind.B2;
	BTFSC       FARG_set_ind_Ind+0, 2 
	GOTO        L__set_ind528
	BCF         LATC2_bit+0, BitPos(LATC2_bit+0) 
	GOTO        L__set_ind529
L__set_ind528:
	BSF         LATC2_bit+0, BitPos(LATC2_bit+0) 
L__set_ind529:
;main.h,146 :: 		Ind_045 = Ind.B3;
	BTFSC       FARG_set_ind_Ind+0, 3 
	GOTO        L__set_ind530
	BCF         LATC3_bit+0, BitPos(LATC3_bit+0) 
	GOTO        L__set_ind531
L__set_ind530:
	BSF         LATC3_bit+0, BitPos(LATC3_bit+0) 
L__set_ind531:
;main.h,147 :: 		Ind_1   = Ind.B4;
	BTFSC       FARG_set_ind_Ind+0, 4 
	GOTO        L__set_ind532
	BCF         LATC4_bit+0, BitPos(LATC4_bit+0) 
	GOTO        L__set_ind533
L__set_ind532:
	BSF         LATC4_bit+0, BitPos(LATC4_bit+0) 
L__set_ind533:
;main.h,148 :: 		Ind_22  = Ind.B5;
	BTFSC       FARG_set_ind_Ind+0, 5 
	GOTO        L__set_ind534
	BCF         LATC5_bit+0, BitPos(LATC5_bit+0) 
	GOTO        L__set_ind535
L__set_ind534:
	BSF         LATC5_bit+0, BitPos(LATC5_bit+0) 
L__set_ind535:
;main.h,149 :: 		Ind_45  = Ind.B6;
	BTFSC       FARG_set_ind_Ind+0, 6 
	GOTO        L__set_ind536
	BCF         LATA5_bit+0, BitPos(LATA5_bit+0) 
	GOTO        L__set_ind537
L__set_ind536:
	BSF         LATA5_bit+0, BitPos(LATA5_bit+0) 
L__set_ind537:
;main.h,151 :: 		}
	GOTO        L_set_ind47
L_set_ind46:
;main.h,153 :: 		Ind_005 = ~Ind.B0;
	BTFSC       FARG_set_ind_Ind+0, 0 
	GOTO        L__set_ind538
	BSF         LATC0_bit+0, BitPos(LATC0_bit+0) 
	GOTO        L__set_ind539
L__set_ind538:
	BCF         LATC0_bit+0, BitPos(LATC0_bit+0) 
L__set_ind539:
;main.h,154 :: 		Ind_011 = ~Ind.B1;
	BTFSC       FARG_set_ind_Ind+0, 1 
	GOTO        L__set_ind540
	BSF         LATC1_bit+0, BitPos(LATC1_bit+0) 
	GOTO        L__set_ind541
L__set_ind540:
	BCF         LATC1_bit+0, BitPos(LATC1_bit+0) 
L__set_ind541:
;main.h,155 :: 		Ind_022 = ~Ind.B2;
	BTFSC       FARG_set_ind_Ind+0, 2 
	GOTO        L__set_ind542
	BSF         LATC2_bit+0, BitPos(LATC2_bit+0) 
	GOTO        L__set_ind543
L__set_ind542:
	BCF         LATC2_bit+0, BitPos(LATC2_bit+0) 
L__set_ind543:
;main.h,156 :: 		Ind_045 = ~Ind.B3;
	BTFSC       FARG_set_ind_Ind+0, 3 
	GOTO        L__set_ind544
	BSF         LATC3_bit+0, BitPos(LATC3_bit+0) 
	GOTO        L__set_ind545
L__set_ind544:
	BCF         LATC3_bit+0, BitPos(LATC3_bit+0) 
L__set_ind545:
;main.h,157 :: 		Ind_1   = ~Ind.B4;
	BTFSC       FARG_set_ind_Ind+0, 4 
	GOTO        L__set_ind546
	BSF         LATC4_bit+0, BitPos(LATC4_bit+0) 
	GOTO        L__set_ind547
L__set_ind546:
	BCF         LATC4_bit+0, BitPos(LATC4_bit+0) 
L__set_ind547:
;main.h,158 :: 		Ind_22  = ~Ind.B5;
	BTFSC       FARG_set_ind_Ind+0, 5 
	GOTO        L__set_ind548
	BSF         LATC5_bit+0, BitPos(LATC5_bit+0) 
	GOTO        L__set_ind549
L__set_ind548:
	BCF         LATC5_bit+0, BitPos(LATC5_bit+0) 
L__set_ind549:
;main.h,159 :: 		Ind_45  = ~Ind.B6;
	BTFSC       FARG_set_ind_Ind+0, 6 
	GOTO        L__set_ind550
	BSF         LATA5_bit+0, BitPos(LATA5_bit+0) 
	GOTO        L__set_ind551
L__set_ind550:
	BCF         LATA5_bit+0, BitPos(LATA5_bit+0) 
L__set_ind551:
;main.h,161 :: 		}
L_set_ind47:
;main.h,162 :: 		Vdelay_ms(Rel_Del);
	MOVF        main_Rel_Del+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        main_Rel_Del+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;main.h,163 :: 		}
L_end_set_ind:
	RETURN      0
; end of _set_ind

_set_cap:

;main.h,165 :: 		void set_cap(char Cap) { // 0 - 31
;main.h,166 :: 		Cap_10  =  Cap.B0;
	BTFSC       FARG_set_cap_Cap+0, 0 
	GOTO        L__set_cap553
	BCF         LATB1_bit+0, BitPos(LATB1_bit+0) 
	GOTO        L__set_cap554
L__set_cap553:
	BSF         LATB1_bit+0, BitPos(LATB1_bit+0) 
L__set_cap554:
;main.h,167 :: 		Cap_22  =  Cap.B1;
	BTFSC       FARG_set_cap_Cap+0, 1 
	GOTO        L__set_cap555
	BCF         LATB2_bit+0, BitPos(LATB2_bit+0) 
	GOTO        L__set_cap556
L__set_cap555:
	BSF         LATB2_bit+0, BitPos(LATB2_bit+0) 
L__set_cap556:
;main.h,168 :: 		Cap_47  =  Cap.B2;
	BTFSC       FARG_set_cap_Cap+0, 2 
	GOTO        L__set_cap557
	BCF         LATB3_bit+0, BitPos(LATB3_bit+0) 
	GOTO        L__set_cap558
L__set_cap557:
	BSF         LATB3_bit+0, BitPos(LATB3_bit+0) 
L__set_cap558:
;main.h,169 :: 		Cap_100 =  Cap.B3;
	BTFSC       FARG_set_cap_Cap+0, 3 
	GOTO        L__set_cap559
	BCF         LATB4_bit+0, BitPos(LATB4_bit+0) 
	GOTO        L__set_cap560
L__set_cap559:
	BSF         LATB4_bit+0, BitPos(LATB4_bit+0) 
L__set_cap560:
;main.h,170 :: 		Cap_220 =  Cap.B4;
	BTFSC       FARG_set_cap_Cap+0, 4 
	GOTO        L__set_cap561
	BCF         LATB5_bit+0, BitPos(LATB5_bit+0) 
	GOTO        L__set_cap562
L__set_cap561:
	BSF         LATB5_bit+0, BitPos(LATB5_bit+0) 
L__set_cap562:
;main.h,171 :: 		Cap_470 =  Cap.B5;
	BTFSC       FARG_set_cap_Cap+0, 5 
	GOTO        L__set_cap563
	BCF         LATB6_bit+0, BitPos(LATB6_bit+0) 
	GOTO        L__set_cap564
L__set_cap563:
	BSF         LATB6_bit+0, BitPos(LATB6_bit+0) 
L__set_cap564:
;main.h,172 :: 		Cap_1000 =  Cap.B6;
	BTFSC       FARG_set_cap_Cap+0, 6 
	GOTO        L__set_cap565
	BCF         LATB7_bit+0, BitPos(LATB7_bit+0) 
	GOTO        L__set_cap566
L__set_cap565:
	BSF         LATB7_bit+0, BitPos(LATB7_bit+0) 
L__set_cap566:
;main.h,174 :: 		Vdelay_ms(Rel_Del);
	MOVF        main_Rel_Del+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        main_Rel_Del+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;main.h,175 :: 		}
L_end_set_cap:
	RETURN      0
; end of _set_cap

_set_sw:

;main.h,177 :: 		void set_sw(char SW) {  // 0 - IN,  1 - OUT
;main.h,178 :: 		Cap_sw = SW;
	BTFSC       FARG_set_sw_SW+0, 0 
	GOTO        L__set_sw568
	BCF         LATA7_bit+0, BitPos(LATA7_bit+0) 
	GOTO        L__set_sw569
L__set_sw568:
	BSF         LATA7_bit+0, BitPos(LATA7_bit+0) 
L__set_sw569:
;main.h,179 :: 		Vdelay_ms(Rel_Del);
	MOVF        main_Rel_Del+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        main_Rel_Del+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;main.h,180 :: 		}
L_end_set_sw:
	RETURN      0
; end of _set_sw

_atu_reset:

;main.h,182 :: 		void atu_reset() {
;main.h,183 :: 		ind = 0;
	CLRF        main_ind+0 
;main.h,184 :: 		cap = 0;
	CLRF        main_cap+0 
;main.h,185 :: 		set_ind(ind);
	CLRF        FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.h,186 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,187 :: 		Vdelay_ms(Rel_Del);
	MOVF        main_Rel_Del+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        main_Rel_Del+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;main.h,188 :: 		}
L_end_atu_reset:
	RETURN      0
; end of _atu_reset

_coarse_cap:

;main.h,191 :: 		void coarse_cap() {
;main.h,192 :: 		char step = 3;
	MOVLW       3
	MOVWF       coarse_cap_step_L0+0 
;main.h,196 :: 		cap = 0;
	CLRF        main_cap+0 
;main.h,197 :: 		set_cap(cap);
	CLRF        FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,198 :: 		step_cap = step;
	MOVF        coarse_cap_step_L0+0, 0 
	MOVWF       main_step_cap+0 
;main.h,199 :: 		get_swr(); if(SWR==0) return;
	CALL        _get_swr+0, 0
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coarse_cap572
	MOVLW       0
	XORWF       _SWR+0, 0 
L__coarse_cap572:
	BTFSS       STATUS+0, 2 
	GOTO        L_coarse_cap48
	GOTO        L_end_coarse_cap
L_coarse_cap48:
;main.h,200 :: 		min_swr = SWR + SWR/20;
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
;main.h,201 :: 		for(count=step; count<=31;) {
	MOVF        coarse_cap_step_L0+0, 0 
	MOVWF       coarse_cap_count_L0+0 
L_coarse_cap49:
	MOVF        coarse_cap_count_L0+0, 0 
	SUBLW       31
	BTFSS       STATUS+0, 0 
	GOTO        L_coarse_cap50
;main.h,202 :: 		set_cap(count*C_mult);
	MOVF        coarse_cap_count_L0+0, 0 
	MULWF       main_C_mult+0 
	MOVF        PRODL+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,203 :: 		get_swr(); if(SWR==0) return;
	CALL        _get_swr+0, 0
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coarse_cap573
	MOVLW       0
	XORWF       _SWR+0, 0 
L__coarse_cap573:
	BTFSS       STATUS+0, 2 
	GOTO        L_coarse_cap52
	GOTO        L_end_coarse_cap
L_coarse_cap52:
;main.h,204 :: 		if(SWR < min_swr) {
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       coarse_cap_min_swr_L0+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coarse_cap574
	MOVF        coarse_cap_min_swr_L0+0, 0 
	SUBWF       _SWR+0, 0 
L__coarse_cap574:
	BTFSC       STATUS+0, 0 
	GOTO        L_coarse_cap53
;main.h,205 :: 		min_swr = SWR + SWR/20;
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
;main.h,206 :: 		cap = count*C_mult;
	MOVF        coarse_cap_count_L0+0, 0 
	MULWF       main_C_mult+0 
	MOVF        PRODL+0, 0 
	MOVWF       main_cap+0 
;main.h,207 :: 		step_cap = step;
	MOVF        coarse_cap_step_L0+0, 0 
	MOVWF       main_step_cap+0 
;main.h,208 :: 		if(SWR<120) break;
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coarse_cap575
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__coarse_cap575:
	BTFSC       STATUS+0, 0 
	GOTO        L_coarse_cap54
	GOTO        L_coarse_cap50
L_coarse_cap54:
;main.h,209 :: 		count +=step;
	MOVF        coarse_cap_step_L0+0, 0 
	ADDWF       coarse_cap_count_L0+0, 0 
	MOVWF       R2 
	MOVF        R2, 0 
	MOVWF       coarse_cap_count_L0+0 
;main.h,210 :: 		if(C_linear==0 & count==9) count = 8;
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
;main.h,211 :: 		else if(C_linear==0 & count==17) {count = 16; step = 4;}
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
;main.h,212 :: 		}
	GOTO        L_coarse_cap58
L_coarse_cap53:
;main.h,213 :: 		else break;
	GOTO        L_coarse_cap50
L_coarse_cap58:
;main.h,214 :: 		}
	GOTO        L_coarse_cap49
L_coarse_cap50:
;main.h,215 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,216 :: 		return;
;main.h,217 :: 		}
L_end_coarse_cap:
	RETURN      0
; end of _coarse_cap

_coarse_tune:

;main.h,219 :: 		void coarse_tune() {
;main.h,220 :: 		char step = 3;
	MOVLW       3
	MOVWF       coarse_tune_step_L0+0 
;main.h,225 :: 		mem_cap = 0;
	CLRF        coarse_tune_mem_cap_L0+0 
;main.h,226 :: 		step_ind = step;
	MOVF        coarse_tune_step_L0+0, 0 
	MOVWF       main_step_ind+0 
;main.h,227 :: 		mem_step_cap = 3;
	MOVLW       3
	MOVWF       coarse_tune_mem_step_cap_L0+0 
;main.h,228 :: 		min_swr = SWR + SWR/20;
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
;main.h,229 :: 		for(count=0; count<=31;) {
	CLRF        coarse_tune_count_L0+0 
L_coarse_tune59:
	MOVF        coarse_tune_count_L0+0, 0 
	SUBLW       31
	BTFSS       STATUS+0, 0 
	GOTO        L_coarse_tune60
;main.h,230 :: 		set_ind(count*L_mult);
	MOVF        coarse_tune_count_L0+0, 0 
	MULWF       main_L_mult+0 
	MOVF        PRODL+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.h,231 :: 		coarse_cap();
	CALL        _coarse_cap+0, 0
;main.h,232 :: 		get_swr();  if(SWR==0) return;
	CALL        _get_swr+0, 0
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coarse_tune577
	MOVLW       0
	XORWF       _SWR+0, 0 
L__coarse_tune577:
	BTFSS       STATUS+0, 2 
	GOTO        L_coarse_tune62
	GOTO        L_end_coarse_tune
L_coarse_tune62:
;main.h,233 :: 		if(SWR < min_swr) {
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       coarse_tune_min_swr_L0+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coarse_tune578
	MOVF        coarse_tune_min_swr_L0+0, 0 
	SUBWF       _SWR+0, 0 
L__coarse_tune578:
	BTFSC       STATUS+0, 0 
	GOTO        L_coarse_tune63
;main.h,234 :: 		min_swr = SWR + SWR/20;
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
;main.h,235 :: 		ind = count*L_mult;
	MOVF        coarse_tune_count_L0+0, 0 
	MULWF       main_L_mult+0 
	MOVF        PRODL+0, 0 
	MOVWF       main_ind+0 
;main.h,236 :: 		mem_cap = cap;
	MOVF        main_cap+0, 0 
	MOVWF       coarse_tune_mem_cap_L0+0 
;main.h,237 :: 		step_ind = step;
	MOVF        coarse_tune_step_L0+0, 0 
	MOVWF       main_step_ind+0 
;main.h,238 :: 		mem_step_cap = step_cap;
	MOVF        main_step_cap+0, 0 
	MOVWF       coarse_tune_mem_step_cap_L0+0 
;main.h,239 :: 		if(SWR<120) break;
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coarse_tune579
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__coarse_tune579:
	BTFSC       STATUS+0, 0 
	GOTO        L_coarse_tune64
	GOTO        L_coarse_tune60
L_coarse_tune64:
;main.h,240 :: 		count +=step;
	MOVF        coarse_tune_step_L0+0, 0 
	ADDWF       coarse_tune_count_L0+0, 0 
	MOVWF       R2 
	MOVF        R2, 0 
	MOVWF       coarse_tune_count_L0+0 
;main.h,241 :: 		if(L_linear==0 & count==9) count = 8;
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
;main.h,242 :: 		else if(L_linear==0 & count==17) {count = 16; step = 4;}
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
;main.h,243 :: 		}
	GOTO        L_coarse_tune68
L_coarse_tune63:
;main.h,244 :: 		else break;
	GOTO        L_coarse_tune60
L_coarse_tune68:
;main.h,245 :: 		}
	GOTO        L_coarse_tune59
L_coarse_tune60:
;main.h,246 :: 		cap = mem_cap;
	MOVF        coarse_tune_mem_cap_L0+0, 0 
	MOVWF       main_cap+0 
;main.h,247 :: 		set_ind(ind);
	MOVF        main_ind+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.h,248 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,249 :: 		step_cap = mem_step_cap;
	MOVF        coarse_tune_mem_step_cap_L0+0, 0 
	MOVWF       main_step_cap+0 
;main.h,250 :: 		Delay_ms(10);
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
;main.h,251 :: 		return;
;main.h,252 :: 		}
L_end_coarse_tune:
	RETURN      0
; end of _coarse_tune

_sharp_cap:

;main.h,254 :: 		void sharp_cap() {
;main.h,257 :: 		range = step_cap*C_mult;
	MOVF        main_step_cap+0, 0 
	MULWF       main_C_mult+0 
	MOVF        PRODL+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       sharp_cap_range_L0+0 
;main.h,259 :: 		max_range = cap + range;
	MOVF        R0, 0 
	ADDWF       main_cap+0, 0 
	MOVWF       R4 
	MOVF        R4, 0 
	MOVWF       sharp_cap_max_range_L0+0 
;main.h,260 :: 		if(max_range>32*C_mult-1) max_range = 32*C_mult-1;
	MOVLW       5
	MOVWF       R2 
	MOVF        main_C_mult+0, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        R2, 0 
L__sharp_cap581:
	BZ          L__sharp_cap582
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	ADDLW       255
	GOTO        L__sharp_cap581
L__sharp_cap582:
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
	GOTO        L__sharp_cap583
	MOVF        R4, 0 
	SUBWF       R2, 0 
L__sharp_cap583:
	BTFSC       STATUS+0, 0 
	GOTO        L_sharp_cap70
	MOVLW       5
	MOVWF       R0 
	MOVF        main_C_mult+0, 0 
	MOVWF       sharp_cap_max_range_L0+0 
	MOVF        R0, 0 
L__sharp_cap584:
	BZ          L__sharp_cap585
	RLCF        sharp_cap_max_range_L0+0, 1 
	BCF         sharp_cap_max_range_L0+0, 0 
	ADDLW       255
	GOTO        L__sharp_cap584
L__sharp_cap585:
	DECF        sharp_cap_max_range_L0+0, 1 
L_sharp_cap70:
;main.h,261 :: 		if(cap>range) min_range = cap - range; else min_range = 0;
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
;main.h,262 :: 		cap = min_range;
	MOVF        sharp_cap_min_range_L0+0, 0 
	MOVWF       main_cap+0 
;main.h,263 :: 		set_cap(cap);
	MOVF        sharp_cap_min_range_L0+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,264 :: 		get_swr(); if(SWR==0) return;
	CALL        _get_swr+0, 0
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_cap586
	MOVLW       0
	XORWF       _SWR+0, 0 
L__sharp_cap586:
	BTFSS       STATUS+0, 2 
	GOTO        L_sharp_cap73
	GOTO        L_end_sharp_cap
L_sharp_cap73:
;main.h,265 :: 		min_SWR = SWR;
	MOVF        _SWR+0, 0 
	MOVWF       sharp_cap_min_swr_L0+0 
	MOVF        _SWR+1, 0 
	MOVWF       sharp_cap_min_swr_L0+1 
;main.h,266 :: 		for(count=min_range+C_mult; count<=max_range; count+=C_mult)  {
	MOVF        main_C_mult+0, 0 
	ADDWF       sharp_cap_min_range_L0+0, 0 
	MOVWF       sharp_cap_count_L0+0 
L_sharp_cap74:
	MOVF        sharp_cap_count_L0+0, 0 
	SUBWF       sharp_cap_max_range_L0+0, 0 
	BTFSS       STATUS+0, 0 
	GOTO        L_sharp_cap75
;main.h,267 :: 		set_cap(count);
	MOVF        sharp_cap_count_L0+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,268 :: 		get_swr(); if(SWR==0) return;
	CALL        _get_swr+0, 0
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_cap587
	MOVLW       0
	XORWF       _SWR+0, 0 
L__sharp_cap587:
	BTFSS       STATUS+0, 2 
	GOTO        L_sharp_cap77
	GOTO        L_end_sharp_cap
L_sharp_cap77:
;main.h,269 :: 		if(SWR>=min_SWR) { Delay_ms(10); get_swr(); }
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       sharp_cap_min_swr_L0+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_cap588
	MOVF        sharp_cap_min_swr_L0+0, 0 
	SUBWF       _SWR+0, 0 
L__sharp_cap588:
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
;main.h,270 :: 		if(SWR>=min_SWR) { Delay_ms(10); get_swr(); }
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       sharp_cap_min_swr_L0+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_cap589
	MOVF        sharp_cap_min_swr_L0+0, 0 
	SUBWF       _SWR+0, 0 
L__sharp_cap589:
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
;main.h,271 :: 		if(SWR < min_SWR) {
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       sharp_cap_min_swr_L0+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_cap590
	MOVF        sharp_cap_min_swr_L0+0, 0 
	SUBWF       _SWR+0, 0 
L__sharp_cap590:
	BTFSC       STATUS+0, 0 
	GOTO        L_sharp_cap82
;main.h,272 :: 		min_SWR = SWR;
	MOVF        _SWR+0, 0 
	MOVWF       sharp_cap_min_swr_L0+0 
	MOVF        _SWR+1, 0 
	MOVWF       sharp_cap_min_swr_L0+1 
;main.h,273 :: 		cap = count;
	MOVF        sharp_cap_count_L0+0, 0 
	MOVWF       main_cap+0 
;main.h,274 :: 		if(SWR<120) break;
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_cap591
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__sharp_cap591:
	BTFSC       STATUS+0, 0 
	GOTO        L_sharp_cap83
	GOTO        L_sharp_cap75
L_sharp_cap83:
;main.h,275 :: 		}
	GOTO        L_sharp_cap84
L_sharp_cap82:
;main.h,276 :: 		else break;
	GOTO        L_sharp_cap75
L_sharp_cap84:
;main.h,266 :: 		for(count=min_range+C_mult; count<=max_range; count+=C_mult)  {
	MOVF        main_C_mult+0, 0 
	ADDWF       sharp_cap_count_L0+0, 1 
;main.h,277 :: 		}
	GOTO        L_sharp_cap74
L_sharp_cap75:
;main.h,278 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,279 :: 		return;
;main.h,280 :: 		}
L_end_sharp_cap:
	RETURN      0
; end of _sharp_cap

_sharp_ind:

;main.h,282 :: 		void sharp_ind() {
;main.h,285 :: 		range = step_ind * L_mult;
	MOVF        main_step_ind+0, 0 
	MULWF       main_L_mult+0 
	MOVF        PRODL+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       sharp_ind_range_L0+0 
;main.h,287 :: 		max_range = ind + range;
	MOVF        R0, 0 
	ADDWF       main_ind+0, 0 
	MOVWF       R4 
	MOVF        R4, 0 
	MOVWF       sharp_ind_max_range_L0+0 
;main.h,288 :: 		if(max_range>32*L_mult-1) max_range = 32*L_mult-1;
	MOVLW       5
	MOVWF       R2 
	MOVF        main_L_mult+0, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        R2, 0 
L__sharp_ind593:
	BZ          L__sharp_ind594
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	ADDLW       255
	GOTO        L__sharp_ind593
L__sharp_ind594:
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
	GOTO        L__sharp_ind595
	MOVF        R4, 0 
	SUBWF       R2, 0 
L__sharp_ind595:
	BTFSC       STATUS+0, 0 
	GOTO        L_sharp_ind85
	MOVLW       5
	MOVWF       R0 
	MOVF        main_L_mult+0, 0 
	MOVWF       sharp_ind_max_range_L0+0 
	MOVF        R0, 0 
L__sharp_ind596:
	BZ          L__sharp_ind597
	RLCF        sharp_ind_max_range_L0+0, 1 
	BCF         sharp_ind_max_range_L0+0, 0 
	ADDLW       255
	GOTO        L__sharp_ind596
L__sharp_ind597:
	DECF        sharp_ind_max_range_L0+0, 1 
L_sharp_ind85:
;main.h,289 :: 		if(ind>range) min_range = ind - range; else min_range = 0;
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
;main.h,290 :: 		ind = min_range;
	MOVF        sharp_ind_min_range_L0+0, 0 
	MOVWF       main_ind+0 
;main.h,291 :: 		set_ind(ind);
	MOVF        sharp_ind_min_range_L0+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.h,292 :: 		get_swr(); if(SWR==0) return;
	CALL        _get_swr+0, 0
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_ind598
	MOVLW       0
	XORWF       _SWR+0, 0 
L__sharp_ind598:
	BTFSS       STATUS+0, 2 
	GOTO        L_sharp_ind88
	GOTO        L_end_sharp_ind
L_sharp_ind88:
;main.h,293 :: 		min_SWR = SWR;
	MOVF        _SWR+0, 0 
	MOVWF       sharp_ind_min_SWR_L0+0 
	MOVF        _SWR+1, 0 
	MOVWF       sharp_ind_min_SWR_L0+1 
;main.h,294 :: 		for(count=min_range+L_mult; count<=max_range; count+=L_mult) {
	MOVF        main_L_mult+0, 0 
	ADDWF       sharp_ind_min_range_L0+0, 0 
	MOVWF       sharp_ind_count_L0+0 
L_sharp_ind89:
	MOVF        sharp_ind_count_L0+0, 0 
	SUBWF       sharp_ind_max_range_L0+0, 0 
	BTFSS       STATUS+0, 0 
	GOTO        L_sharp_ind90
;main.h,295 :: 		set_ind(count);
	MOVF        sharp_ind_count_L0+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.h,296 :: 		get_swr(); if(SWR==0) return;
	CALL        _get_swr+0, 0
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_ind599
	MOVLW       0
	XORWF       _SWR+0, 0 
L__sharp_ind599:
	BTFSS       STATUS+0, 2 
	GOTO        L_sharp_ind92
	GOTO        L_end_sharp_ind
L_sharp_ind92:
;main.h,297 :: 		if(SWR>=min_SWR) { Delay_ms(10); get_swr(); }
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       sharp_ind_min_SWR_L0+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_ind600
	MOVF        sharp_ind_min_SWR_L0+0, 0 
	SUBWF       _SWR+0, 0 
L__sharp_ind600:
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
;main.h,298 :: 		if(SWR>=min_SWR) { Delay_ms(10); get_swr(); }
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       sharp_ind_min_SWR_L0+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_ind601
	MOVF        sharp_ind_min_SWR_L0+0, 0 
	SUBWF       _SWR+0, 0 
L__sharp_ind601:
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
;main.h,299 :: 		if(SWR < min_SWR) {
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       sharp_ind_min_SWR_L0+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_ind602
	MOVF        sharp_ind_min_SWR_L0+0, 0 
	SUBWF       _SWR+0, 0 
L__sharp_ind602:
	BTFSC       STATUS+0, 0 
	GOTO        L_sharp_ind97
;main.h,300 :: 		min_SWR = SWR;
	MOVF        _SWR+0, 0 
	MOVWF       sharp_ind_min_SWR_L0+0 
	MOVF        _SWR+1, 0 
	MOVWF       sharp_ind_min_SWR_L0+1 
;main.h,301 :: 		ind = count;
	MOVF        sharp_ind_count_L0+0, 0 
	MOVWF       main_ind+0 
;main.h,302 :: 		if(SWR<120) break;
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_ind603
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__sharp_ind603:
	BTFSC       STATUS+0, 0 
	GOTO        L_sharp_ind98
	GOTO        L_sharp_ind90
L_sharp_ind98:
;main.h,303 :: 		}
	GOTO        L_sharp_ind99
L_sharp_ind97:
;main.h,304 :: 		else break;
	GOTO        L_sharp_ind90
L_sharp_ind99:
;main.h,294 :: 		for(count=min_range+L_mult; count<=max_range; count+=L_mult) {
	MOVF        main_L_mult+0, 0 
	ADDWF       sharp_ind_count_L0+0, 1 
;main.h,305 :: 		}
	GOTO        L_sharp_ind89
L_sharp_ind90:
;main.h,306 :: 		set_ind(ind);
	MOVF        main_ind+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.h,307 :: 		return;
;main.h,308 :: 		}
L_end_sharp_ind:
	RETURN      0
; end of _sharp_ind

_sub_tune:

;main.h,311 :: 		void sub_tune () {
;main.h,314 :: 		swr_mem = SWR;
	MOVF        _SWR+0, 0 
	MOVWF       sub_tune_swr_mem_L0+0 
	MOVF        _SWR+1, 0 
	MOVWF       sub_tune_swr_mem_L0+1 
;main.h,315 :: 		coarse_tune(); if(SWR==0) {atu_reset(); return;}
	CALL        _coarse_tune+0, 0
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune605
	MOVLW       0
	XORWF       _SWR+0, 0 
L__sub_tune605:
	BTFSS       STATUS+0, 2 
	GOTO        L_sub_tune100
	CALL        _atu_reset+0, 0
	GOTO        L_end_sub_tune
L_sub_tune100:
;main.h,316 :: 		get_swr(); if(SWR<120) return;
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
	GOTO        L_sub_tune101
	GOTO        L_end_sub_tune
L_sub_tune101:
;main.h,317 :: 		sharp_ind();  if(SWR==0) {atu_reset(); return;}
	CALL        _sharp_ind+0, 0
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune607
	MOVLW       0
	XORWF       _SWR+0, 0 
L__sub_tune607:
	BTFSS       STATUS+0, 2 
	GOTO        L_sub_tune102
	CALL        _atu_reset+0, 0
	GOTO        L_end_sub_tune
L_sub_tune102:
;main.h,318 :: 		get_swr(); if(SWR<120) return;
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
	GOTO        L_sub_tune103
	GOTO        L_end_sub_tune
L_sub_tune103:
;main.h,319 :: 		sharp_cap(); if(SWR==0) {atu_reset(); return;}
	CALL        _sharp_cap+0, 0
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune609
	MOVLW       0
	XORWF       _SWR+0, 0 
L__sub_tune609:
	BTFSS       STATUS+0, 2 
	GOTO        L_sub_tune104
	CALL        _atu_reset+0, 0
	GOTO        L_end_sub_tune
L_sub_tune104:
;main.h,320 :: 		get_swr(); if(SWR<120) return;
	CALL        _get_swr+0, 0
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune610
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__sub_tune610:
	BTFSC       STATUS+0, 0 
	GOTO        L_sub_tune105
	GOTO        L_end_sub_tune
L_sub_tune105:
;main.h,322 :: 		if(SWR<200 & SWR<swr_mem & (swr_mem-SWR)>100) return;
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R1 
	MOVLW       128
	SUBWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune611
	MOVLW       200
	SUBWF       _SWR+0, 0 
L__sub_tune611:
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
	GOTO        L__sub_tune612
	MOVF        sub_tune_swr_mem_L0+0, 0 
	SUBWF       _SWR+0, 0 
L__sub_tune612:
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
	GOTO        L__sub_tune613
	MOVF        R1, 0 
	SUBLW       100
L__sub_tune613:
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
;main.h,323 :: 		swr_mem = SWR;
	MOVF        _SWR+0, 0 
	MOVWF       sub_tune_swr_mem_L0+0 
	MOVF        _SWR+1, 0 
	MOVWF       sub_tune_swr_mem_L0+1 
;main.h,324 :: 		ind_mem = ind;
	MOVF        main_ind+0, 0 
	MOVWF       sub_tune_ind_mem_L0+0 
	MOVLW       0
	MOVWF       sub_tune_ind_mem_L0+1 
;main.h,325 :: 		cap_mem = cap;
	MOVF        main_cap+0, 0 
	MOVWF       sub_tune_cap_mem_L0+0 
	MOVLW       0
	MOVWF       sub_tune_cap_mem_L0+1 
;main.h,327 :: 		if(SW==1) SW = 0; else SW = 1;
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
;main.h,328 :: 		atu_reset();
	CALL        _atu_reset+0, 0
;main.h,329 :: 		set_sw(SW);
	MOVF        main_SW+0, 0 
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
;main.h,330 :: 		Delay_ms(50);
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
;main.h,331 :: 		get_swr(); if(SWR<120) return;
	CALL        _get_swr+0, 0
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune614
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__sub_tune614:
	BTFSC       STATUS+0, 0 
	GOTO        L_sub_tune110
	GOTO        L_end_sub_tune
L_sub_tune110:
;main.h,333 :: 		coarse_tune(); if(SWR==0) {atu_reset(); return;}
	CALL        _coarse_tune+0, 0
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune615
	MOVLW       0
	XORWF       _SWR+0, 0 
L__sub_tune615:
	BTFSS       STATUS+0, 2 
	GOTO        L_sub_tune111
	CALL        _atu_reset+0, 0
	GOTO        L_end_sub_tune
L_sub_tune111:
;main.h,334 :: 		get_swr(); if(SWR<120) return;
	CALL        _get_swr+0, 0
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune616
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__sub_tune616:
	BTFSC       STATUS+0, 0 
	GOTO        L_sub_tune112
	GOTO        L_end_sub_tune
L_sub_tune112:
;main.h,335 :: 		sharp_ind(); if(SWR==0) {atu_reset(); return;}
	CALL        _sharp_ind+0, 0
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune617
	MOVLW       0
	XORWF       _SWR+0, 0 
L__sub_tune617:
	BTFSS       STATUS+0, 2 
	GOTO        L_sub_tune113
	CALL        _atu_reset+0, 0
	GOTO        L_end_sub_tune
L_sub_tune113:
;main.h,336 :: 		get_swr(); if(SWR<120) return;
	CALL        _get_swr+0, 0
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune618
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__sub_tune618:
	BTFSC       STATUS+0, 0 
	GOTO        L_sub_tune114
	GOTO        L_end_sub_tune
L_sub_tune114:
;main.h,337 :: 		sharp_cap(); if(SWR==0) {atu_reset(); return;}
	CALL        _sharp_cap+0, 0
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune619
	MOVLW       0
	XORWF       _SWR+0, 0 
L__sub_tune619:
	BTFSS       STATUS+0, 2 
	GOTO        L_sub_tune115
	CALL        _atu_reset+0, 0
	GOTO        L_end_sub_tune
L_sub_tune115:
;main.h,338 :: 		get_swr(); if(SWR<120) return;
	CALL        _get_swr+0, 0
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune620
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__sub_tune620:
	BTFSC       STATUS+0, 0 
	GOTO        L_sub_tune116
	GOTO        L_end_sub_tune
L_sub_tune116:
;main.h,340 :: 		if(SWR>swr_mem) {
	MOVLW       128
	XORWF       sub_tune_swr_mem_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       _SWR+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune621
	MOVF        _SWR+0, 0 
	SUBWF       sub_tune_swr_mem_L0+0, 0 
L__sub_tune621:
	BTFSC       STATUS+0, 0 
	GOTO        L_sub_tune117
;main.h,341 :: 		if(SW==1) SW = 0; else SW = 1;
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
;main.h,342 :: 		set_sw(SW);
	MOVF        main_SW+0, 0 
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
;main.h,343 :: 		ind = ind_mem;
	MOVF        sub_tune_ind_mem_L0+0, 0 
	MOVWF       main_ind+0 
;main.h,344 :: 		cap = cap_mem;
	MOVF        sub_tune_cap_mem_L0+0, 0 
	MOVWF       main_cap+0 
;main.h,345 :: 		set_ind(ind);
	MOVF        sub_tune_ind_mem_L0+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.h,346 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,347 :: 		SWR = swr_mem;
	MOVF        sub_tune_swr_mem_L0+0, 0 
	MOVWF       _SWR+0 
	MOVF        sub_tune_swr_mem_L0+1, 0 
	MOVWF       _SWR+1 
;main.h,348 :: 		}
L_sub_tune117:
;main.h,350 :: 		asm CLRWDT;
	CLRWDT
;main.h,351 :: 		return;
;main.h,352 :: 		}
L_end_sub_tune:
	RETURN      0
; end of _sub_tune

_tune:

;main.h,356 :: 		void tune() {
;main.h,358 :: 		asm CLRWDT;
	CLRWDT
;main.h,360 :: 		p_cnt = 0;
	CLRF        _p_cnt+0 
;main.h,361 :: 		P_max = 0;
	CLRF        _P_max+0 
	CLRF        _P_max+1 
;main.h,363 :: 		rready = 0;
	CLRF        _rready+0 
;main.h,364 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,365 :: 		if(SWR<110) return;
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__tune623
	MOVLW       110
	SUBWF       _SWR+0, 0 
L__tune623:
	BTFSC       STATUS+0, 0 
	GOTO        L_tune120
	GOTO        L_end_tune
L_tune120:
;main.h,366 :: 		atu_reset();
	CALL        _atu_reset+0, 0
;main.h,367 :: 		if(Loss_ind==0) lcd_ind();
	MOVF        main_Loss_ind+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_tune121
	CALL        _lcd_ind+0, 0
L_tune121:
;main.h,368 :: 		Delay_ms(50);
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
;main.h,369 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,370 :: 		swr_a = SWR;
	MOVF        _SWR+0, 0 
	MOVWF       _swr_a+0 
	MOVF        _SWR+1, 0 
	MOVWF       _swr_a+1 
;main.h,371 :: 		if(SWR<110) return;
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__tune624
	MOVLW       110
	SUBWF       _SWR+0, 0 
L__tune624:
	BTFSC       STATUS+0, 0 
	GOTO        L_tune123
	GOTO        L_end_tune
L_tune123:
;main.h,372 :: 		if(max_swr>110 & SWR>max_swr) return;
	MOVLW       128
	MOVWF       R1 
	MOVLW       128
	XORWF       main_max_swr+1, 0 
	SUBWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__tune625
	MOVF        main_max_swr+0, 0 
	SUBLW       110
L__tune625:
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
	GOTO        L__tune626
	MOVF        _SWR+0, 0 
	SUBWF       main_max_swr+0, 0 
L__tune626:
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
;main.h,375 :: 		sub_tune(); if(SWR==0) {atu_reset(); return;}
	CALL        _sub_tune+0, 0
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__tune627
	MOVLW       0
	XORWF       _SWR+0, 0 
L__tune627:
	BTFSS       STATUS+0, 2 
	GOTO        L_tune125
	CALL        _atu_reset+0, 0
	GOTO        L_end_tune
L_tune125:
;main.h,376 :: 		if(SWR<120) return;
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__tune628
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__tune628:
	BTFSC       STATUS+0, 0 
	GOTO        L_tune126
	GOTO        L_end_tune
L_tune126:
;main.h,377 :: 		if(C_q==5 & L_q==5) return;
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
;main.h,379 :: 		if(L_q>5) {
	MOVF        main_L_q+0, 0 
	SUBLW       5
	BTFSC       STATUS+0, 0 
	GOTO        L_tune128
;main.h,380 :: 		step_ind = L_mult;
	MOVF        main_L_mult+0, 0 
	MOVWF       main_step_ind+0 
;main.h,381 :: 		L_mult = 1;
	MOVLW       1
	MOVWF       main_L_mult+0 
;main.h,382 :: 		sharp_ind();
	CALL        _sharp_ind+0, 0
;main.h,383 :: 		}
L_tune128:
;main.h,384 :: 		if(SWR<120) return;
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__tune629
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__tune629:
	BTFSC       STATUS+0, 0 
	GOTO        L_tune129
	GOTO        L_end_tune
L_tune129:
;main.h,385 :: 		if(C_q>5) {
	MOVF        main_C_q+0, 0 
	SUBLW       5
	BTFSC       STATUS+0, 0 
	GOTO        L_tune130
;main.h,386 :: 		step_cap = C_mult;  // = C_mult
	MOVF        main_C_mult+0, 0 
	MOVWF       main_step_cap+0 
;main.h,387 :: 		C_mult = 1;
	MOVLW       1
	MOVWF       main_C_mult+0 
;main.h,388 :: 		sharp_cap();
	CALL        _sharp_cap+0, 0
;main.h,389 :: 		}
L_tune130:
;main.h,390 :: 		if(L_q==5)L_mult = 1;
	MOVF        main_L_q+0, 0 
	XORLW       5
	BTFSS       STATUS+0, 2 
	GOTO        L_tune131
	MOVLW       1
	MOVWF       main_L_mult+0 
	GOTO        L_tune132
L_tune131:
;main.h,391 :: 		else if(L_q==6) L_mult = 2;
	MOVF        main_L_q+0, 0 
	XORLW       6
	BTFSS       STATUS+0, 2 
	GOTO        L_tune133
	MOVLW       2
	MOVWF       main_L_mult+0 
	GOTO        L_tune134
L_tune133:
;main.h,392 :: 		else if(L_q==7) L_mult = 4;
	MOVF        main_L_q+0, 0 
	XORLW       7
	BTFSS       STATUS+0, 2 
	GOTO        L_tune135
	MOVLW       4
	MOVWF       main_L_mult+0 
L_tune135:
L_tune134:
L_tune132:
;main.h,393 :: 		if(C_q==5) C_mult =1;
	MOVF        main_C_q+0, 0 
	XORLW       5
	BTFSS       STATUS+0, 2 
	GOTO        L_tune136
	MOVLW       1
	MOVWF       main_C_mult+0 
	GOTO        L_tune137
L_tune136:
;main.h,394 :: 		else if(C_q==6) C_mult = 2;
	MOVF        main_C_q+0, 0 
	XORLW       6
	BTFSS       STATUS+0, 2 
	GOTO        L_tune138
	MOVLW       2
	MOVWF       main_C_mult+0 
	GOTO        L_tune139
L_tune138:
;main.h,395 :: 		else if(C_q==7) C_mult = 4;
	MOVF        main_C_q+0, 0 
	XORLW       7
	BTFSS       STATUS+0, 2 
	GOTO        L_tune140
	MOVLW       4
	MOVWF       main_C_mult+0 
L_tune140:
L_tune139:
L_tune137:
;main.h,396 :: 		asm CLRWDT;
	CLRWDT
;main.h,397 :: 		return;
;main.h,398 :: 		}
L_end_tune:
	RETURN      0
; end of _tune

_main:

;main.c,37 :: 		void main() {
;main.c,41 :: 		if(RCON.B3==0) Restart = 1;
	BTFSC       RCON+0, 3 
	GOTO        L_main141
	MOVLW       1
	MOVWF       _Restart+0 
L_main141:
;main.c,43 :: 		pic_init();
	CALL        _pic_init+0, 0
;main.c,45 :: 		cells_init();
	CALL        _cells_init+0, 0
;main.c,46 :: 		Soft_I2C_Init();
	CALL        _Soft_I2C_Init+0, 0
;main.c,47 :: 		led_init();
	CALL        _led_init+0, 0
;main.c,49 :: 		send_command(0xA4);
	MOVLW       164
	MOVWF       FARG_send_command+0 
	CALL        _send_command+0, 0
;main.c,51 :: 		for(p = 0; p < 4; p++) {
	CLRF        main_p_L0+0 
L_main142:
	MOVLW       4
	SUBWF       main_p_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main143
;main.c,52 :: 		set_addressing(p, 0);
	MOVF        main_p_L0+0, 0 
	MOVWF       FARG_set_addressing+0 
	CLRF        FARG_set_addressing+0 
	CALL        _set_addressing+0, 0
;main.c,54 :: 		for(i = 0; i < 128; i++) {
	CLRF        main_i_L0+0 
L_main145:
	MOVLW       128
	SUBWF       main_i_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main146
;main.c,55 :: 		Soft_I2C_Write(0x00);
	CLRF        FARG_Soft_I2C_Write+0 
	CALL        _Soft_I2C_Write+0, 0
;main.c,54 :: 		for(i = 0; i < 128; i++) {
	INCF        main_i_L0+0, 1 
;main.c,56 :: 		}
	GOTO        L_main145
L_main146:
;main.c,58 :: 		Soft_I2C_Stop();
	CALL        _Soft_I2C_Stop+0, 0
;main.c,51 :: 		for(p = 0; p < 4; p++) {
	INCF        main_p_L0+0, 1 
;main.c,59 :: 		}
	GOTO        L_main142
L_main143:
;main.c,61 :: 		set_addressing(2, 16);
	MOVLW       2
	MOVWF       FARG_set_addressing+0 
	MOVLW       16
	MOVWF       FARG_set_addressing+0 
	CALL        _set_addressing+0, 0
;main.c,63 :: 		Soft_I2C_Write(0xFF);
	MOVLW       255
	MOVWF       FARG_Soft_I2C_Write+0 
	CALL        _Soft_I2C_Write+0, 0
;main.c,64 :: 		Soft_I2C_Write(0xFF);
	MOVLW       255
	MOVWF       FARG_Soft_I2C_Write+0 
	CALL        _Soft_I2C_Write+0, 0
;main.c,65 :: 		Soft_I2C_Write(0xFF);
	MOVLW       255
	MOVWF       FARG_Soft_I2C_Write+0 
	CALL        _Soft_I2C_Write+0, 0
;main.c,66 :: 		Soft_I2C_Write(0xFF);
	MOVLW       255
	MOVWF       FARG_Soft_I2C_Write+0 
	CALL        _Soft_I2C_Write+0, 0
;main.c,67 :: 		Soft_I2C_Write(0xFF);
	MOVLW       255
	MOVWF       FARG_Soft_I2C_Write+0 
	CALL        _Soft_I2C_Write+0, 0
;main.c,68 :: 		Soft_I2C_Write(0x00);
	CLRF        FARG_Soft_I2C_Write+0 
	CALL        _Soft_I2C_Write+0, 0
;main.c,69 :: 		Soft_I2C_Stop();
	CALL        _Soft_I2C_Stop+0, 0
;main.c,71 :: 		while(1) {
L_main148:
;main.c,72 :: 		}
	GOTO        L_main148
;main.c,74 :: 		Delay_ms (300);
L_main150:
	DECFSZ      R13, 1, 1
	BRA         L_main150
	DECFSZ      R12, 1, 1
	BRA         L_main150
	DECFSZ      R11, 1, 1
	BRA         L_main150
	NOP
;main.c,75 :: 		asm CLRWDT;
	CLRWDT
;main.c,76 :: 		cells_init();
	CALL        _cells_init+0, 0
;main.c,77 :: 		Soft_I2C_Init();
	CALL        _Soft_I2C_Init+0, 0
;main.c,78 :: 		if(type==0) { // 2-colors led  reset
	MOVF        _type+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main151
;main.c,79 :: 		LATB.B6 = 1;
	BSF         LATB+0, 6 
;main.c,80 :: 		LATB.B7 = 1;
	BSF         LATB+0, 7 
;main.c,81 :: 		}
L_main151:
;main.c,82 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
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
;main.c,84 :: 		Delay_ms(300);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       23
	MOVWF       R12, 0
	MOVLW       106
	MOVWF       R13, 0
L_main152:
	DECFSZ      R13, 1, 1
	BRA         L_main152
	DECFSZ      R12, 1, 1
	BRA         L_main152
	DECFSZ      R11, 1, 1
	BRA         L_main152
	NOP
;main.c,85 :: 		asm CLRWDT;
	CLRWDT
;main.c,87 :: 		if(PORTB.B1==0 & PORTB.B2==0) {  // Test mode
	BTFSC       PORTB+0, 1 
	GOTO        L__main631
	BSF         R4, 0 
	GOTO        L__main632
L__main631:
	BCF         R4, 0 
L__main632:
	BTFSC       PORTB+0, 2 
	GOTO        L__main633
	BSF         STATUS+0, 0 
	GOTO        L__main634
L__main633:
	BCF         STATUS+0, 0 
L__main634:
	BTFSS       R4, 0 
	GOTO        L__main635
	BTFSS       STATUS+0, 0 
	GOTO        L__main635
	BSF         R4, 0 
	GOTO        L__main636
L__main635:
	BCF         R4, 0 
L__main636:
	BTFSS       R4, 0 
	GOTO        L_main153
;main.c,88 :: 		Test = 1;
	MOVLW       1
	MOVWF       _Test+0 
;main.c,89 :: 		Auto =0;
	CLRF        _Auto+0 
;main.c,90 :: 		}
L_main153:
;main.c,91 :: 		if(L_q==5)L_mult = 1;
	MOVF        main_L_q+0, 0 
	XORLW       5
	BTFSS       STATUS+0, 2 
	GOTO        L_main154
	MOVLW       1
	MOVWF       main_L_mult+0 
	GOTO        L_main155
L_main154:
;main.c,92 :: 		else if(L_q==6) L_mult = 2;
	MOVF        main_L_q+0, 0 
	XORLW       6
	BTFSS       STATUS+0, 2 
	GOTO        L_main156
	MOVLW       2
	MOVWF       main_L_mult+0 
	GOTO        L_main157
L_main156:
;main.c,93 :: 		else if(L_q==7) L_mult = 4;
	MOVF        main_L_q+0, 0 
	XORLW       7
	BTFSS       STATUS+0, 2 
	GOTO        L_main158
	MOVLW       4
	MOVWF       main_L_mult+0 
L_main158:
L_main157:
L_main155:
;main.c,94 :: 		if(C_q==5) C_mult =1;
	MOVF        main_C_q+0, 0 
	XORLW       5
	BTFSS       STATUS+0, 2 
	GOTO        L_main159
	MOVLW       1
	MOVWF       main_C_mult+0 
	GOTO        L_main160
L_main159:
;main.c,95 :: 		else if(C_q==6) C_mult = 2;
	MOVF        main_C_q+0, 0 
	XORLW       6
	BTFSS       STATUS+0, 2 
	GOTO        L_main161
	MOVLW       2
	MOVWF       main_C_mult+0 
	GOTO        L_main162
L_main161:
;main.c,96 :: 		else if(C_q==7) C_mult = 4;
	MOVF        main_C_q+0, 0 
	XORLW       7
	BTFSS       STATUS+0, 2 
	GOTO        L_main163
	MOVLW       4
	MOVWF       main_C_mult+0 
L_main163:
L_main162:
L_main160:
;main.c,98 :: 		Delay_ms(300);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       23
	MOVWF       R12, 0
	MOVLW       106
	MOVWF       R13, 0
L_main164:
	DECFSZ      R13, 1, 1
	BRA         L_main164
	DECFSZ      R12, 1, 1
	BRA         L_main164
	DECFSZ      R11, 1, 1
	BRA         L_main164
	NOP
;main.c,99 :: 		asm CLRWDT;
	CLRWDT
;main.c,100 :: 		Delay_ms(300);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       23
	MOVWF       R12, 0
	MOVLW       106
	MOVWF       R13, 0
L_main165:
	DECFSZ      R13, 1, 1
	BRA         L_main165
	DECFSZ      R12, 1, 1
	BRA         L_main165
	DECFSZ      R11, 1, 1
	BRA         L_main165
	NOP
;main.c,101 :: 		asm CLRWDT;
	CLRWDT
;main.c,102 :: 		Delay_ms(300);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       23
	MOVWF       R12, 0
	MOVLW       106
	MOVWF       R13, 0
L_main166:
	DECFSZ      R13, 1, 1
	BRA         L_main166
	DECFSZ      R12, 1, 1
	BRA         L_main166
	DECFSZ      R11, 1, 1
	BRA         L_main166
	NOP
;main.c,103 :: 		asm CLRWDT;
	CLRWDT
;main.c,104 :: 		Delay_ms(300);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       23
	MOVWF       R12, 0
	MOVLW       106
	MOVWF       R13, 0
L_main167:
	DECFSZ      R13, 1, 1
	BRA         L_main167
	DECFSZ      R12, 1, 1
	BRA         L_main167
	DECFSZ      R11, 1, 1
	BRA         L_main167
	NOP
;main.c,105 :: 		asm CLRWDT;
	CLRWDT
;main.c,106 :: 		Delay_ms(300);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       23
	MOVWF       R12, 0
	MOVLW       106
	MOVWF       R13, 0
L_main168:
	DECFSZ      R13, 1, 1
	BRA         L_main168
	DECFSZ      R12, 1, 1
	BRA         L_main168
	DECFSZ      R11, 1, 1
	BRA         L_main168
	NOP
;main.c,107 :: 		asm CLRWDT;
	CLRWDT
;main.c,109 :: 		led_init();
	CALL        _led_init+0, 0
;main.c,112 :: 		while(1) {
L_main169:
;main.c,113 :: 		LATA2_bit = ~LATA2_bit;          // RA2 LED heartbeat
	BTG         LATA2_bit+0, BitPos(LATA2_bit+0) 
;main.c,114 :: 		led_wr_str(2, 16, "YT100 TEST", 9);
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr1_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr1_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,115 :: 		Delay_ms(1000);
	MOVLW       21
	MOVWF       R11, 0
	MOVLW       75
	MOVWF       R12, 0
	MOVLW       190
	MOVWF       R13, 0
L_main171:
	DECFSZ      R13, 1, 1
	BRA         L_main171
	DECFSZ      R12, 1, 1
	BRA         L_main171
	DECFSZ      R11, 1, 1
	BRA         L_main171
	NOP
;main.c,116 :: 		asm CLRWDT;
	CLRWDT
;main.c,117 :: 		}
	GOTO        L_main169
;main.c,128 :: 		while(1) {Delay_ms(500);asm CLRWDT;}
L_main178:
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main180:
	DECFSZ      R13, 1, 1
	BRA         L_main180
	DECFSZ      R12, 1, 1
	BRA         L_main180
	DECFSZ      R11, 1, 1
	BRA         L_main180
	NOP
	NOP
	CLRWDT
	GOTO        L_main178
;main.c,205 :: 		}
L_end_main:
	GOTO        $+0
; end of _main

_Tune_Button_proc_test:

;main.c,210 :: 		void Tune_Button_proc_test(void) {
;main.c,211 :: 		if(Button(&PORTB, 0, 50, 0)){    // Tune btn
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
	GOTO        L_Tune_Button_proc_test206
;main.c,212 :: 		Delay_ms(250);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_Tune_Button_proc_test207:
	DECFSZ      R13, 1, 1
	BRA         L_Tune_Button_proc_test207
	DECFSZ      R12, 1, 1
	BRA         L_Tune_Button_proc_test207
	DECFSZ      R11, 1, 1
	BRA         L_Tune_Button_proc_test207
	NOP
	NOP
;main.c,213 :: 		asm CLRWDT;
	CLRWDT
;main.c,214 :: 		if(PORTB.B0==1) { // short press Tune_Button
	BTFSS       PORTB+0, 0 
	GOTO        L_Tune_Button_proc_test208
;main.c,215 :: 		if(SW==0) SW = 1; else SW = 0;
	MOVF        main_SW+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Tune_Button_proc_test209
	MOVLW       1
	MOVWF       main_SW+0 
	GOTO        L_Tune_Button_proc_test210
L_Tune_Button_proc_test209:
	CLRF        main_SW+0 
L_Tune_Button_proc_test210:
;main.c,216 :: 		set_sw(SW);
	MOVF        main_SW+0, 0 
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
;main.c,217 :: 		lcd_ind();
	CALL        _lcd_ind+0, 0
;main.c,218 :: 		}
	GOTO        L_Tune_Button_proc_test211
L_Tune_Button_proc_test208:
;main.c,220 :: 		if(L==1) L = 0; else L = 1;
	MOVF        _L+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Tune_Button_proc_test212
	CLRF        _L+0 
	GOTO        L_Tune_Button_proc_test213
L_Tune_Button_proc_test212:
	MOVLW       1
	MOVWF       _L+0 
L_Tune_Button_proc_test213:
;main.c,221 :: 		if(L==1) {
	MOVF        _L+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Tune_Button_proc_test214
;main.c,222 :: 		if(type==4 |type==5)   // 128*64 OLED
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
	GOTO        L_Tune_Button_proc_test215
;main.c,223 :: 		led_wr_str (0, 16+12*8, "l", 1);
	CLRF        FARG_led_wr_str+0 
	MOVLW       112
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr9_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr9_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_Tune_Button_proc_test216
L_Tune_Button_proc_test215:
;main.c,224 :: 		else if(type!=0)              // 1602 LCD & 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_Tune_Button_proc_test217
;main.c,225 :: 		led_wr_str (0, 8, "l", 1);
	CLRF        FARG_led_wr_str+0 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr10_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr10_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_Tune_Button_proc_test217:
L_Tune_Button_proc_test216:
;main.c,226 :: 		}
	GOTO        L_Tune_Button_proc_test218
L_Tune_Button_proc_test214:
;main.c,228 :: 		if(type==4 |type==5)   // 128*64 OLED
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
	GOTO        L_Tune_Button_proc_test219
;main.c,229 :: 		led_wr_str (0, 16+12*8, "c", 1);
	CLRF        FARG_led_wr_str+0 
	MOVLW       112
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr11_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr11_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_Tune_Button_proc_test220
L_Tune_Button_proc_test219:
;main.c,230 :: 		else if(type!=0)              // 1602 LCD & 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_Tune_Button_proc_test221
;main.c,231 :: 		led_wr_str (0, 8, "c", 1);
	CLRF        FARG_led_wr_str+0 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr12_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr12_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_Tune_Button_proc_test221:
L_Tune_Button_proc_test220:
;main.c,232 :: 		}
L_Tune_Button_proc_test218:
;main.c,233 :: 		}
L_Tune_Button_proc_test211:
;main.c,234 :: 		while(Button(&PORTB, 0, 50, 0)) {lcd_pwr(); asm CLRWDT;   }
L_Tune_Button_proc_test222:
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
	GOTO        L_Tune_Button_proc_test223
	CALL        _lcd_pwr+0, 0
	CLRWDT
	GOTO        L_Tune_Button_proc_test222
L_Tune_Button_proc_test223:
;main.c,235 :: 		}  // END Tune btn
L_Tune_Button_proc_test206:
;main.c,237 :: 		if(Button(&PORTB, 2, 50, 0)){   // BYP Tune_Button
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
	GOTO        L_Tune_Button_proc_test224
;main.c,238 :: 		asm CLRWDT;
	CLRWDT
;main.c,239 :: 		while(PORTB.B2==0) {
L_Tune_Button_proc_test225:
	BTFSC       PORTB+0, 2 
	GOTO        L_Tune_Button_proc_test226
;main.c,240 :: 		if(L & ind<32*L_mult-1) {
	MOVLW       5
	MOVWF       R2 
	MOVF        main_L_mult+0, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        R2, 0 
L__Tune_Button_proc_test638:
	BZ          L__Tune_Button_proc_test639
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	ADDLW       255
	GOTO        L__Tune_Button_proc_test638
L__Tune_Button_proc_test639:
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
	GOTO        L__Tune_Button_proc_test640
	MOVF        R2, 0 
	SUBWF       main_ind+0, 0 
L__Tune_Button_proc_test640:
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R0 
	MOVF        _L+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_Tune_Button_proc_test227
;main.c,241 :: 		ind ++;
	INCF        main_ind+0, 1 
;main.c,242 :: 		set_ind(ind);
	MOVF        main_ind+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.c,243 :: 		}
	GOTO        L_Tune_Button_proc_test228
L_Tune_Button_proc_test227:
;main.c,244 :: 		else if(!L & cap<32*L_mult-1) {
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
L__Tune_Button_proc_test641:
	BZ          L__Tune_Button_proc_test642
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	ADDLW       255
	GOTO        L__Tune_Button_proc_test641
L__Tune_Button_proc_test642:
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
	GOTO        L__Tune_Button_proc_test643
	MOVF        R2, 0 
	SUBWF       main_cap+0, 0 
L__Tune_Button_proc_test643:
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R0 
	MOVF        R4, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_Tune_Button_proc_test229
;main.c,245 :: 		cap ++;
	INCF        main_cap+0, 1 
;main.c,246 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.c,247 :: 		}
L_Tune_Button_proc_test229:
L_Tune_Button_proc_test228:
;main.c,248 :: 		lcd_ind();
	CALL        _lcd_ind+0, 0
;main.c,249 :: 		lcd_pwr();
	CALL        _lcd_pwr+0, 0
;main.c,250 :: 		Delay_ms(30);
	MOVLW       156
	MOVWF       R12, 0
	MOVLW       215
	MOVWF       R13, 0
L_Tune_Button_proc_test230:
	DECFSZ      R13, 1, 1
	BRA         L_Tune_Button_proc_test230
	DECFSZ      R12, 1, 1
	BRA         L_Tune_Button_proc_test230
;main.c,251 :: 		asm CLRWDT;
	CLRWDT
;main.c,252 :: 		}
	GOTO        L_Tune_Button_proc_test225
L_Tune_Button_proc_test226:
;main.c,253 :: 		}   // end of BYP Tune_Button
L_Tune_Button_proc_test224:
;main.c,255 :: 		if(Button(&PORTB, 1, 50, 0) & Bypas==0){   // Auto Tune_Button
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
	GOTO        L_Tune_Button_proc_test231
;main.c,256 :: 		asm CLRWDT;
	CLRWDT
;main.c,257 :: 		while(PORTB.B1==0) {
L_Tune_Button_proc_test232:
	BTFSC       PORTB+0, 1 
	GOTO        L_Tune_Button_proc_test233
;main.c,258 :: 		if(L & ind>0) {
	MOVF        main_ind+0, 0 
	SUBLW       0
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R0 
	MOVF        _L+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_Tune_Button_proc_test234
;main.c,259 :: 		ind --;
	DECF        main_ind+0, 1 
;main.c,260 :: 		set_ind(ind);
	MOVF        main_ind+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.c,261 :: 		}
	GOTO        L_Tune_Button_proc_test235
L_Tune_Button_proc_test234:
;main.c,262 :: 		else if(!L & cap>0) {
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
	GOTO        L_Tune_Button_proc_test236
;main.c,263 :: 		cap --;
	DECF        main_cap+0, 1 
;main.c,264 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.c,265 :: 		}
L_Tune_Button_proc_test236:
L_Tune_Button_proc_test235:
;main.c,266 :: 		lcd_ind();
	CALL        _lcd_ind+0, 0
;main.c,267 :: 		lcd_pwr();
	CALL        _lcd_pwr+0, 0
;main.c,268 :: 		Delay_ms(30);
	MOVLW       156
	MOVWF       R12, 0
	MOVLW       215
	MOVWF       R13, 0
L_Tune_Button_proc_test237:
	DECFSZ      R13, 1, 1
	BRA         L_Tune_Button_proc_test237
	DECFSZ      R12, 1, 1
	BRA         L_Tune_Button_proc_test237
;main.c,269 :: 		asm CLRWDT;
	CLRWDT
;main.c,270 :: 		}
	GOTO        L_Tune_Button_proc_test232
L_Tune_Button_proc_test233:
;main.c,271 :: 		}
L_Tune_Button_proc_test231:
;main.c,272 :: 		return;
;main.c,273 :: 		}
L_end_Tune_Button_proc_test:
	RETURN      0
; end of _Tune_Button_proc_test

_Tune_Button_proc:

;main.c,276 :: 		void Tune_Button_proc(void) {
;main.c,277 :: 		if(tune_btn_release==0 & Button(&PORTB, 0, 50, 1)) tune_btn_release = 1;
	BTFSC       _tune_btn_release+0, BitPos(_tune_btn_release+0) 
	GOTO        L__Tune_Button_proc645
	BSF         R4, 0 
	GOTO        L__Tune_Button_proc646
L__Tune_Button_proc645:
	BCF         R4, 0 
L__Tune_Button_proc646:
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
	GOTO        L_Tune_Button_proc238
	BSF         _tune_btn_release+0, BitPos(_tune_btn_release+0) 
L_Tune_Button_proc238:
;main.c,278 :: 		if(tune_btn_release==0 & Button(&PORTB, 0, 50, 0)) dysp_cnt = Dysp_delay * dysp_cnt_mult;
	BTFSC       _tune_btn_release+0, BitPos(_tune_btn_release+0) 
	GOTO        L__Tune_Button_proc647
	BSF         R4, 0 
	GOTO        L__Tune_Button_proc648
L__Tune_Button_proc647:
	BCF         R4, 0 
L__Tune_Button_proc648:
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
	GOTO        L_Tune_Button_proc239
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
L_Tune_Button_proc239:
;main.c,279 :: 		if((Button(&PORTB, 0, 50, 0) & tune_btn_release) | Soft_tune){
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
	GOTO        L_Tune_Button_proc240
;main.c,280 :: 		if(dysp==0) { // dysplay ON
	MOVF        _dysp+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Tune_Button_proc241
;main.c,281 :: 		if(Relay_off==1){ set_ind(ind); set_cap(cap); set_SW(SW); }
	MOVF        main_Relay_off+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Tune_Button_proc242
	MOVF        main_ind+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
	MOVF        main_SW+0, 0 
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
L_Tune_Button_proc242:
;main.c,282 :: 		dysp = 1;
	MOVLW       1
	MOVWF       _dysp+0 
;main.c,283 :: 		dysp_on();
	CALL        _dysp_on+0, 0
;main.c,284 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
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
;main.c,285 :: 		return;
	GOTO        L_end_Tune_Button_proc
;main.c,286 :: 		}
L_Tune_Button_proc241:
;main.c,287 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
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
;main.c,288 :: 		asm CLRWDT;
	CLRWDT
;main.c,289 :: 		Delay_ms(250);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_Tune_Button_proc243:
	DECFSZ      R13, 1, 1
	BRA         L_Tune_Button_proc243
	DECFSZ      R12, 1, 1
	BRA         L_Tune_Button_proc243
	DECFSZ      R11, 1, 1
	BRA         L_Tune_Button_proc243
	NOP
	NOP
;main.c,290 :: 		asm CLRWDT;
	CLRWDT
;main.c,291 :: 		if(Soft_tune == 0 & PORTB.B0==1) { // short press Tune_Button
	MOVF        _Soft_tune+0, 0 
	XORLW       0
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	BTFSC       PORTB+0, 0 
	GOTO        L__Tune_Button_proc649
	BCF         STATUS+0, 0 
	GOTO        L__Tune_Button_proc650
L__Tune_Button_proc649:
	BSF         STATUS+0, 0 
L__Tune_Button_proc650:
	CLRF        R0 
	BTFSC       STATUS+0, 0 
	INCF        R0, 1 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_Tune_Button_proc244
;main.c,292 :: 		show_reset();
	CALL        _show_reset+0, 0
;main.c,293 :: 		bypas =0;
	CLRF        _bypas+0 
;main.c,294 :: 		}
	GOTO        L_Tune_Button_proc245
L_Tune_Button_proc244:
;main.c,296 :: 		p_Tx = 1;         //
	MOVLW       1
	MOVWF       _p_Tx+0 
;main.c,297 :: 		n_Tx = 0;         // TX request
	CLRF        _n_Tx+0 
;main.c,298 :: 		Delay_ms(250);    //
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_Tune_Button_proc246:
	DECFSZ      R13, 1, 1
	BRA         L_Tune_Button_proc246
	DECFSZ      R12, 1, 1
	BRA         L_Tune_Button_proc246
	DECFSZ      R11, 1, 1
	BRA         L_Tune_Button_proc246
	NOP
	NOP
;main.c,299 :: 		btn_push();
	CALL        _btn_push+0, 0
;main.c,300 :: 		bypas = 0;
	CLRF        _bypas+0 
;main.c,301 :: 		Soft_tune = 0;
	CLRF        _Soft_tune+0 
;main.c,302 :: 		tune_btn_release = 0;
	BCF         _tune_btn_release+0, BitPos(_tune_btn_release+0) 
;main.c,303 :: 		}
L_Tune_Button_proc245:
;main.c,304 :: 		}
L_Tune_Button_proc240:
;main.c,306 :: 		if(Button(&PORTB, 2, 50, 0)){   // BYP Tune_Button
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
	GOTO        L_Tune_Button_proc247
;main.c,307 :: 		if(dysp==0) { // dysplay ON
	MOVF        _dysp+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Tune_Button_proc248
;main.c,308 :: 		if(Relay_off==1){ set_ind(ind); set_cap(cap); set_SW(SW); }
	MOVF        main_Relay_off+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Tune_Button_proc249
	MOVF        main_ind+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
	MOVF        main_SW+0, 0 
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
L_Tune_Button_proc249:
;main.c,309 :: 		dysp = 1;
	MOVLW       1
	MOVWF       _dysp+0 
;main.c,310 :: 		dysp_on();
	CALL        _dysp_on+0, 0
;main.c,311 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
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
;main.c,312 :: 		return;
	GOTO        L_end_Tune_Button_proc
;main.c,313 :: 		}
L_Tune_Button_proc248:
;main.c,314 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
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
;main.c,315 :: 		asm CLRWDT;
	CLRWDT
;main.c,316 :: 		if(bypas == 0) {
	MOVF        _bypas+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Tune_Button_proc250
;main.c,317 :: 		bypas = 1;
	MOVLW       1
	MOVWF       _bypas+0 
;main.c,318 :: 		cap_mem = cap;
	MOVF        main_cap+0, 0 
	MOVWF       _cap_mem+0 
;main.c,319 :: 		ind_mem = ind;
	MOVF        main_ind+0, 0 
	MOVWF       _ind_mem+0 
;main.c,320 :: 		SW_mem = SW;
	MOVF        main_SW+0, 0 
	MOVWF       _SW_mem+0 
;main.c,321 :: 		cap = 0;
	CLRF        main_cap+0 
;main.c,322 :: 		if(L_invert) ind = 255;
	MOVF        main_L_invert+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_Tune_Button_proc251
	MOVLW       255
	MOVWF       main_ind+0 
	GOTO        L_Tune_Button_proc252
L_Tune_Button_proc251:
;main.c,323 :: 		else ind = 0;
	CLRF        main_ind+0 
L_Tune_Button_proc252:
;main.c,324 :: 		SW = 1;
	MOVLW       1
	MOVWF       main_SW+0 
;main.c,325 :: 		set_ind(ind);
	MOVF        main_ind+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.c,326 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.c,327 :: 		set_SW(SW);
	MOVF        main_SW+0, 0 
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
;main.c,328 :: 		if(Loss_mode==0) lcd_ind();
	MOVF        _Loss_mode+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Tune_Button_proc253
	CALL        _lcd_ind+0, 0
L_Tune_Button_proc253:
;main.c,329 :: 		Auto_mem = Auto;
	MOVF        _Auto+0, 0 
	MOVWF       _Auto_mem+0 
;main.c,330 :: 		Auto = 0;
	CLRF        _Auto+0 
;main.c,331 :: 		}
	GOTO        L_Tune_Button_proc254
L_Tune_Button_proc250:
;main.c,333 :: 		bypas = 0;
	CLRF        _bypas+0 
;main.c,334 :: 		cap = cap_mem;
	MOVF        _cap_mem+0, 0 
	MOVWF       main_cap+0 
;main.c,335 :: 		ind = ind_mem;
	MOVF        _ind_mem+0, 0 
	MOVWF       main_ind+0 
;main.c,336 :: 		SW = SW_mem;
	MOVF        _SW_mem+0, 0 
	MOVWF       main_SW+0 
;main.c,337 :: 		set_cap(cap);
	MOVF        _cap_mem+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.c,338 :: 		set_ind(ind);
	MOVF        main_ind+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.c,339 :: 		set_SW(SW);
	MOVF        main_SW+0, 0 
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
;main.c,340 :: 		if(Loss_mode==0) lcd_ind();
	MOVF        _Loss_mode+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Tune_Button_proc255
	CALL        _lcd_ind+0, 0
L_Tune_Button_proc255:
;main.c,341 :: 		Auto = Auto_mem;
	MOVF        _Auto_mem+0, 0 
	MOVWF       _Auto+0 
;main.c,342 :: 		}
L_Tune_Button_proc254:
;main.c,343 :: 		if(type==4 | type==5) {      // 128*64 OLED
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
	GOTO        L_Tune_Button_proc256
;main.c,344 :: 		if(Auto & !Bypas) led_wr_str (0, 16+8*12, ".", 1);
	MOVF        _bypas+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        _Auto+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_Tune_Button_proc257
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
	GOTO        L_Tune_Button_proc258
L_Tune_Button_proc257:
;main.c,345 :: 		else if(!Auto & Bypas) led_wr_str (0, 16+8*12, "_", 1);
	MOVF        _Auto+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        _bypas+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_Tune_Button_proc259
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
	GOTO        L_Tune_Button_proc260
L_Tune_Button_proc259:
;main.c,346 :: 		else led_wr_str (0, 16+8*12, " ", 1);
	CLRF        FARG_led_wr_str+0 
	MOVLW       112
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr15_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr15_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_Tune_Button_proc260:
L_Tune_Button_proc258:
;main.c,347 :: 		}
	GOTO        L_Tune_Button_proc261
L_Tune_Button_proc256:
;main.c,348 :: 		else if(type!=0) { //  1602 LCD  or 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_Tune_Button_proc262
;main.c,349 :: 		if(Auto & !Bypas) led_wr_str (0, 8, ".", 1);
	MOVF        _bypas+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        _Auto+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_Tune_Button_proc263
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
	GOTO        L_Tune_Button_proc264
L_Tune_Button_proc263:
;main.c,350 :: 		else if(!Auto & Bypas) led_wr_str (0, 8, "_", 1);
	MOVF        _Auto+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        _bypas+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_Tune_Button_proc265
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
	GOTO        L_Tune_Button_proc266
L_Tune_Button_proc265:
;main.c,351 :: 		else led_wr_str (0, 8, " ", 1);
	CLRF        FARG_led_wr_str+0 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr18_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr18_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_Tune_Button_proc266:
L_Tune_Button_proc264:
;main.c,352 :: 		}
L_Tune_Button_proc262:
L_Tune_Button_proc261:
;main.c,353 :: 		asm CLRWDT;
	CLRWDT
;main.c,354 :: 		while(Button(&PORTB, 2, 50, 0)) {lcd_pwr(); asm CLRWDT;   }
L_Tune_Button_proc267:
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
	GOTO        L_Tune_Button_proc268
	CALL        _lcd_pwr+0, 0
	CLRWDT
	GOTO        L_Tune_Button_proc267
L_Tune_Button_proc268:
;main.c,355 :: 		}
L_Tune_Button_proc247:
;main.c,357 :: 		if(Button(&PORTB, 1, 50, 0) & Bypas==0){   // Auto Tune_Button
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
	GOTO        L_Tune_Button_proc269
;main.c,358 :: 		if(dysp==0) { // dysplay ON
	MOVF        _dysp+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Tune_Button_proc270
;main.c,359 :: 		if(Relay_off==1){ set_ind(ind); set_cap(cap); set_SW(SW); }
	MOVF        main_Relay_off+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Tune_Button_proc271
	MOVF        main_ind+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
	MOVF        main_SW+0, 0 
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
L_Tune_Button_proc271:
;main.c,360 :: 		dysp = 1;
	MOVLW       1
	MOVWF       _dysp+0 
;main.c,361 :: 		dysp_on();
	CALL        _dysp_on+0, 0
;main.c,362 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
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
;main.c,363 :: 		return;
	GOTO        L_end_Tune_Button_proc
;main.c,364 :: 		}
L_Tune_Button_proc270:
;main.c,365 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
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
;main.c,366 :: 		asm CLRWDT;
	CLRWDT
;main.c,367 :: 		if(Auto == 0) Auto = 1;
	MOVF        _Auto+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Tune_Button_proc272
	MOVLW       1
	MOVWF       _Auto+0 
	GOTO        L_Tune_Button_proc273
L_Tune_Button_proc272:
;main.c,368 :: 		else Auto = 0;
	CLRF        _Auto+0 
L_Tune_Button_proc273:
;main.c,369 :: 		EEPROM_Write(2, Auto);
	MOVLW       2
	MOVWF       FARG_EEPROM_Write_address+0 
	MOVF        _Auto+0, 0 
	MOVWF       FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,370 :: 		if(type==4 | type==5) {      // 128*64 OLED
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
	GOTO        L_Tune_Button_proc274
;main.c,371 :: 		if(Auto & !Bypas) led_wr_str (0, 16+8*12, ".", 1);
	MOVF        _bypas+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        _Auto+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_Tune_Button_proc275
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
	GOTO        L_Tune_Button_proc276
L_Tune_Button_proc275:
;main.c,372 :: 		else if(!Auto & Bypas) led_wr_str (0, 16+8*12, "_", 1);
	MOVF        _Auto+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        _bypas+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_Tune_Button_proc277
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
	GOTO        L_Tune_Button_proc278
L_Tune_Button_proc277:
;main.c,373 :: 		else led_wr_str (0, 16+8*12, " ", 1);
	CLRF        FARG_led_wr_str+0 
	MOVLW       112
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr21_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr21_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_Tune_Button_proc278:
L_Tune_Button_proc276:
;main.c,374 :: 		}
	GOTO        L_Tune_Button_proc279
L_Tune_Button_proc274:
;main.c,375 :: 		else if(type!=0) { //  1602 LCD  or 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_Tune_Button_proc280
;main.c,376 :: 		if(Auto & !Bypas) led_wr_str (0, 8, ".", 1);
	MOVF        _bypas+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        _Auto+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_Tune_Button_proc281
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
	GOTO        L_Tune_Button_proc282
L_Tune_Button_proc281:
;main.c,377 :: 		else if(!Auto & Bypas) led_wr_str (0, 8, "_", 1);
	MOVF        _Auto+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        _bypas+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_Tune_Button_proc283
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
	GOTO        L_Tune_Button_proc284
L_Tune_Button_proc283:
;main.c,378 :: 		else led_wr_str (0, 8, " ", 1);
	CLRF        FARG_led_wr_str+0 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr24_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr24_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_Tune_Button_proc284:
L_Tune_Button_proc282:
;main.c,379 :: 		}
L_Tune_Button_proc280:
L_Tune_Button_proc279:
;main.c,380 :: 		asm CLRWDT;
	CLRWDT
;main.c,381 :: 		while(Button(&PORTB, 1, 50, 0)) {lcd_pwr(); asm CLRWDT; }
L_Tune_Button_proc285:
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
	GOTO        L_Tune_Button_proc286
	CALL        _lcd_pwr+0, 0
	CLRWDT
	GOTO        L_Tune_Button_proc285
L_Tune_Button_proc286:
;main.c,382 :: 		}
L_Tune_Button_proc269:
;main.c,383 :: 		return;
;main.c,384 :: 		}
L_end_Tune_Button_proc:
	RETURN      0
; end of _Tune_Button_proc

_show_reset:

;main.c,386 :: 		void show_reset() {
;main.c,387 :: 		atu_reset();
	CALL        _atu_reset+0, 0
;main.c,388 :: 		SW = 1;
	MOVLW       1
	MOVWF       main_SW+0 
;main.c,389 :: 		set_sw(SW);
	MOVLW       1
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
;main.c,390 :: 		EEPROM_Write(255, 0);
	MOVLW       255
	MOVWF       FARG_EEPROM_Write_address+0 
	CLRF        FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,391 :: 		EEPROM_Write(254, 0);
	MOVLW       254
	MOVWF       FARG_EEPROM_Write_address+0 
	CLRF        FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,392 :: 		EEPROM_Write(253, 1);
	MOVLW       253
	MOVWF       FARG_EEPROM_Write_address+0 
	MOVLW       1
	MOVWF       FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,393 :: 		EEPROM_Write(252, 0);
	MOVLW       252
	MOVWF       FARG_EEPROM_Write_address+0 
	CLRF        FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,394 :: 		EEPROM_Write(251, 0);
	MOVLW       251
	MOVWF       FARG_EEPROM_Write_address+0 
	CLRF        FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,395 :: 		lcd_ind();
	CALL        _lcd_ind+0, 0
;main.c,396 :: 		Loss_mode = 0;
	CLRF        _Loss_mode+0 
;main.c,397 :: 		p_Tx = 0;
	CLRF        _p_Tx+0 
;main.c,398 :: 		n_Tx = 1;
	MOVLW       1
	MOVWF       _n_Tx+0 
;main.c,399 :: 		SWR = 0;
	CLRF        _SWR+0 
	CLRF        _SWR+1 
;main.c,400 :: 		PWR = 0;
	CLRF        _PWR+0 
	CLRF        _PWR+1 
;main.c,401 :: 		SWR_fixed_old = 0;
	CLRF        _SWR_fixed_old+0 
	CLRF        _SWR_fixed_old+1 
;main.c,402 :: 		if(type==4 | type==5) {    // 128*64 OLED
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
	GOTO        L_show_reset287
;main.c,403 :: 		led_wr_str (2, 16, "RESET   ", 8);
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
;main.c,404 :: 		asm CLRWDT;
	CLRWDT
;main.c,405 :: 		delay_ms(600);
	MOVLW       13
	MOVWF       R11, 0
	MOVLW       45
	MOVWF       R12, 0
	MOVLW       215
	MOVWF       R13, 0
L_show_reset288:
	DECFSZ      R13, 1, 1
	BRA         L_show_reset288
	DECFSZ      R12, 1, 1
	BRA         L_show_reset288
	DECFSZ      R11, 1, 1
	BRA         L_show_reset288
	NOP
	NOP
;main.c,406 :: 		led_wr_str (2, 16, "SWR=0.00", 8);
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr26_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr26_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,407 :: 		asm CLRWDT;
	CLRWDT
;main.c,408 :: 		}
	GOTO        L_show_reset289
L_show_reset287:
;main.c,409 :: 		else if(type!=0) {// 1602 LCD & 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_show_reset290
;main.c,410 :: 		led_wr_str (1, 0, "RESET   ", 8);
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
;main.c,411 :: 		asm CLRWDT;
	CLRWDT
;main.c,412 :: 		delay_ms(600);
	MOVLW       13
	MOVWF       R11, 0
	MOVLW       45
	MOVWF       R12, 0
	MOVLW       215
	MOVWF       R13, 0
L_show_reset291:
	DECFSZ      R13, 1, 1
	BRA         L_show_reset291
	DECFSZ      R12, 1, 1
	BRA         L_show_reset291
	DECFSZ      R11, 1, 1
	BRA         L_show_reset291
	NOP
	NOP
;main.c,413 :: 		led_wr_str (1, 0, "SWR=0.00", 8);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CLRF        FARG_led_wr_str+0 
	MOVLW       ?lstr28_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr28_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,414 :: 		asm CLRWDT;
	CLRWDT
;main.c,415 :: 		}
	GOTO        L_show_reset292
L_show_reset290:
;main.c,417 :: 		LATB.B6 = 1;
	BSF         LATB+0, 6 
;main.c,418 :: 		LATB.B7 = 1;
	BSF         LATB+0, 7 
;main.c,419 :: 		}
L_show_reset292:
L_show_reset289:
;main.c,420 :: 		SWR_old = 10000;
	MOVLW       16
	MOVWF       _SWR_old+0 
	MOVLW       39
	MOVWF       _SWR_old+1 
;main.c,421 :: 		Power_old = 10000;
	MOVLW       16
	MOVWF       _Power_old+0 
	MOVLW       39
	MOVWF       _Power_old+1 
;main.c,422 :: 		lcd_pwr();
	CALL        _lcd_pwr+0, 0
;main.c,423 :: 		return;
;main.c,424 :: 		}
L_end_show_reset:
	RETURN      0
; end of _show_reset

_btn_push:

;main.c,426 :: 		void btn_push() {
;main.c,427 :: 		asm CLRWDT;
	CLRWDT
;main.c,428 :: 		if(type==4 | type==5)  {   // 128*64 OLED
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
	GOTO        L_btn_push293
;main.c,429 :: 		led_wr_str (2, 16+12*4, "TUNE", 4);
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	MOVLW       64
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr29_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr29_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,430 :: 		}
	GOTO        L_btn_push294
L_btn_push293:
;main.c,431 :: 		else if(type!=0) {   // 1602 LCD & 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_btn_push295
;main.c,432 :: 		led_wr_str (1, 4, "TUNE", 4);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr30_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr30_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,433 :: 		}
	GOTO        L_btn_push296
L_btn_push295:
;main.c,435 :: 		LATB.B6 = 1;
	BSF         LATB+0, 6 
;main.c,436 :: 		LATB.B7 = 1;
	BSF         LATB+0, 7 
;main.c,437 :: 		}
L_btn_push296:
L_btn_push294:
;main.c,438 :: 		tune();
	CALL        _tune+0, 0
;main.c,439 :: 		if(type==0) {    // real-time 2-colors led work
	MOVF        _type+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_btn_push297
;main.c,440 :: 		if(swr<=150) { LATB.B6 = 0; LATB.B7 = 1; } // Green
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _SWR+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__btn_push653
	MOVF        _SWR+0, 0 
	SUBLW       150
L__btn_push653:
	BTFSS       STATUS+0, 0 
	GOTO        L_btn_push298
	BCF         LATB+0, 6 
	BSF         LATB+0, 7 
	GOTO        L_btn_push299
L_btn_push298:
;main.c,441 :: 		else if(swr<=250) {PORTB.B6 = 0; PORTB.B7 = 0;} // Orange
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _SWR+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__btn_push654
	MOVF        _SWR+0, 0 
	SUBLW       250
L__btn_push654:
	BTFSS       STATUS+0, 0 
	GOTO        L_btn_push300
	BCF         PORTB+0, 6 
	BCF         PORTB+0, 7 
	GOTO        L_btn_push301
L_btn_push300:
;main.c,442 :: 		else { PORTB.B6 = 1; PORTB.B7 = 0; }  // Red
	BSF         PORTB+0, 6 
	BCF         PORTB+0, 7 
L_btn_push301:
L_btn_push299:
;main.c,443 :: 		}
	GOTO        L_btn_push302
L_btn_push297:
;main.c,444 :: 		else if(Loss_mode==0 | Loss_ind==0) lcd_ind();
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
	GOTO        L_btn_push303
	CALL        _lcd_ind+0, 0
L_btn_push303:
L_btn_push302:
;main.c,445 :: 		EEPROM_Write(255, cap);
	MOVLW       255
	MOVWF       FARG_EEPROM_Write_address+0 
	MOVF        main_cap+0, 0 
	MOVWF       FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,446 :: 		EEPROM_Write(254, ind);
	MOVLW       254
	MOVWF       FARG_EEPROM_Write_address+0 
	MOVF        main_ind+0, 0 
	MOVWF       FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,447 :: 		EEPROM_Write(253, SW);
	MOVLW       253
	MOVWF       FARG_EEPROM_Write_address+0 
	MOVF        main_SW+0, 0 
	MOVWF       FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,448 :: 		EEPROM_Write(252, swr_a/256);
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
;main.c,449 :: 		EEPROM_Write(251, swr_a%256);
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
;main.c,450 :: 		SWR_old = 10000;
	MOVLW       16
	MOVWF       _SWR_old+0 
	MOVLW       39
	MOVWF       _SWR_old+1 
;main.c,451 :: 		Power_old = 10000;
	MOVLW       16
	MOVWF       _Power_old+0 
	MOVLW       39
	MOVWF       _Power_old+1 
;main.c,452 :: 		lcd_pwr();
	CALL        _lcd_pwr+0, 0
;main.c,453 :: 		SWR_fixed_old = SWR;
	MOVF        _SWR+0, 0 
	MOVWF       _SWR_fixed_old+0 
	MOVF        _SWR+1, 0 
	MOVWF       _SWR_fixed_old+1 
;main.c,454 :: 		p_Tx = 0;
	CLRF        _p_Tx+0 
;main.c,455 :: 		n_Tx = 1;
	MOVLW       1
	MOVWF       _n_Tx+0 
;main.c,456 :: 		asm CLRWDT;
	CLRWDT
;main.c,457 :: 		return;
;main.c,458 :: 		}
L_end_btn_push:
	RETURN      0
; end of _btn_push

_lcd_prep:

;main.c,461 :: 		void lcd_prep() {
;main.c,462 :: 		asm CLRWDT;
	CLRWDT
;main.c,463 :: 		if(type==4 |type==5){   // 128*64 OLED
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
	GOTO        L_lcd_prep304
;main.c,464 :: 		if(lcd_prep_short==0) {
	MOVF        _lcd_prep_short+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_prep305
;main.c,465 :: 		led_wr_str (0, 22, "ATU-100", 7);
	CLRF        FARG_led_wr_str+0 
	MOVLW       22
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr31_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr31_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       7
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,466 :: 		led_wr_str (2, 6, "EXT board", 9);
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	MOVLW       6
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr32_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr32_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,467 :: 		led_wr_str (4, 16, "by N7DDC", 8);
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr33_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr33_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,468 :: 		led_wr_str (6, 4, "FW ver 3.2", 10);
	MOVLW       6
	MOVWF       FARG_led_wr_str+0 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr34_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr34_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       10
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,469 :: 		asm CLRWDT;
	CLRWDT
;main.c,470 :: 		Delay_ms(600);
	MOVLW       13
	MOVWF       R11, 0
	MOVLW       45
	MOVWF       R12, 0
	MOVLW       215
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
;main.c,471 :: 		asm CLRWDT;
	CLRWDT
;main.c,472 :: 		Delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_lcd_prep307:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_prep307
	DECFSZ      R12, 1, 1
	BRA         L_lcd_prep307
	DECFSZ      R11, 1, 1
	BRA         L_lcd_prep307
	NOP
	NOP
;main.c,473 :: 		asm CLRWDT;
	CLRWDT
;main.c,474 :: 		led_wr_str (0, 16, "        ", 8);
	CLRF        FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr35_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr35_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,475 :: 		led_wr_str (2, 4, "          ", 10);
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr36_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr36_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       10
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,476 :: 		led_wr_str (4, 16, "        ", 8);
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr37_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr37_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,477 :: 		led_wr_str (6, 4, "          ", 10);
	MOVLW       6
	MOVWF       FARG_led_wr_str+0 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr38_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr38_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       10
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,478 :: 		}
L_lcd_prep305:
;main.c,479 :: 		Delay_ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_lcd_prep308:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_prep308
	DECFSZ      R12, 1, 1
	BRA         L_lcd_prep308
	DECFSZ      R11, 1, 1
	BRA         L_lcd_prep308
	NOP
	NOP
;main.c,480 :: 		if(P_High==1) led_wr_str (0, 16, "PWR=  0W", 8);
	MOVF        main_P_High+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_prep309
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
	GOTO        L_lcd_prep310
L_lcd_prep309:
;main.c,481 :: 		else  led_wr_str (0, 16, "PWR=0.0W", 8);
	CLRF        FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr40_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr40_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_lcd_prep310:
;main.c,482 :: 		led_wr_str (2, 16, "SWR=0.00", 8);
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr41_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr41_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,483 :: 		if(Auto) led_wr_str (0, 16+8*12, ".", 1);
	MOVF        _Auto+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_prep311
	CLRF        FARG_led_wr_str+0 
	MOVLW       112
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr42_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr42_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_lcd_prep311:
;main.c,484 :: 		}
	GOTO        L_lcd_prep312
L_lcd_prep304:
;main.c,485 :: 		else if(type!=0) {   // 1602 LCD & 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_prep313
;main.c,486 :: 		if(lcd_prep_short==0) {
	MOVF        _lcd_prep_short+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_prep314
;main.c,487 :: 		led_wr_str (0, 4, "ATU-100", 7);
	CLRF        FARG_led_wr_str+0 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr43_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr43_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       7
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,488 :: 		led_wr_str (1, 3, "EXT board", 9);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	MOVLW       3
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr44_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr44_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,489 :: 		asm CLRWDT;
	CLRWDT
;main.c,490 :: 		Delay_ms(700);
	MOVLW       15
	MOVWF       R11, 0
	MOVLW       53
	MOVWF       R12, 0
	MOVLW       81
	MOVWF       R13, 0
L_lcd_prep315:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_prep315
	DECFSZ      R12, 1, 1
	BRA         L_lcd_prep315
	DECFSZ      R11, 1, 1
	BRA         L_lcd_prep315
;main.c,491 :: 		asm CLRWDT;
	CLRWDT
;main.c,492 :: 		Delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_lcd_prep316:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_prep316
	DECFSZ      R12, 1, 1
	BRA         L_lcd_prep316
	DECFSZ      R11, 1, 1
	BRA         L_lcd_prep316
	NOP
	NOP
;main.c,493 :: 		asm CLRWDT;
	CLRWDT
;main.c,494 :: 		led_wr_str (0, 4, "by N7DDC", 8);
	CLRF        FARG_led_wr_str+0 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr45_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr45_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,495 :: 		led_wr_str (1, 3, "FW ver 3.2", 10);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	MOVLW       3
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr46_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr46_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       10
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,496 :: 		asm CLRWDT;
	CLRWDT
;main.c,497 :: 		Delay_ms(600);
	MOVLW       13
	MOVWF       R11, 0
	MOVLW       45
	MOVWF       R12, 0
	MOVLW       215
	MOVWF       R13, 0
L_lcd_prep317:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_prep317
	DECFSZ      R12, 1, 1
	BRA         L_lcd_prep317
	DECFSZ      R11, 1, 1
	BRA         L_lcd_prep317
	NOP
	NOP
;main.c,498 :: 		asm CLRWDT;
	CLRWDT
;main.c,499 :: 		Delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_lcd_prep318:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_prep318
	DECFSZ      R12, 1, 1
	BRA         L_lcd_prep318
	DECFSZ      R11, 1, 1
	BRA         L_lcd_prep318
	NOP
	NOP
;main.c,500 :: 		asm CLRWDT;
	CLRWDT
;main.c,501 :: 		led_wr_str (0, 4, "        ", 8);
	CLRF        FARG_led_wr_str+0 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr47_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr47_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,502 :: 		led_wr_str (1, 3, "          ", 10);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	MOVLW       3
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr48_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr48_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       10
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,503 :: 		}
L_lcd_prep314:
;main.c,504 :: 		Delay_ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_lcd_prep319:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_prep319
	DECFSZ      R12, 1, 1
	BRA         L_lcd_prep319
	DECFSZ      R11, 1, 1
	BRA         L_lcd_prep319
	NOP
	NOP
;main.c,505 :: 		if(P_High==1) led_wr_str (0, 0, "PWR=  0W", 8);
	MOVF        main_P_High+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_prep320
	CLRF        FARG_led_wr_str+0 
	CLRF        FARG_led_wr_str+0 
	MOVLW       ?lstr49_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr49_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_lcd_prep321
L_lcd_prep320:
;main.c,506 :: 		else led_wr_str (0, 0, "PWR=0.0W", 8);
	CLRF        FARG_led_wr_str+0 
	CLRF        FARG_led_wr_str+0 
	MOVLW       ?lstr50_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr50_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_lcd_prep321:
;main.c,507 :: 		led_wr_str (1, 0, "SWR=0.00", 8);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CLRF        FARG_led_wr_str+0 
	MOVLW       ?lstr51_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr51_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,508 :: 		if(Auto) led_wr_str (0, 8, ".", 1);
	MOVF        _Auto+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_prep322
	CLRF        FARG_led_wr_str+0 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr52_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr52_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_lcd_prep322:
;main.c,509 :: 		}
L_lcd_prep313:
L_lcd_prep312:
;main.c,510 :: 		asm CLRWDT;
	CLRWDT
;main.c,511 :: 		lcd_ind();
	CALL        _lcd_ind+0, 0
;main.c,512 :: 		return;
;main.c,513 :: 		}
L_end_lcd_prep:
	RETURN      0
; end of _lcd_prep

_lcd_swr:

;main.c,516 :: 		void lcd_swr(int swr) {
;main.c,517 :: 		asm CLRWDT;
	CLRWDT
;main.c,518 :: 		if(swr!=SWR_old) {
	MOVF        FARG_lcd_swr_swr+1, 0 
	XORWF       _SWR_old+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_swr657
	MOVF        _SWR_old+0, 0 
	XORWF       FARG_lcd_swr_swr+0, 0 
L__lcd_swr657:
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_swr323
;main.c,519 :: 		SWR_old = swr;
	MOVF        FARG_lcd_swr_swr+0, 0 
	MOVWF       _SWR_old+0 
	MOVF        FARG_lcd_swr_swr+1, 0 
	MOVWF       _SWR_old+1 
;main.c,520 :: 		if(SWR==0) {  // Low power
	MOVLW       0
	XORWF       FARG_lcd_swr_swr+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_swr658
	MOVLW       0
	XORWF       FARG_lcd_swr_swr+0, 0 
L__lcd_swr658:
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_swr324
;main.c,521 :: 		if(type==4 | type==5) led_wr_str (2, 16+4*12, "0.00", 4);   // 128*64 OLED
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
	GOTO        L_lcd_swr325
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	MOVLW       64
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr53_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr53_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_lcd_swr326
L_lcd_swr325:
;main.c,522 :: 		else if(type!=0) led_wr_str (1, 4, "0.00", 4);  // 1602  & 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_swr327
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr54_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr54_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_lcd_swr328
L_lcd_swr327:
;main.c,523 :: 		else  if(type==0) {    // real-time 2-colors led work
	MOVF        _type+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_swr329
;main.c,524 :: 		LATB.B6 = 1;
	BSF         LATB+0, 6 
;main.c,525 :: 		LATB.B7 = 1;
	BSF         LATB+0, 7 
;main.c,526 :: 		}
L_lcd_swr329:
L_lcd_swr328:
L_lcd_swr326:
;main.c,527 :: 		SWR_old = 0;
	CLRF        _SWR_old+0 
	CLRF        _SWR_old+1 
;main.c,528 :: 		}
	GOTO        L_lcd_swr330
L_lcd_swr324:
;main.c,530 :: 		IntToStr(swr, work_str);
	MOVF        FARG_lcd_swr_swr+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        FARG_lcd_swr_swr+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,531 :: 		work_str_2[0] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+0 
;main.c,532 :: 		work_str_2[1] = '.';
	MOVLW       46
	MOVWF       _work_str_2+1 
;main.c,533 :: 		work_str_2[2] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+2 
;main.c,534 :: 		work_str_2[3] = work_str[5];
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+3 
;main.c,535 :: 		if(type==4 | type==5) led_wr_str (2, 16+4*12, work_str_2, 4);  // 128*64 OLED
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
	GOTO        L_lcd_swr331
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
	GOTO        L_lcd_swr332
L_lcd_swr331:
;main.c,536 :: 		else if(type!=0) led_wr_str (1, 4, work_str_2, 4);       // 1602  & 128*32
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_swr333
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
	GOTO        L_lcd_swr334
L_lcd_swr333:
;main.c,537 :: 		else  if(type==0) {    // real-time 2-colors led work
	MOVF        _type+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_swr335
;main.c,538 :: 		if(swr<=150) { LATB.B6 = 0; LATB.B7 = 1; } // Green
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_lcd_swr_swr+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_swr659
	MOVF        FARG_lcd_swr_swr+0, 0 
	SUBLW       150
L__lcd_swr659:
	BTFSS       STATUS+0, 0 
	GOTO        L_lcd_swr336
	BCF         LATB+0, 6 
	BSF         LATB+0, 7 
	GOTO        L_lcd_swr337
L_lcd_swr336:
;main.c,539 :: 		else if(swr<=250) {PORTB.B6 = 0; PORTB.B7 = 0;} // Orange
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_lcd_swr_swr+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_swr660
	MOVF        FARG_lcd_swr_swr+0, 0 
	SUBLW       250
L__lcd_swr660:
	BTFSS       STATUS+0, 0 
	GOTO        L_lcd_swr338
	BCF         PORTB+0, 6 
	BCF         PORTB+0, 7 
	GOTO        L_lcd_swr339
L_lcd_swr338:
;main.c,540 :: 		else { PORTB.B6 = 1; PORTB.B7 = 0; }  // Red
	BSF         PORTB+0, 6 
	BCF         PORTB+0, 7 
L_lcd_swr339:
L_lcd_swr337:
;main.c,541 :: 		}
L_lcd_swr335:
L_lcd_swr334:
L_lcd_swr332:
;main.c,542 :: 		}
L_lcd_swr330:
;main.c,543 :: 		}
L_lcd_swr323:
;main.c,544 :: 		asm CLRWDT;
	CLRWDT
;main.c,545 :: 		return;
;main.c,546 :: 		}
L_end_lcd_swr:
	RETURN      0
; end of _lcd_swr

_Tune_Button_delay:

;main.c,549 :: 		void Tune_Button_delay() {
;main.c,550 :: 		if((Button(&PORTB, 0, 25, 0)) | (Button(&PORTB, 1, 25, 0)) | (Button(&PORTB, 2, 25, 0))) {
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
	MOVWF       FLOC__Tune_Button_delay+0 
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
	IORWF       FLOC__Tune_Button_delay+0, 1 
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
	MOVF        FLOC__Tune_Button_delay+0, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_Tune_Button_delay340
;main.c,551 :: 		but = 1;
	MOVLW       1
	MOVWF       _but+0 
;main.c,552 :: 		}
L_Tune_Button_delay340:
;main.c,553 :: 		return;
;main.c,554 :: 		}
L_end_Tune_Button_delay:
	RETURN      0
; end of _Tune_Button_delay

_show_pwr:

;main.c,556 :: 		void show_pwr(int Power, int SWR) {
;main.c,559 :: 		a = 100;
	MOVLW       0
	MOVWF       show_pwr_a_L0+0 
	MOVLW       0
	MOVWF       show_pwr_a_L0+1 
	MOVLW       72
	MOVWF       show_pwr_a_L0+2 
	MOVLW       133
	MOVWF       show_pwr_a_L0+3 
;main.c,560 :: 		asm CLRWDT;
	CLRWDT
;main.c,562 :: 		if(Test==0 & Loss_ind==1 & Power>=10) {
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
	GOTO        L__show_pwr663
	MOVLW       10
	SUBWF       FARG_show_pwr_Power+0, 0 
L__show_pwr663:
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr341
;main.c,563 :: 		if(Loss_mode==0) {   // prepare
	MOVF        _Loss_mode+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr342
;main.c,564 :: 		if(type==4 |type==5){   // 128*64 OLED
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
	GOTO        L_show_pwr343
;main.c,565 :: 		if(P_High==1) led_wr_str(4, 16, "ANT=  0W", 8);
	MOVF        main_P_High+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr344
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
	GOTO        L_show_pwr345
L_show_pwr344:
;main.c,566 :: 		else led_wr_str(4, 16, "ANT=0.0W", 8);
	MOVLW       4
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
L_show_pwr345:
;main.c,567 :: 		led_wr_str(6, 16, "EFF=  0%", 8);
	MOVLW       6
	MOVWF       FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr57_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr57_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,568 :: 		}
	GOTO        L_show_pwr346
L_show_pwr343:
;main.c,569 :: 		else if(type==2 | type==3) {   // 128*32 OLED
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
	GOTO        L_show_pwr347
;main.c,570 :: 		if(P_High==1) led_wr_str (0, 9, "ANT=  0W", 8);
	MOVF        main_P_High+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr348
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
	GOTO        L_show_pwr349
L_show_pwr348:
;main.c,571 :: 		else led_wr_str (0, 9, "ANT=0.0W", 8);
	CLRF        FARG_led_wr_str+0 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr59_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr59_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_show_pwr349:
;main.c,572 :: 		led_wr_str (1, 9, "EFF=  0%", 8);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr60_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr60_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,573 :: 		}
	GOTO        L_show_pwr350
L_show_pwr347:
;main.c,574 :: 		else if(type==1) {   // 1602 LCD
	MOVF        _type+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr351
;main.c,575 :: 		if(P_High==1) led_wr_str (0, 9, "AN=  0W", 7);
	MOVF        main_P_High+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr352
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
	GOTO        L_show_pwr353
L_show_pwr352:
;main.c,576 :: 		else led_wr_str (0, 9, "AN=0.0W", 7);
	CLRF        FARG_led_wr_str+0 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr62_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr62_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       7
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_show_pwr353:
;main.c,577 :: 		led_wr_str (1, 9, "EFF= 0%", 7);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr63_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr63_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       7
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,578 :: 		}
L_show_pwr351:
L_show_pwr350:
L_show_pwr346:
;main.c,579 :: 		}
L_show_pwr342:
;main.c,580 :: 		Loss_mode = 1;
	MOVLW       1
	MOVWF       _Loss_mode+0 
;main.c,581 :: 		}
	GOTO        L_show_pwr354
L_show_pwr341:
;main.c,583 :: 		if(Loss_mode==1) lcd_ind();
	MOVF        _Loss_mode+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr355
	CALL        _lcd_ind+0, 0
L_show_pwr355:
;main.c,584 :: 		Loss_mode = 0;
	CLRF        _Loss_mode+0 
;main.c,585 :: 		}
L_show_pwr354:
;main.c,586 :: 		asm CLRWDT;
	CLRWDT
;main.c,587 :: 		if(Power != Power_old) {
	MOVF        FARG_show_pwr_Power+1, 0 
	XORWF       _Power_old+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__show_pwr664
	MOVF        _Power_old+0, 0 
	XORWF       FARG_show_pwr_Power+0, 0 
L__show_pwr664:
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr356
;main.c,588 :: 		Power_old = Power;
	MOVF        FARG_show_pwr_Power+0, 0 
	MOVWF       _Power_old+0 
	MOVF        FARG_show_pwr_Power+1, 0 
	MOVWF       _Power_old+1 
;main.c,590 :: 		if(P_High==0) {
	MOVF        main_P_High+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr357
;main.c,591 :: 		if(Power >= 100) {   // > 10 W
	MOVLW       128
	XORWF       FARG_show_pwr_Power+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__show_pwr665
	MOVLW       100
	SUBWF       FARG_show_pwr_Power+0, 0 
L__show_pwr665:
	BTFSS       STATUS+0, 0 
	GOTO        L_show_pwr358
;main.c,592 :: 		Power += 5;  // rounding to 1 W
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
;main.c,593 :: 		IntToStr(Power, work_str);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,594 :: 		work_str_2[0] = work_str[2];
	MOVF        _work_str+2, 0 
	MOVWF       _work_str_2+0 
;main.c,595 :: 		work_str_2[1] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+1 
;main.c,596 :: 		work_str_2[2] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+2 
;main.c,597 :: 		work_str_2[3] = 'W';
	MOVLW       87
	MOVWF       _work_str_2+3 
;main.c,598 :: 		}
	GOTO        L_show_pwr359
L_show_pwr358:
;main.c,600 :: 		IntToStr(Power, work_str);
	MOVF        FARG_show_pwr_Power+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        FARG_show_pwr_Power+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,601 :: 		if(work_str[4] != ' ') work_str_2[0] = work_str[4]; else work_str_2[0] = '0';
	MOVF        _work_str+4, 0 
	XORLW       32
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr360
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+0 
	GOTO        L_show_pwr361
L_show_pwr360:
	MOVLW       48
	MOVWF       _work_str_2+0 
L_show_pwr361:
;main.c,602 :: 		work_str_2[1] = '.';
	MOVLW       46
	MOVWF       _work_str_2+1 
;main.c,603 :: 		if(work_str[5] != ' ') work_str_2[2] = work_str[5]; else work_str_2[2] = '0';
	MOVF        _work_str+5, 0 
	XORLW       32
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr362
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+2 
	GOTO        L_show_pwr363
L_show_pwr362:
	MOVLW       48
	MOVWF       _work_str_2+2 
L_show_pwr363:
;main.c,604 :: 		work_str_2[3] = 'W';
	MOVLW       87
	MOVWF       _work_str_2+3 
;main.c,605 :: 		}
L_show_pwr359:
;main.c,606 :: 		}
	GOTO        L_show_pwr364
L_show_pwr357:
;main.c,608 :: 		if(Power<999){   // 0 - 999 Watt
	MOVLW       128
	XORWF       FARG_show_pwr_Power+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       3
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__show_pwr666
	MOVLW       231
	SUBWF       FARG_show_pwr_Power+0, 0 
L__show_pwr666:
	BTFSC       STATUS+0, 0 
	GOTO        L_show_pwr365
;main.c,609 :: 		IntToStr(Power, work_str);
	MOVF        FARG_show_pwr_Power+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        FARG_show_pwr_Power+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,610 :: 		work_str_2[0] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+0 
;main.c,611 :: 		work_str_2[1] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+1 
;main.c,612 :: 		work_str_2[2] = work_str[5];
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+2 
;main.c,613 :: 		work_str_2[3] = 'W';
	MOVLW       87
	MOVWF       _work_str_2+3 
;main.c,614 :: 		}
	GOTO        L_show_pwr366
L_show_pwr365:
;main.c,616 :: 		IntToStr(Power, work_str);
	MOVF        FARG_show_pwr_Power+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        FARG_show_pwr_Power+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,617 :: 		work_str_2[0] = work_str[2];
	MOVF        _work_str+2, 0 
	MOVWF       _work_str_2+0 
;main.c,618 :: 		work_str_2[1] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+1 
;main.c,619 :: 		work_str_2[2] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+2 
;main.c,620 :: 		work_str_2[3] = work_str[5];
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+3 
;main.c,621 :: 		}
L_show_pwr366:
;main.c,622 :: 		}
L_show_pwr364:
;main.c,623 :: 		if(type==4 | type==5) led_wr_str (0, 16+4*12, work_str_2, 4);  // 128*64 OLED
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
	GOTO        L_show_pwr367
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
	GOTO        L_show_pwr368
L_show_pwr367:
;main.c,624 :: 		else if(type!=0) led_wr_str (0, 4, work_str_2, 4);  // 1602  & 128*32
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr369
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
L_show_pwr369:
L_show_pwr368:
;main.c,626 :: 		asm CLRWDT;
	CLRWDT
;main.c,628 :: 		if(Loss_mode==1)  {
	MOVF        _Loss_mode+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr370
;main.c,629 :: 		if(ind==0 & cap==0) swr_a = SWR;
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
	GOTO        L_show_pwr371
	MOVF        FARG_show_pwr_SWR+0, 0 
	MOVWF       _swr_a+0 
	MOVF        FARG_show_pwr_SWR+1, 0 
	MOVWF       _swr_a+1 
L_show_pwr371:
;main.c,630 :: 		a = 1.0 / ((swr_a/100.0 + 100.0/swr_a) * Fid_loss/10.0 * 0.115 + 1.0); // Fider loss
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
;main.c,631 :: 		b = 4.0 / (2.0 + SWR/100.0 + 100.0/SWR);    // SWR loss
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
;main.c,632 :: 		if(a>=1.0) a = 1.0;
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
	GOTO        L_show_pwr372
	MOVLW       0
	MOVWF       show_pwr_a_L0+0 
	MOVLW       0
	MOVWF       show_pwr_a_L0+1 
	MOVLW       0
	MOVWF       show_pwr_a_L0+2 
	MOVLW       127
	MOVWF       show_pwr_a_L0+3 
L_show_pwr372:
;main.c,633 :: 		if(b>=1.0) b = 1.0;
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
	GOTO        L_show_pwr373
	MOVLW       0
	MOVWF       show_pwr_b_L0+0 
	MOVLW       0
	MOVWF       show_pwr_b_L0+1 
	MOVLW       0
	MOVWF       show_pwr_b_L0+2 
	MOVLW       127
	MOVWF       show_pwr_b_L0+3 
L_show_pwr373:
;main.c,634 :: 		p_ant = Power * a * b;
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
;main.c,635 :: 		eff = a * b * 100;
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
;main.c,636 :: 		if(eff>=100) eff = 99;
	MOVLW       128
	XORWF       R1, 0 
	MOVWF       R2 
	MOVLW       128
	SUBWF       R2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__show_pwr667
	MOVLW       100
	SUBWF       R0, 0 
L__show_pwr667:
	BTFSS       STATUS+0, 0 
	GOTO        L_show_pwr374
	MOVLW       99
	MOVWF       show_pwr_eff_L0+0 
	MOVLW       0
	MOVWF       show_pwr_eff_L0+1 
L_show_pwr374:
;main.c,638 :: 		if(P_High==0) {
	MOVF        main_P_High+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr375
;main.c,639 :: 		if(p_ant >= 100) {   // > 10 W
	MOVLW       128
	XORWF       show_pwr_p_ant_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__show_pwr668
	MOVLW       100
	SUBWF       show_pwr_p_ant_L0+0, 0 
L__show_pwr668:
	BTFSS       STATUS+0, 0 
	GOTO        L_show_pwr376
;main.c,640 :: 		p_ant += 5;  // rounding to 1 W
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
;main.c,641 :: 		IntToStr(p_ant, work_str);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,642 :: 		work_str_2[0] = work_str[2];
	MOVF        _work_str+2, 0 
	MOVWF       _work_str_2+0 
;main.c,643 :: 		work_str_2[1] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+1 
;main.c,644 :: 		work_str_2[2] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+2 
;main.c,645 :: 		work_str_2[3] = 'W';
	MOVLW       87
	MOVWF       _work_str_2+3 
;main.c,646 :: 		}
	GOTO        L_show_pwr377
L_show_pwr376:
;main.c,648 :: 		IntToStr(p_ant, work_str);
	MOVF        show_pwr_p_ant_L0+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        show_pwr_p_ant_L0+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,649 :: 		if(work_str[4] != ' ') work_str_2[0] = work_str[4]; else work_str_2[0] = '0';
	MOVF        _work_str+4, 0 
	XORLW       32
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr378
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+0 
	GOTO        L_show_pwr379
L_show_pwr378:
	MOVLW       48
	MOVWF       _work_str_2+0 
L_show_pwr379:
;main.c,650 :: 		work_str_2[1] = '.';
	MOVLW       46
	MOVWF       _work_str_2+1 
;main.c,651 :: 		if(work_str[5] != ' ') work_str_2[2] = work_str[5]; else work_str_2[2] = '0';
	MOVF        _work_str+5, 0 
	XORLW       32
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr380
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+2 
	GOTO        L_show_pwr381
L_show_pwr380:
	MOVLW       48
	MOVWF       _work_str_2+2 
L_show_pwr381:
;main.c,652 :: 		work_str_2[3] = 'W';
	MOVLW       87
	MOVWF       _work_str_2+3 
;main.c,653 :: 		}
L_show_pwr377:
;main.c,654 :: 		}
	GOTO        L_show_pwr382
L_show_pwr375:
;main.c,656 :: 		if(p_ant<999){   // 0 - 1500 Watts
	MOVLW       128
	XORWF       show_pwr_p_ant_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       3
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__show_pwr669
	MOVLW       231
	SUBWF       show_pwr_p_ant_L0+0, 0 
L__show_pwr669:
	BTFSC       STATUS+0, 0 
	GOTO        L_show_pwr383
;main.c,657 :: 		IntToStr(p_ant, work_str);
	MOVF        show_pwr_p_ant_L0+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        show_pwr_p_ant_L0+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,658 :: 		work_str_2[0] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+0 
;main.c,659 :: 		work_str_2[1] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+1 
;main.c,660 :: 		work_str_2[2] = work_str[5];
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+2 
;main.c,661 :: 		work_str_2[3] = 'W';
	MOVLW       87
	MOVWF       _work_str_2+3 
;main.c,662 :: 		}
	GOTO        L_show_pwr384
L_show_pwr383:
;main.c,664 :: 		IntToStr(p_ant, work_str);
	MOVF        show_pwr_p_ant_L0+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        show_pwr_p_ant_L0+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,665 :: 		work_str_2[0] = work_str[2];
	MOVF        _work_str+2, 0 
	MOVWF       _work_str_2+0 
;main.c,666 :: 		work_str_2[1] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+1 
;main.c,667 :: 		work_str_2[2] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+2 
;main.c,668 :: 		work_str_2[3] = work_str[5];
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+3 
;main.c,669 :: 		}
L_show_pwr384:
;main.c,670 :: 		}
L_show_pwr382:
;main.c,671 :: 		if(type==4 | type==5) led_wr_str (4, 16+4*12, work_str_2, 4);  // 128*64 OLED
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
	GOTO        L_show_pwr385
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
	GOTO        L_show_pwr386
L_show_pwr385:
;main.c,672 :: 		else if(type==2 | type==3) led_wr_str (0, 13, work_str_2, 4);  // 128*32
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
	GOTO        L_show_pwr387
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
	GOTO        L_show_pwr388
L_show_pwr387:
;main.c,673 :: 		else if(type!=0) led_wr_str (0, 12, work_str_2, 4);  // 1602
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr389
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
L_show_pwr389:
L_show_pwr388:
L_show_pwr386:
;main.c,675 :: 		IntToStr(eff, work_str);
	MOVF        show_pwr_eff_L0+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        show_pwr_eff_L0+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,676 :: 		work_str_2[0] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+0 
;main.c,677 :: 		work_str_2[1] = work_str[5];
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+1 
;main.c,678 :: 		if(type==4 | type==5) led_wr_str(6, 16+5*12, work_str_2, 2);
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
	GOTO        L_show_pwr390
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
	GOTO        L_show_pwr391
L_show_pwr390:
;main.c,679 :: 		else if(type==2 | type==3) led_wr_str(1, 14, work_str_2, 2);
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
	GOTO        L_show_pwr392
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
	GOTO        L_show_pwr393
L_show_pwr392:
;main.c,680 :: 		else if(type==1) led_wr_str(1, 13, work_str_2, 2);
	MOVF        _type+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr394
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
L_show_pwr394:
L_show_pwr393:
L_show_pwr391:
;main.c,681 :: 		}
L_show_pwr370:
;main.c,682 :: 		}
L_show_pwr356:
;main.c,683 :: 		asm CLRWDT;
	CLRWDT
;main.c,684 :: 		return;
;main.c,685 :: 		}
L_end_show_pwr:
	RETURN      0
; end of _show_pwr

_lcd_pwr:

;main.c,687 :: 		void lcd_pwr() {
;main.c,688 :: 		int p = 0;
	CLRF        lcd_pwr_p_L0+0 
	CLRF        lcd_pwr_p_L0+1 
;main.c,690 :: 		int delta = Auto_delta - 100;
	MOVLW       100
	SUBWF       _Auto_delta+0, 0 
	MOVWF       lcd_pwr_delta_L0+0 
	MOVLW       0
	SUBWFB      _Auto_delta+1, 0 
	MOVWF       lcd_pwr_delta_L0+1 
;main.c,693 :: 		PWR = 0;
	CLRF        _PWR+0 
	CLRF        _PWR+1 
;main.c,694 :: 		asm CLRWDT;
	CLRWDT
;main.c,696 :: 		if(dysp==0 & Relay_off==1){
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
	GOTO        L_lcd_pwr395
;main.c,697 :: 		get_pwr();
	CALL        _get_pwr+0, 0
;main.c,698 :: 		if(PWR>=10){
	MOVLW       128
	XORWF       _PWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_pwr671
	MOVLW       10
	SUBWF       _PWR+0, 0 
L__lcd_pwr671:
	BTFSS       STATUS+0, 0 
	GOTO        L_lcd_pwr396
;main.c,699 :: 		set_ind(ind);
	MOVF        main_ind+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.c,700 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.c,701 :: 		set_SW(SW);
	MOVF        main_SW+0, 0 
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
;main.c,703 :: 		dysp = 1;
	MOVLW       1
	MOVWF       _dysp+0 
;main.c,704 :: 		dysp_on();           // dysplay ON
	CALL        _dysp_on+0, 0
;main.c,705 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
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
;main.c,706 :: 		}
L_lcd_pwr396:
;main.c,707 :: 		return;
	GOTO        L_end_lcd_pwr
;main.c,708 :: 		}
L_lcd_pwr395:
;main.c,710 :: 		cnt = 120;
	MOVLW       120
	MOVWF       lcd_pwr_cnt_L0+0 
;main.c,711 :: 		for(peak_cnt = 0; peak_cnt < cnt; peak_cnt++){
	CLRF        lcd_pwr_peak_cnt_L0+0 
L_lcd_pwr397:
	MOVF        lcd_pwr_cnt_L0+0, 0 
	SUBWF       lcd_pwr_peak_cnt_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_lcd_pwr398
;main.c,712 :: 		if(PORTB.B1==0 | PORTB.B2==0 | (PORTB.B0==0 & tune_btn_release)) {Tune_Button_delay(); if(but==1) {but = 0; return;} }
	BTFSC       PORTB+0, 1 
	GOTO        L__lcd_pwr672
	BSF         R6, 0 
	GOTO        L__lcd_pwr673
L__lcd_pwr672:
	BCF         R6, 0 
L__lcd_pwr673:
	BTFSC       PORTB+0, 2 
	GOTO        L__lcd_pwr674
	BSF         STATUS+0, 0 
	GOTO        L__lcd_pwr675
L__lcd_pwr674:
	BCF         STATUS+0, 0 
L__lcd_pwr675:
	BTFSC       R6, 0 
	GOTO        L__lcd_pwr676
	BTFSC       STATUS+0, 0 
	GOTO        L__lcd_pwr676
	BCF         R6, 1 
	GOTO        L__lcd_pwr677
L__lcd_pwr676:
	BSF         R6, 1 
L__lcd_pwr677:
	BTFSC       PORTB+0, 0 
	GOTO        L__lcd_pwr678
	BSF         STATUS+0, 0 
	GOTO        L__lcd_pwr679
L__lcd_pwr678:
	BCF         STATUS+0, 0 
L__lcd_pwr679:
	BTFSS       STATUS+0, 0 
	GOTO        L__lcd_pwr680
	BTFSS       _tune_btn_release+0, BitPos(_tune_btn_release+0) 
	GOTO        L__lcd_pwr680
	BSF         R6, 0 
	GOTO        L__lcd_pwr681
L__lcd_pwr680:
	BCF         R6, 0 
L__lcd_pwr681:
	BTFSC       R6, 1 
	GOTO        L__lcd_pwr682
	BTFSC       R6, 0 
	GOTO        L__lcd_pwr682
	BCF         STATUS+0, 0 
	GOTO        L__lcd_pwr683
L__lcd_pwr682:
	BSF         STATUS+0, 0 
L__lcd_pwr683:
	BTFSS       STATUS+0, 0 
	GOTO        L_lcd_pwr400
	CALL        _Tune_Button_delay+0, 0
	MOVF        _but+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_pwr401
	CLRF        _but+0 
	GOTO        L_end_lcd_pwr
L_lcd_pwr401:
L_lcd_pwr400:
;main.c,713 :: 		get_pwr();
	CALL        _get_pwr+0, 0
;main.c,714 :: 		if(PWR>p) {p = PWR; SWR_fixed = SWR;}
	MOVLW       128
	XORWF       lcd_pwr_p_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       _PWR+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_pwr684
	MOVF        _PWR+0, 0 
	SUBWF       lcd_pwr_p_L0+0, 0 
L__lcd_pwr684:
	BTFSC       STATUS+0, 0 
	GOTO        L_lcd_pwr402
	MOVF        _PWR+0, 0 
	MOVWF       lcd_pwr_p_L0+0 
	MOVF        _PWR+1, 0 
	MOVWF       lcd_pwr_p_L0+1 
	MOVF        _SWR+0, 0 
	MOVWF       lcd_pwr_SWR_fixed_L0+0 
	MOVF        _SWR+1, 0 
	MOVWF       lcd_pwr_SWR_fixed_L0+1 
L_lcd_pwr402:
;main.c,715 :: 		Delay_ms(3);
	MOVLW       16
	MOVWF       R12, 0
	MOVLW       148
	MOVWF       R13, 0
L_lcd_pwr403:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr403
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr403
	NOP
;main.c,711 :: 		for(peak_cnt = 0; peak_cnt < cnt; peak_cnt++){
	INCF        lcd_pwr_peak_cnt_L0+0, 1 
;main.c,716 :: 		}
	GOTO        L_lcd_pwr397
L_lcd_pwr398:
;main.c,717 :: 		asm CLRWDT;
	CLRWDT
;main.c,718 :: 		if(p>=100){ p = (p + 5) / 10; p*= 10; }  // round to 1 W if more then 100 W
	MOVLW       128
	XORWF       lcd_pwr_p_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_pwr685
	MOVLW       100
	SUBWF       lcd_pwr_p_L0+0, 0 
L__lcd_pwr685:
	BTFSS       STATUS+0, 0 
	GOTO        L_lcd_pwr404
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
L_lcd_pwr404:
;main.c,719 :: 		Power = p;
	MOVF        lcd_pwr_p_L0+0, 0 
	MOVWF       _Power+0 
	MOVF        lcd_pwr_p_L0+1, 0 
	MOVWF       _Power+1 
;main.c,720 :: 		if(Power<10) SWR_fixed = 0;
	MOVLW       128
	XORWF       lcd_pwr_p_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_pwr686
	MOVLW       10
	SUBWF       lcd_pwr_p_L0+0, 0 
L__lcd_pwr686:
	BTFSC       STATUS+0, 0 
	GOTO        L_lcd_pwr405
	CLRF        lcd_pwr_SWR_fixed_L0+0 
	CLRF        lcd_pwr_SWR_fixed_L0+1 
L_lcd_pwr405:
;main.c,721 :: 		lcd_swr(SWR_fixed);
	MOVF        lcd_pwr_SWR_fixed_L0+0, 0 
	MOVWF       FARG_lcd_swr_swr+0 
	MOVF        lcd_pwr_SWR_fixed_L0+1, 0 
	MOVWF       FARG_lcd_swr_swr+1 
	CALL        _lcd_swr+0, 0
;main.c,722 :: 		if(Power>=10 & Dysp_delay>0) {
	MOVLW       128
	XORWF       _Power+1, 0 
	MOVWF       R1 
	MOVLW       128
	SUBWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_pwr687
	MOVLW       10
	SUBWF       _Power+0, 0 
L__lcd_pwr687:
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
	GOTO        L_lcd_pwr406
;main.c,723 :: 		if(dysp==0){ dysp = 1; dysp_on(); }          // dysplay ON
	MOVF        _dysp+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_pwr407
	MOVLW       1
	MOVWF       _dysp+0 
	CALL        _dysp_on+0, 0
L_lcd_pwr407:
;main.c,724 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
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
;main.c,725 :: 		}
L_lcd_pwr406:
;main.c,727 :: 		if(Auto & SWR_fixed>=Auto_delta & ((SWR_fixed>SWR_fixed_old & (SWR_fixed-SWR_fixed_old)>delta) | (SWR_fixed<SWR_fixed_old & (SWR_fixed_old-SWR_fixed)>delta) | SWR_fixed_old==999))
	MOVLW       128
	XORWF       lcd_pwr_SWR_fixed_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       _Auto_delta+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_pwr688
	MOVF        _Auto_delta+0, 0 
	SUBWF       lcd_pwr_SWR_fixed_L0+0, 0 
L__lcd_pwr688:
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
	GOTO        L__lcd_pwr689
	MOVF        lcd_pwr_SWR_fixed_L0+0, 0 
	SUBWF       _SWR_fixed_old+0, 0 
L__lcd_pwr689:
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
	GOTO        L__lcd_pwr690
	MOVF        R1, 0 
	SUBWF       lcd_pwr_delta_L0+0, 0 
L__lcd_pwr690:
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
	GOTO        L__lcd_pwr691
	MOVF        _SWR_fixed_old+0, 0 
	SUBWF       lcd_pwr_SWR_fixed_L0+0, 0 
L__lcd_pwr691:
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
	GOTO        L__lcd_pwr692
	MOVF        R1, 0 
	SUBWF       lcd_pwr_delta_L0+0, 0 
L__lcd_pwr692:
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
	GOTO        L__lcd_pwr693
	MOVLW       231
	XORWF       _SWR_fixed_old+0, 0 
L__lcd_pwr693:
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	MOVF        R5, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_pwr408
;main.c,728 :: 		Soft_tune = 1;
	MOVLW       1
	MOVWF       _Soft_tune+0 
L_lcd_pwr408:
;main.c,730 :: 		if(PORTB.B1==0 | PORTB.B2==0 | (PORTB.B0==0 & tune_btn_release)) {Tune_Button_delay(); if(but==1) {but = 0; return;} }   // Fast return if Tune_Button pressed
	BTFSC       PORTB+0, 1 
	GOTO        L__lcd_pwr694
	BSF         R6, 0 
	GOTO        L__lcd_pwr695
L__lcd_pwr694:
	BCF         R6, 0 
L__lcd_pwr695:
	BTFSC       PORTB+0, 2 
	GOTO        L__lcd_pwr696
	BSF         STATUS+0, 0 
	GOTO        L__lcd_pwr697
L__lcd_pwr696:
	BCF         STATUS+0, 0 
L__lcd_pwr697:
	BTFSC       R6, 0 
	GOTO        L__lcd_pwr698
	BTFSC       STATUS+0, 0 
	GOTO        L__lcd_pwr698
	BCF         R6, 1 
	GOTO        L__lcd_pwr699
L__lcd_pwr698:
	BSF         R6, 1 
L__lcd_pwr699:
	BTFSC       PORTB+0, 0 
	GOTO        L__lcd_pwr700
	BSF         STATUS+0, 0 
	GOTO        L__lcd_pwr701
L__lcd_pwr700:
	BCF         STATUS+0, 0 
L__lcd_pwr701:
	BTFSS       STATUS+0, 0 
	GOTO        L__lcd_pwr702
	BTFSS       _tune_btn_release+0, BitPos(_tune_btn_release+0) 
	GOTO        L__lcd_pwr702
	BSF         R6, 0 
	GOTO        L__lcd_pwr703
L__lcd_pwr702:
	BCF         R6, 0 
L__lcd_pwr703:
	BTFSC       R6, 1 
	GOTO        L__lcd_pwr704
	BTFSC       R6, 0 
	GOTO        L__lcd_pwr704
	BCF         STATUS+0, 0 
	GOTO        L__lcd_pwr705
L__lcd_pwr704:
	BSF         STATUS+0, 0 
L__lcd_pwr705:
	BTFSS       STATUS+0, 0 
	GOTO        L_lcd_pwr409
	CALL        _Tune_Button_delay+0, 0
	MOVF        _but+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_pwr410
	CLRF        _but+0 
	GOTO        L_end_lcd_pwr
L_lcd_pwr410:
L_lcd_pwr409:
;main.c,732 :: 		show_pwr(Power, SWR_fixed);
	MOVF        _Power+0, 0 
	MOVWF       FARG_show_pwr_Power+0 
	MOVF        _Power+1, 0 
	MOVWF       FARG_show_pwr_Power+1 
	MOVF        lcd_pwr_SWR_fixed_L0+0, 0 
	MOVWF       FARG_show_pwr_SWR+0 
	MOVF        lcd_pwr_SWR_fixed_L0+1, 0 
	MOVWF       FARG_show_pwr_SWR+1 
	CALL        _show_pwr+0, 0
;main.c,734 :: 		if(PORTB.B1==0 | PORTB.B2==0 | (PORTB.B0==0 & tune_btn_release)) {Tune_Button_delay(); if(but==1) {but = 0; return;} }
	BTFSC       PORTB+0, 1 
	GOTO        L__lcd_pwr706
	BSF         R6, 0 
	GOTO        L__lcd_pwr707
L__lcd_pwr706:
	BCF         R6, 0 
L__lcd_pwr707:
	BTFSC       PORTB+0, 2 
	GOTO        L__lcd_pwr708
	BSF         STATUS+0, 0 
	GOTO        L__lcd_pwr709
L__lcd_pwr708:
	BCF         STATUS+0, 0 
L__lcd_pwr709:
	BTFSC       R6, 0 
	GOTO        L__lcd_pwr710
	BTFSC       STATUS+0, 0 
	GOTO        L__lcd_pwr710
	BCF         R6, 1 
	GOTO        L__lcd_pwr711
L__lcd_pwr710:
	BSF         R6, 1 
L__lcd_pwr711:
	BTFSC       PORTB+0, 0 
	GOTO        L__lcd_pwr712
	BSF         STATUS+0, 0 
	GOTO        L__lcd_pwr713
L__lcd_pwr712:
	BCF         STATUS+0, 0 
L__lcd_pwr713:
	BTFSS       STATUS+0, 0 
	GOTO        L__lcd_pwr714
	BTFSS       _tune_btn_release+0, BitPos(_tune_btn_release+0) 
	GOTO        L__lcd_pwr714
	BSF         R6, 0 
	GOTO        L__lcd_pwr715
L__lcd_pwr714:
	BCF         R6, 0 
L__lcd_pwr715:
	BTFSC       R6, 1 
	GOTO        L__lcd_pwr716
	BTFSC       R6, 0 
	GOTO        L__lcd_pwr716
	BCF         STATUS+0, 0 
	GOTO        L__lcd_pwr717
L__lcd_pwr716:
	BSF         STATUS+0, 0 
L__lcd_pwr717:
	BTFSS       STATUS+0, 0 
	GOTO        L_lcd_pwr411
	CALL        _Tune_Button_delay+0, 0
	MOVF        _but+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_pwr412
	CLRF        _but+0 
	GOTO        L_end_lcd_pwr
L_lcd_pwr412:
L_lcd_pwr411:
;main.c,735 :: 		asm CLRWDT;
	CLRWDT
;main.c,736 :: 		if(Overload==1) {
	MOVF        main_Overload+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_pwr413
;main.c,737 :: 		if(type==4 | type==5) {                  // 128*64 OLED
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
	GOTO        L_lcd_pwr414
;main.c,738 :: 		led_wr_str (2, 16, "        ", 8);
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
;main.c,739 :: 		delay_ms(100);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       8
	MOVWF       R12, 0
	MOVLW       119
	MOVWF       R13, 0
L_lcd_pwr415:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr415
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr415
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr415
;main.c,740 :: 		led_wr_str (2, 16, "OVERLOAD", 8);
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
;main.c,741 :: 		delay_ms(500);
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
;main.c,742 :: 		asm CLRWDT;
	CLRWDT
;main.c,743 :: 		led_wr_str (2, 16, "        ", 8);
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
;main.c,744 :: 		delay_ms(300);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       23
	MOVWF       R12, 0
	MOVLW       106
	MOVWF       R13, 0
L_lcd_pwr417:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr417
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr417
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr417
	NOP
;main.c,745 :: 		asm CLRWDT;
	CLRWDT
;main.c,746 :: 		led_wr_str (2, 16, "OVERLOAD", 8);
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
;main.c,747 :: 		delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_lcd_pwr418:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr418
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr418
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr418
	NOP
	NOP
;main.c,748 :: 		asm CLRWDT;
	CLRWDT
;main.c,749 :: 		led_wr_str (2, 16, "        ", 8);
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
;main.c,750 :: 		delay_ms(300);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       23
	MOVWF       R12, 0
	MOVLW       106
	MOVWF       R13, 0
L_lcd_pwr419:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr419
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr419
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr419
	NOP
;main.c,751 :: 		asm CLRWDT;
	CLRWDT
;main.c,752 :: 		led_wr_str (2, 16, "OVERLOAD", 8);
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
;main.c,753 :: 		delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_lcd_pwr420:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr420
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr420
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr420
	NOP
	NOP
;main.c,754 :: 		asm CLRWDT;
	CLRWDT
;main.c,755 :: 		led_wr_str (2, 16, "        ", 8);
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
;main.c,756 :: 		delay_ms(100);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       8
	MOVWF       R12, 0
	MOVLW       119
	MOVWF       R13, 0
L_lcd_pwr421:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr421
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr421
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr421
;main.c,757 :: 		led_wr_str (2, 16, "SWR=    ", 8);
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr71_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr71_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,758 :: 		}
	GOTO        L_lcd_pwr422
L_lcd_pwr414:
;main.c,759 :: 		else if(type!=0)  {        // 1602  & 128*32
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_pwr423
;main.c,760 :: 		led_wr_str (1, 0, "        ", 8);
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
;main.c,761 :: 		delay_ms(100);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       8
	MOVWF       R12, 0
	MOVLW       119
	MOVWF       R13, 0
L_lcd_pwr424:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr424
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr424
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr424
;main.c,762 :: 		led_wr_str (1, 0, "OVERLOAD", 8);
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
;main.c,763 :: 		delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_lcd_pwr425:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr425
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr425
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr425
	NOP
	NOP
;main.c,764 :: 		asm CLRWDT;
	CLRWDT
;main.c,765 :: 		led_wr_str (1, 0, "        ", 8);
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
;main.c,766 :: 		delay_ms(300);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       23
	MOVWF       R12, 0
	MOVLW       106
	MOVWF       R13, 0
L_lcd_pwr426:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr426
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr426
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr426
	NOP
;main.c,767 :: 		asm CLRWDT;
	CLRWDT
;main.c,768 :: 		led_wr_str (1, 0, "OVERLOAD", 8);
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
;main.c,769 :: 		delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_lcd_pwr427:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr427
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr427
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr427
	NOP
	NOP
;main.c,770 :: 		asm CLRWDT;
	CLRWDT
;main.c,771 :: 		led_wr_str (1, 0, "        ", 8);
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
;main.c,772 :: 		delay_ms(300);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       23
	MOVWF       R12, 0
	MOVLW       106
	MOVWF       R13, 0
L_lcd_pwr428:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr428
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr428
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr428
	NOP
;main.c,773 :: 		asm CLRWDT;
	CLRWDT
;main.c,774 :: 		led_wr_str (1, 0, "OVERLOAD", 8);
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
;main.c,775 :: 		delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_lcd_pwr429:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr429
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr429
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr429
	NOP
	NOP
;main.c,776 :: 		asm CLRWDT;
	CLRWDT
;main.c,777 :: 		led_wr_str (1, 0, "        ", 8);
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
;main.c,778 :: 		delay_ms(100);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       8
	MOVWF       R12, 0
	MOVLW       119
	MOVWF       R13, 0
L_lcd_pwr430:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr430
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr430
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr430
;main.c,779 :: 		led_wr_str (1, 0, "SWR=    ", 8);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CLRF        FARG_led_wr_str+0 
	MOVLW       ?lstr79_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr79_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,780 :: 		}
L_lcd_pwr423:
L_lcd_pwr422:
;main.c,781 :: 		asm CLRWDT;
	CLRWDT
;main.c,782 :: 		SWR_old = 10000;
	MOVLW       16
	MOVWF       _SWR_old+0 
	MOVLW       39
	MOVWF       _SWR_old+1 
;main.c,783 :: 		lcd_swr(SWR_fixed);
	MOVF        lcd_pwr_SWR_fixed_L0+0, 0 
	MOVWF       FARG_lcd_swr_swr+0 
	MOVF        lcd_pwr_SWR_fixed_L0+1, 0 
	MOVWF       FARG_lcd_swr_swr+1 
	CALL        _lcd_swr+0, 0
;main.c,784 :: 		}
L_lcd_pwr413:
;main.c,785 :: 		return;
;main.c,786 :: 		}
L_end_lcd_pwr:
	RETURN      0
; end of _lcd_pwr

_lcd_ind:

;main.c,788 :: 		void lcd_ind() {
;main.c,790 :: 		asm CLRWDT;
	CLRWDT
;main.c,792 :: 		work_int = 0;
	CLRF        _work_int+0 
	CLRF        _work_int+1 
;main.c,793 :: 		if(ind.B0) work_int += Ind1;
	BTFSS       main_ind+0, 0 
	GOTO        L_lcd_ind432
	MOVF        _Ind1+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Ind1+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind432:
;main.c,794 :: 		if(ind.B1) work_int += Ind2;
	BTFSS       main_ind+0, 1 
	GOTO        L_lcd_ind433
	MOVF        _Ind2+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Ind2+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind433:
;main.c,795 :: 		if(ind.B2) work_int += Ind3;
	BTFSS       main_ind+0, 2 
	GOTO        L_lcd_ind434
	MOVF        _Ind3+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Ind3+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind434:
;main.c,796 :: 		if(ind.B3) work_int += Ind4;
	BTFSS       main_ind+0, 3 
	GOTO        L_lcd_ind435
	MOVF        _Ind4+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Ind4+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind435:
;main.c,797 :: 		if(ind.B4) work_int += Ind5;
	BTFSS       main_ind+0, 4 
	GOTO        L_lcd_ind436
	MOVF        _Ind5+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Ind5+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind436:
;main.c,798 :: 		if(ind.B5) work_int += Ind6;
	BTFSS       main_ind+0, 5 
	GOTO        L_lcd_ind437
	MOVF        _Ind6+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Ind6+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind437:
;main.c,799 :: 		if(ind.B6) work_int += Ind7;
	BTFSS       main_ind+0, 6 
	GOTO        L_lcd_ind438
	MOVF        _Ind7+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Ind7+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind438:
;main.c,800 :: 		if(work_int>9999) {    // more then 9999 nH
	MOVLW       128
	XORLW       39
	MOVWF       R0 
	MOVLW       128
	XORWF       _work_int+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_ind719
	MOVF        _work_int+0, 0 
	SUBLW       15
L__lcd_ind719:
	BTFSC       STATUS+0, 0 
	GOTO        L_lcd_ind439
;main.c,801 :: 		work_int += 50; // round
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
;main.c,802 :: 		IntToStr(work_int, work_str);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,803 :: 		work_str_2[0] = work_str[1];
	MOVF        _work_str+1, 0 
	MOVWF       _work_str_2+0 
;main.c,804 :: 		work_str_2[1] = work_str[2];
	MOVF        _work_str+2, 0 
	MOVWF       _work_str_2+1 
;main.c,805 :: 		work_str_2[2] = '.';
	MOVLW       46
	MOVWF       _work_str_2+2 
;main.c,806 :: 		work_str_2[3] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+3 
;main.c,807 :: 		}
	GOTO        L_lcd_ind440
L_lcd_ind439:
;main.c,809 :: 		IntToStr(work_int, work_str);
	MOVF        _work_int+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _work_int+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,810 :: 		if(work_str[2] != ' ') work_str_2[0] = work_str[2]; else work_str_2[0] = '0';
	MOVF        _work_str+2, 0 
	XORLW       32
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_ind441
	MOVF        _work_str+2, 0 
	MOVWF       _work_str_2+0 
	GOTO        L_lcd_ind442
L_lcd_ind441:
	MOVLW       48
	MOVWF       _work_str_2+0 
L_lcd_ind442:
;main.c,811 :: 		work_str_2[1] = '.';
	MOVLW       46
	MOVWF       _work_str_2+1 
;main.c,812 :: 		if(work_str[3] != ' ') work_str_2[2] = work_str[3]; else work_str_2[2] = '0';
	MOVF        _work_str+3, 0 
	XORLW       32
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_ind443
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+2 
	GOTO        L_lcd_ind444
L_lcd_ind443:
	MOVLW       48
	MOVWF       _work_str_2+2 
L_lcd_ind444:
;main.c,813 :: 		if(work_str[4] != ' ') work_str_2[3] = work_str[4]; else work_str_2[3] = '0';
	MOVF        _work_str+4, 0 
	XORLW       32
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_ind445
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+3 
	GOTO        L_lcd_ind446
L_lcd_ind445:
	MOVLW       48
	MOVWF       _work_str_2+3 
L_lcd_ind446:
;main.c,814 :: 		}
L_lcd_ind440:
;main.c,815 :: 		if(type==4 | type==5) {  // 128*64 OLED
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
	GOTO        L_lcd_ind447
;main.c,816 :: 		if(SW==1) column = 4; else column = 6;
	MOVF        main_SW+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_ind448
	MOVLW       4
	MOVWF       lcd_ind_column_L0+0 
	GOTO        L_lcd_ind449
L_lcd_ind448:
	MOVLW       6
	MOVWF       lcd_ind_column_L0+0 
L_lcd_ind449:
;main.c,817 :: 		led_wr_str (column, 16, "L=", 2);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr80_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr80_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,818 :: 		led_wr_str (column, 16+6*12, "uH", 2);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       88
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr81_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr81_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,819 :: 		led_wr_str (column, 16+2*12, work_str_2, 4);
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
;main.c,820 :: 		}
	GOTO        L_lcd_ind450
L_lcd_ind447:
;main.c,821 :: 		else if(type==2 | type==3) {// 128*32 OLED
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
	GOTO        L_lcd_ind451
;main.c,822 :: 		if(SW==1) column = 0; else column = 1;
	MOVF        main_SW+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_ind452
	CLRF        lcd_ind_column_L0+0 
	GOTO        L_lcd_ind453
L_lcd_ind452:
	MOVLW       1
	MOVWF       lcd_ind_column_L0+0 
L_lcd_ind453:
;main.c,823 :: 		led_wr_str (column, 9, "L=", 2);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr82_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr82_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,824 :: 		led_wr_str (column, 15, "uH", 2);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       15
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr83_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr83_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,825 :: 		led_wr_str (column, 11, work_str_2, 4);
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
;main.c,826 :: 		}
	GOTO        L_lcd_ind454
L_lcd_ind451:
;main.c,827 :: 		else if(type==1) { //  1602 LCD
	MOVF        _type+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_ind455
;main.c,828 :: 		if(SW==1) column = 0; else column = 1;
	MOVF        main_SW+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_ind456
	CLRF        lcd_ind_column_L0+0 
	GOTO        L_lcd_ind457
L_lcd_ind456:
	MOVLW       1
	MOVWF       lcd_ind_column_L0+0 
L_lcd_ind457:
;main.c,829 :: 		led_wr_str (column, 9, "L=", 2);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr84_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr84_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,830 :: 		led_wr_str (column, 15, "u", 1);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       15
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr85_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr85_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,831 :: 		led_wr_str (column, 11, work_str_2, 4);
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
;main.c,832 :: 		}
L_lcd_ind455:
L_lcd_ind454:
L_lcd_ind450:
;main.c,834 :: 		asm CLRWDT;
	CLRWDT
;main.c,836 :: 		work_int = 0;
	CLRF        _work_int+0 
	CLRF        _work_int+1 
;main.c,837 :: 		if(cap.B0) work_int += Cap1;
	BTFSS       main_cap+0, 0 
	GOTO        L_lcd_ind459
	MOVF        _Cap1+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Cap1+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind459:
;main.c,838 :: 		if(cap.B1) work_int += Cap2;
	BTFSS       main_cap+0, 1 
	GOTO        L_lcd_ind460
	MOVF        _Cap2+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Cap2+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind460:
;main.c,839 :: 		if(cap.B2) work_int += Cap3;
	BTFSS       main_cap+0, 2 
	GOTO        L_lcd_ind461
	MOVF        _Cap3+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Cap3+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind461:
;main.c,840 :: 		if(cap.B3) work_int += Cap4;
	BTFSS       main_cap+0, 3 
	GOTO        L_lcd_ind462
	MOVF        _Cap4+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Cap4+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind462:
;main.c,841 :: 		if(cap.B4) work_int += Cap5;
	BTFSS       main_cap+0, 4 
	GOTO        L_lcd_ind463
	MOVF        _Cap5+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Cap5+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind463:
;main.c,842 :: 		if(cap.B5) work_int += Cap6;
	BTFSS       main_cap+0, 5 
	GOTO        L_lcd_ind464
	MOVF        _Cap6+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Cap6+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind464:
;main.c,843 :: 		if(cap.B6) work_int += Cap7;
	BTFSS       main_cap+0, 6 
	GOTO        L_lcd_ind465
	MOVF        _Cap7+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Cap7+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind465:
;main.c,844 :: 		IntToStr(work_int, work_str);
	MOVF        _work_int+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _work_int+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,845 :: 		work_str_2[0] = work_str[2];
	MOVF        _work_str+2, 0 
	MOVWF       _work_str_2+0 
;main.c,846 :: 		work_str_2[1] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+1 
;main.c,847 :: 		work_str_2[2] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+2 
;main.c,848 :: 		work_str_2[3] = work_str[5];
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+3 
;main.c,850 :: 		if(type==4 | type==5) {  // 128*64 OLED
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
	GOTO        L_lcd_ind466
;main.c,851 :: 		if(SW==1) column = 6; else column = 4;
	MOVF        main_SW+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_ind467
	MOVLW       6
	MOVWF       lcd_ind_column_L0+0 
	GOTO        L_lcd_ind468
L_lcd_ind467:
	MOVLW       4
	MOVWF       lcd_ind_column_L0+0 
L_lcd_ind468:
;main.c,852 :: 		led_wr_str (column, 16, "C=", 2);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr86_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr86_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,853 :: 		led_wr_str (column, 16+6*12, "pF", 2);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       88
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr87_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr87_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,854 :: 		led_wr_str (column, 16+2*12, work_str_2, 4);
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
;main.c,855 :: 		}
	GOTO        L_lcd_ind469
L_lcd_ind466:
;main.c,856 :: 		else if(type==2 | type==3) {// 128*32 OLED
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
	GOTO        L_lcd_ind470
;main.c,857 :: 		if(SW==1) column = 1; else column = 0;
	MOVF        main_SW+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_ind471
	MOVLW       1
	MOVWF       lcd_ind_column_L0+0 
	GOTO        L_lcd_ind472
L_lcd_ind471:
	CLRF        lcd_ind_column_L0+0 
L_lcd_ind472:
;main.c,858 :: 		led_wr_str (column, 9, "C=", 2);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr88_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr88_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,859 :: 		led_wr_str (column, 15, "pF", 2);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       15
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr89_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr89_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,860 :: 		led_wr_str (column, 11, work_str_2, 4);
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
;main.c,861 :: 		}
	GOTO        L_lcd_ind473
L_lcd_ind470:
;main.c,862 :: 		else if(type==1) { // 1602 LCD
	MOVF        _type+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_ind474
;main.c,863 :: 		if(SW==1) column = 1; else column = 0;
	MOVF        main_SW+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_ind475
	MOVLW       1
	MOVWF       lcd_ind_column_L0+0 
	GOTO        L_lcd_ind476
L_lcd_ind475:
	CLRF        lcd_ind_column_L0+0 
L_lcd_ind476:
;main.c,864 :: 		led_wr_str (column, 9, "C=", 2);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr90_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr90_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,865 :: 		led_wr_str (column, 15, "p", 1);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       15
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr91_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr91_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,866 :: 		led_wr_str (column, 11, work_str_2, 4);
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
;main.c,867 :: 		}
L_lcd_ind474:
L_lcd_ind473:
L_lcd_ind469:
;main.c,869 :: 		asm CLRWDT;
	CLRWDT
;main.c,870 :: 		return;
;main.c,871 :: 		}
L_end_lcd_ind:
	RETURN      0
; end of _lcd_ind

_Test_init:

;main.c,874 :: 		void Test_init(void) { // Test mode
;main.c,875 :: 		if(type==4 | type==5)        // 128*64 OLED
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
	GOTO        L_Test_init477
;main.c,876 :: 		led_wr_str (0, 10, "TEST MODE", 9);
	CLRF        FARG_led_wr_str+0 
	MOVLW       10
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr92_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr92_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_Test_init478
L_Test_init477:
;main.c,877 :: 		else if(type!=0)            // 1602 LCD  or 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_Test_init479
;main.c,878 :: 		led_wr_str (0, 3, "TEST MODE", 9);
	CLRF        FARG_led_wr_str+0 
	MOVLW       3
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr93_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr93_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_Test_init479:
L_Test_init478:
;main.c,879 :: 		asm CLRWDT;
	CLRWDT
;main.c,880 :: 		Delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_Test_init480:
	DECFSZ      R13, 1, 1
	BRA         L_Test_init480
	DECFSZ      R12, 1, 1
	BRA         L_Test_init480
	DECFSZ      R11, 1, 1
	BRA         L_Test_init480
	NOP
	NOP
;main.c,881 :: 		asm CLRWDT;
	CLRWDT
;main.c,882 :: 		Delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_Test_init481:
	DECFSZ      R13, 1, 1
	BRA         L_Test_init481
	DECFSZ      R12, 1, 1
	BRA         L_Test_init481
	DECFSZ      R11, 1, 1
	BRA         L_Test_init481
	NOP
	NOP
;main.c,883 :: 		asm CLRWDT;
	CLRWDT
;main.c,884 :: 		Delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_Test_init482:
	DECFSZ      R13, 1, 1
	BRA         L_Test_init482
	DECFSZ      R12, 1, 1
	BRA         L_Test_init482
	DECFSZ      R11, 1, 1
	BRA         L_Test_init482
	NOP
	NOP
;main.c,885 :: 		asm CLRWDT;
	CLRWDT
;main.c,886 :: 		Delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_Test_init483:
	DECFSZ      R13, 1, 1
	BRA         L_Test_init483
	DECFSZ      R12, 1, 1
	BRA         L_Test_init483
	DECFSZ      R11, 1, 1
	BRA         L_Test_init483
	NOP
	NOP
;main.c,887 :: 		asm CLRWDT;
	CLRWDT
;main.c,888 :: 		if(type==4 | type==5)        // 128*64 OLED
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
	GOTO        L_Test_init484
;main.c,889 :: 		led_wr_str (0, 10, "         ", 9);
	CLRF        FARG_led_wr_str+0 
	MOVLW       10
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr94_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr94_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_Test_init485
L_Test_init484:
;main.c,890 :: 		else if(type!=0)            // 1602 LCD  or 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_Test_init486
;main.c,891 :: 		led_wr_str (0, 3,  "         ", 9);
	CLRF        FARG_led_wr_str+0 
	MOVLW       3
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr95_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr95_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_Test_init486:
L_Test_init485:
;main.c,892 :: 		atu_reset();
	CALL        _atu_reset+0, 0
;main.c,893 :: 		SW = 1; // C to OUT
	MOVLW       1
	MOVWF       main_SW+0 
;main.c,894 :: 		set_sw(SW);
	MOVLW       1
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
;main.c,895 :: 		EEPROM_Write(255, cap);
	MOVLW       255
	MOVWF       FARG_EEPROM_Write_address+0 
	MOVF        main_cap+0, 0 
	MOVWF       FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,896 :: 		EEPROM_Write(254, ind);
	MOVLW       254
	MOVWF       FARG_EEPROM_Write_address+0 
	MOVF        main_ind+0, 0 
	MOVWF       FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,897 :: 		EEPROM_Write(253, SW);
	MOVLW       253
	MOVWF       FARG_EEPROM_Write_address+0 
	MOVF        main_SW+0, 0 
	MOVWF       FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,899 :: 		if(type==4 | type==5)        // 128*64 OLED
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
	GOTO        L_Test_init487
;main.c,900 :: 		led_wr_str (0, 16+12*8, "l", 1);
	CLRF        FARG_led_wr_str+0 
	MOVLW       112
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr96_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr96_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_Test_init488
L_Test_init487:
;main.c,901 :: 		else if(type!=0)             // 1602 LCD or 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_Test_init489
;main.c,902 :: 		led_wr_str (0, 8, "l", 1);
	CLRF        FARG_led_wr_str+0 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr97_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr97_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_Test_init489:
L_Test_init488:
;main.c,904 :: 		lcd_prep_short = 1;
	MOVLW       1
	MOVWF       _lcd_prep_short+0 
;main.c,905 :: 		lcd_prep();
	CALL        _lcd_prep+0, 0
;main.c,906 :: 		return;
;main.c,907 :: 		}
L_end_Test_init:
	RETURN      0
; end of _Test_init

_cells_init:

;main.c,910 :: 		void cells_init(void) {
;main.c,912 :: 		asm CLRWDT;
	CLRWDT
;main.c,914 :: 		type = EEPROM_Read(1); // type of display
	MOVLW       1
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       _type+0 
;main.c,915 :: 		if(EEPROM_Read(2) == 1) Auto = 1;
	MOVLW       2
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_cells_init490
	MOVLW       1
	MOVWF       _Auto+0 
L_cells_init490:
;main.c,916 :: 		Rel_Del = Bcd2Dec(EEPROM_Read(3)); // Relay's Delay
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
;main.c,917 :: 		Auto_delta = Bcd2Dec(EEPROM_Read(4)) * 10;  // Auto_delta
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
;main.c,918 :: 		min_for_start = Bcd2Dec(EEPROM_Read(5)) * 10; // P_min_for_start
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
;main.c,919 :: 		max_for_start = Bcd2Dec(EEPROM_Read(6)) * 10; // P_max_for_start
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
;main.c,922 :: 		max_swr = Bcd2Dec(EEPROM_Read(9)) * 10; // Max SWR
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
;main.c,923 :: 		L_q = EEPROM_Read(10);
	MOVLW       10
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_L_q+0 
;main.c,924 :: 		L_linear = EEPROM_Read(11);
	MOVLW       11
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_L_linear+0 
;main.c,925 :: 		C_q = EEPROM_Read(12);
	MOVLW       12
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_C_q+0 
;main.c,926 :: 		C_linear = EEPROM_Read(13);
	MOVLW       13
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_C_linear+0 
;main.c,927 :: 		D_correction = EEPROM_Read(14);
	MOVLW       14
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_D_correction+0 
;main.c,928 :: 		L_invert = EEPROM_Read(15);
	MOVLW       15
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_L_invert+0 
;main.c,930 :: 		asm CLRWDT;
	CLRWDT
;main.c,931 :: 		Ind1 =  Bcd2Dec(EEPROM_Read(16)) * 100 + Bcd2Dec(EEPROM_Read(17));  // Ind1
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
;main.c,932 :: 		Ind2 =  Bcd2Dec(EEPROM_Read(18)) * 100 + Bcd2Dec(EEPROM_Read(19));  // Ind2
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
;main.c,933 :: 		Ind3 =  Bcd2Dec(EEPROM_Read(20)) * 100 + Bcd2Dec(EEPROM_Read(21));  // Ind3
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
;main.c,934 :: 		Ind4 =  Bcd2Dec(EEPROM_Read(22)) * 100 + Bcd2Dec(EEPROM_Read(23));  // Ind4
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
;main.c,935 :: 		Ind5 =  Bcd2Dec(EEPROM_Read(24)) * 100 + Bcd2Dec(EEPROM_Read(25));  // Ind5
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
;main.c,936 :: 		Ind6 =  Bcd2Dec(EEPROM_Read(26)) * 100 + Bcd2Dec(EEPROM_Read(27));  // Ind6
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
;main.c,937 :: 		Ind7 =  Bcd2Dec(EEPROM_Read(28)) * 100 + Bcd2Dec(EEPROM_Read(29));  // Ind7
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
;main.c,939 :: 		Cap1 =  Bcd2Dec(EEPROM_Read(32)) * 100 + Bcd2Dec(EEPROM_Read(33));  // Cap1
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
;main.c,940 :: 		Cap2 =  Bcd2Dec(EEPROM_Read(34)) * 100 + Bcd2Dec(EEPROM_Read(35));  // Cap2
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
;main.c,941 :: 		Cap3 =  Bcd2Dec(EEPROM_Read(36)) * 100 + Bcd2Dec(EEPROM_Read(37));  // Cap3
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
;main.c,942 :: 		Cap4 =  Bcd2Dec(EEPROM_Read(38)) * 100 + Bcd2Dec(EEPROM_Read(39));  // Cap4
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
;main.c,943 :: 		Cap5 =  Bcd2Dec(EEPROM_Read(40)) * 100 + Bcd2Dec(EEPROM_Read(41));  // Cap5
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
;main.c,944 :: 		Cap6 =  Bcd2Dec(EEPROM_Read(42)) * 100 + Bcd2Dec(EEPROM_Read(43));  // Cap6
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
;main.c,945 :: 		Cap7 =  Bcd2Dec(EEPROM_Read(44)) * 100 + Bcd2Dec(EEPROM_Read(45));  // Cap7
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
;main.c,947 :: 		P_High = EEPROM_Read(0x30);  // High power
	MOVLW       48
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_P_High+0 
;main.c,948 :: 		K_Mult = Bcd2Dec(EEPROM_Read(0x31)); // Tandem Match rate
	MOVLW       49
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	MOVWF       main_K_Mult+0 
;main.c,949 :: 		Dysp_delay = Bcd2Dec(EEPROM_Read(0x32)); // Dysplay ON delay
	MOVLW       50
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	MOVWF       _Dysp_delay+0 
;main.c,950 :: 		Loss_ind = EEPROM_Read(0x33);
	MOVLW       51
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_Loss_ind+0 
;main.c,951 :: 		Fid_loss = Bcd2Dec(EEPROM_Read(0x34));
	MOVLW       52
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	MOVWF       _Fid_loss+0 
;main.c,952 :: 		Relay_off = Bcd2Dec(EEPROM_Read(0x35));
	MOVLW       53
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	MOVWF       main_Relay_off+0 
;main.c,953 :: 		asm CLRWDT;
	CLRWDT
;main.c,954 :: 		return;
;main.c,956 :: 		}
L_end_cells_init:
	RETURN      0
; end of _cells_init

_show_loss:

;main.c,958 :: 		void show_loss(void) {
;main.c,959 :: 		IntToStr(Fid_loss, work_str);
	MOVF        _Fid_loss+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVLW       0
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,960 :: 		if(Fid_loss>=10) work_str_2[0] = work_str[4];
	MOVLW       10
	SUBWF       _Fid_loss+0, 0 
	BTFSS       STATUS+0, 0 
	GOTO        L_show_loss491
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+0 
	GOTO        L_show_loss492
L_show_loss491:
;main.c,961 :: 		else work_str_2[0] = '0';
	MOVLW       48
	MOVWF       _work_str_2+0 
L_show_loss492:
;main.c,962 :: 		work_str_2[1] = '.';
	MOVLW       46
	MOVWF       _work_str_2+1 
;main.c,963 :: 		work_str_2[2] = work_str[5];
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+2 
;main.c,964 :: 		if(type==4 | type==5) led_wr_str (4, 6, work_str_2, 3); // 128*64
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
	GOTO        L_show_loss493
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
	GOTO        L_show_loss494
L_show_loss493:
;main.c,965 :: 		else if(type!=0) led_wr_str (1, 0, work_str_2, 3); // 1602 | 128*32
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_show_loss495
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
L_show_loss495:
L_show_loss494:
;main.c,966 :: 		return;
;main.c,967 :: 		}
L_end_show_loss:
	RETURN      0
; end of _show_loss
