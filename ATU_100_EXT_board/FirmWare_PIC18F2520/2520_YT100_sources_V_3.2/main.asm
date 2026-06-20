
_correction:

;main.h,44 :: 		int correction(int input) {
;main.h,45 :: 		if(input <= 80) return 0;
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction530
	MOVF        FARG_correction_input+0, 0 
	SUBLW       80
L__correction530:
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
	GOTO        L__correction531
	MOVF        FARG_correction_input+0, 0 
	SUBLW       171
L__correction531:
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
	GOTO        L__correction532
	MOVF        FARG_correction_input+0, 0 
	SUBLW       72
L__correction532:
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
	GOTO        L__correction533
	MOVF        FARG_correction_input+0, 0 
	SUBLW       70
L__correction533:
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
	GOTO        L__correction534
	MOVF        FARG_correction_input+0, 0 
	SUBLW       52
L__correction534:
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
	GOTO        L__correction535
	MOVF        FARG_correction_input+0, 0 
	SUBLW       76
L__correction535:
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
	GOTO        L__correction536
	MOVF        FARG_correction_input+0, 0 
	SUBLW       133
L__correction536:
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
	GOTO        L__correction537
	MOVF        FARG_correction_input+0, 0 
	SUBLW       250
L__correction537:
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
	GOTO        L__correction538
	MOVF        FARG_correction_input+0, 0 
	SUBLW       15
L__correction538:
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
	GOTO        L__correction539
	MOVF        FARG_correction_input+0, 0 
	SUBLW       230
L__correction539:
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
	GOTO        L__correction540
	MOVF        FARG_correction_input+0, 0 
	SUBLW       234
L__correction540:
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
	GOTO        L__correction541
	MOVF        FARG_correction_input+0, 0 
	SUBLW       54
L__correction541:
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
	GOTO        L__correction542
	MOVF        FARG_correction_input+0, 0 
	SUBLW       4
L__correction542:
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
	GOTO        L__get_forward545
	MOVF        R0, 0 
	SUBLW       232
L__get_forward545:
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
	GOTO        L__get_pwr547
	MOVF        get_pwr_Forward_L0+2, 0 
	SUBWF       get_pwr_Reverse_L0+2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_pwr547
	MOVF        get_pwr_Forward_L0+1, 0 
	SUBWF       get_pwr_Reverse_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_pwr547
	MOVF        get_pwr_Forward_L0+0, 0 
	SUBWF       get_pwr_Reverse_L0+0, 0 
L__get_pwr547:
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
	GOTO        L__get_pwr548
	MOVF        R2, 0 
	SUBLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__get_pwr548
	MOVF        R1, 0 
	SUBLW       3
	BTFSS       STATUS+0, 2 
	GOTO        L__get_pwr548
	MOVF        R0, 0 
	SUBLW       231
L__get_pwr548:
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
	GOTO        L__get_pwr549
	MOVLW       0
	SUBWF       get_pwr_Forward_L0+2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_pwr549
	MOVLW       0
	SUBWF       get_pwr_Forward_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_pwr549
	MOVLW       100
	SUBWF       get_pwr_Forward_L0+0, 0 
L__get_pwr549:
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
	GOTO        L__get_swr551
	MOVF        _PWR+0, 0 
	SUBWF       _P_max+0, 0 
L__get_swr551:
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
	GOTO        L__get_swr552
	MOVF        main_min_for_start+0, 0 
	SUBWF       _PWR+0, 0 
L__get_swr552:
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
	GOTO        L__get_swr553
	MOVF        _PWR+0, 0 
	SUBWF       main_max_for_start+0, 0 
L__get_swr553:
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
	GOTO        L__get_swr554
	MOVF        main_max_for_start+0, 0 
	SUBLW       0
L__get_swr554:
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
	GOTO        L__get_swr555
	MOVF        _PWR+0, 0 
	SUBWF       _P_max+0, 0 
L__get_swr555:
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

;main.h,141 :: 		void set_ind(char Ind) {
;main.h,142 :: 		if(L_invert == 0) {
	MOVF        main_L_invert+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_set_ind46
;main.h,143 :: 		if(Ind.B0) Set_Relais(REL_L1); else Reset_Relais(REL_L1);
	BTFSS       FARG_set_ind_Ind+0, 0 
	GOTO        L_set_ind47
	MOVLW       1
	MOVWF       FARG_Set_Relais_relay+0 
	CALL        _Set_Relais+0, 0
	GOTO        L_set_ind48
L_set_ind47:
	MOVLW       1
	MOVWF       FARG_Reset_Relais_relay+0 
	CALL        _Reset_Relais+0, 0
L_set_ind48:
;main.h,144 :: 		if(Ind.B1) Set_Relais(REL_L2); else Reset_Relais(REL_L2);
	BTFSS       FARG_set_ind_Ind+0, 1 
	GOTO        L_set_ind49
	MOVLW       2
	MOVWF       FARG_Set_Relais_relay+0 
	CALL        _Set_Relais+0, 0
	GOTO        L_set_ind50
L_set_ind49:
	MOVLW       2
	MOVWF       FARG_Reset_Relais_relay+0 
	CALL        _Reset_Relais+0, 0
L_set_ind50:
;main.h,145 :: 		if(Ind.B2) Set_Relais(REL_L3); else Reset_Relais(REL_L3);
	BTFSS       FARG_set_ind_Ind+0, 2 
	GOTO        L_set_ind51
	MOVLW       3
	MOVWF       FARG_Set_Relais_relay+0 
	CALL        _Set_Relais+0, 0
	GOTO        L_set_ind52
L_set_ind51:
	MOVLW       3
	MOVWF       FARG_Reset_Relais_relay+0 
	CALL        _Reset_Relais+0, 0
L_set_ind52:
;main.h,146 :: 		if(Ind.B3) Set_Relais(REL_L4); else Reset_Relais(REL_L4);
	BTFSS       FARG_set_ind_Ind+0, 3 
	GOTO        L_set_ind53
	MOVLW       4
	MOVWF       FARG_Set_Relais_relay+0 
	CALL        _Set_Relais+0, 0
	GOTO        L_set_ind54
L_set_ind53:
	MOVLW       4
	MOVWF       FARG_Reset_Relais_relay+0 
	CALL        _Reset_Relais+0, 0
L_set_ind54:
;main.h,147 :: 		if(Ind.B4) Set_Relais(REL_L5); else Reset_Relais(REL_L5);
	BTFSS       FARG_set_ind_Ind+0, 4 
	GOTO        L_set_ind55
	MOVLW       5
	MOVWF       FARG_Set_Relais_relay+0 
	CALL        _Set_Relais+0, 0
	GOTO        L_set_ind56
L_set_ind55:
	MOVLW       5
	MOVWF       FARG_Reset_Relais_relay+0 
	CALL        _Reset_Relais+0, 0
L_set_ind56:
;main.h,148 :: 		if(Ind.B5) Set_Relais(REL_L6); else Reset_Relais(REL_L6);
	BTFSS       FARG_set_ind_Ind+0, 5 
	GOTO        L_set_ind57
	MOVLW       6
	MOVWF       FARG_Set_Relais_relay+0 
	CALL        _Set_Relais+0, 0
	GOTO        L_set_ind58
L_set_ind57:
	MOVLW       6
	MOVWF       FARG_Reset_Relais_relay+0 
	CALL        _Reset_Relais+0, 0
L_set_ind58:
;main.h,149 :: 		if(Ind.B6) Set_Relais(REL_L7); else Reset_Relais(REL_L7);
	BTFSS       FARG_set_ind_Ind+0, 6 
	GOTO        L_set_ind59
	MOVLW       7
	MOVWF       FARG_Set_Relais_relay+0 
	CALL        _Set_Relais+0, 0
	GOTO        L_set_ind60
L_set_ind59:
	MOVLW       7
	MOVWF       FARG_Reset_Relais_relay+0 
	CALL        _Reset_Relais+0, 0
L_set_ind60:
;main.h,150 :: 		if(Ind.B7) Set_Relais(REL_L8); else Reset_Relais(REL_L8);
	BTFSS       FARG_set_ind_Ind+0, 7 
	GOTO        L_set_ind61
	MOVLW       8
	MOVWF       FARG_Set_Relais_relay+0 
	CALL        _Set_Relais+0, 0
	GOTO        L_set_ind62
L_set_ind61:
	MOVLW       8
	MOVWF       FARG_Reset_Relais_relay+0 
	CALL        _Reset_Relais+0, 0
L_set_ind62:
;main.h,151 :: 		}
	GOTO        L_set_ind63
L_set_ind46:
;main.h,153 :: 		if(Ind.B0) Reset_Relais(REL_L1); else Set_Relais(REL_L1);
	BTFSS       FARG_set_ind_Ind+0, 0 
	GOTO        L_set_ind64
	MOVLW       1
	MOVWF       FARG_Reset_Relais_relay+0 
	CALL        _Reset_Relais+0, 0
	GOTO        L_set_ind65
L_set_ind64:
	MOVLW       1
	MOVWF       FARG_Set_Relais_relay+0 
	CALL        _Set_Relais+0, 0
L_set_ind65:
;main.h,154 :: 		if(Ind.B1) Reset_Relais(REL_L2); else Set_Relais(REL_L2);
	BTFSS       FARG_set_ind_Ind+0, 1 
	GOTO        L_set_ind66
	MOVLW       2
	MOVWF       FARG_Reset_Relais_relay+0 
	CALL        _Reset_Relais+0, 0
	GOTO        L_set_ind67
L_set_ind66:
	MOVLW       2
	MOVWF       FARG_Set_Relais_relay+0 
	CALL        _Set_Relais+0, 0
L_set_ind67:
;main.h,155 :: 		if(Ind.B2) Reset_Relais(REL_L3); else Set_Relais(REL_L3);
	BTFSS       FARG_set_ind_Ind+0, 2 
	GOTO        L_set_ind68
	MOVLW       3
	MOVWF       FARG_Reset_Relais_relay+0 
	CALL        _Reset_Relais+0, 0
	GOTO        L_set_ind69
L_set_ind68:
	MOVLW       3
	MOVWF       FARG_Set_Relais_relay+0 
	CALL        _Set_Relais+0, 0
L_set_ind69:
;main.h,156 :: 		if(Ind.B3) Reset_Relais(REL_L4); else Set_Relais(REL_L4);
	BTFSS       FARG_set_ind_Ind+0, 3 
	GOTO        L_set_ind70
	MOVLW       4
	MOVWF       FARG_Reset_Relais_relay+0 
	CALL        _Reset_Relais+0, 0
	GOTO        L_set_ind71
L_set_ind70:
	MOVLW       4
	MOVWF       FARG_Set_Relais_relay+0 
	CALL        _Set_Relais+0, 0
L_set_ind71:
;main.h,157 :: 		if(Ind.B4) Reset_Relais(REL_L5); else Set_Relais(REL_L5);
	BTFSS       FARG_set_ind_Ind+0, 4 
	GOTO        L_set_ind72
	MOVLW       5
	MOVWF       FARG_Reset_Relais_relay+0 
	CALL        _Reset_Relais+0, 0
	GOTO        L_set_ind73
L_set_ind72:
	MOVLW       5
	MOVWF       FARG_Set_Relais_relay+0 
	CALL        _Set_Relais+0, 0
L_set_ind73:
;main.h,158 :: 		if(Ind.B5) Reset_Relais(REL_L6); else Set_Relais(REL_L6);
	BTFSS       FARG_set_ind_Ind+0, 5 
	GOTO        L_set_ind74
	MOVLW       6
	MOVWF       FARG_Reset_Relais_relay+0 
	CALL        _Reset_Relais+0, 0
	GOTO        L_set_ind75
L_set_ind74:
	MOVLW       6
	MOVWF       FARG_Set_Relais_relay+0 
	CALL        _Set_Relais+0, 0
L_set_ind75:
;main.h,159 :: 		if(Ind.B6) Reset_Relais(REL_L7); else Set_Relais(REL_L7);
	BTFSS       FARG_set_ind_Ind+0, 6 
	GOTO        L_set_ind76
	MOVLW       7
	MOVWF       FARG_Reset_Relais_relay+0 
	CALL        _Reset_Relais+0, 0
	GOTO        L_set_ind77
L_set_ind76:
	MOVLW       7
	MOVWF       FARG_Set_Relais_relay+0 
	CALL        _Set_Relais+0, 0
L_set_ind77:
;main.h,160 :: 		if(Ind.B7) Reset_Relais(REL_L8); else Set_Relais(REL_L8);
	BTFSS       FARG_set_ind_Ind+0, 7 
	GOTO        L_set_ind78
	MOVLW       8
	MOVWF       FARG_Reset_Relais_relay+0 
	CALL        _Reset_Relais+0, 0
	GOTO        L_set_ind79
L_set_ind78:
	MOVLW       8
	MOVWF       FARG_Set_Relais_relay+0 
	CALL        _Set_Relais+0, 0
L_set_ind79:
;main.h,161 :: 		}
L_set_ind63:
;main.h,162 :: 		}
L_end_set_ind:
	RETURN      0
; end of _set_ind

_set_cap:

;main.h,164 :: 		void set_cap(char Cap) {
;main.h,165 :: 		if(Cap.B0) Set_Relais(REL_C1); else Reset_Relais(REL_C1);
	BTFSS       FARG_set_cap_Cap+0, 0 
	GOTO        L_set_cap80
	MOVLW       9
	MOVWF       FARG_Set_Relais_relay+0 
	CALL        _Set_Relais+0, 0
	GOTO        L_set_cap81
L_set_cap80:
	MOVLW       9
	MOVWF       FARG_Reset_Relais_relay+0 
	CALL        _Reset_Relais+0, 0
L_set_cap81:
;main.h,166 :: 		if(Cap.B1) Set_Relais(REL_C2); else Reset_Relais(REL_C2);
	BTFSS       FARG_set_cap_Cap+0, 1 
	GOTO        L_set_cap82
	MOVLW       10
	MOVWF       FARG_Set_Relais_relay+0 
	CALL        _Set_Relais+0, 0
	GOTO        L_set_cap83
L_set_cap82:
	MOVLW       10
	MOVWF       FARG_Reset_Relais_relay+0 
	CALL        _Reset_Relais+0, 0
L_set_cap83:
;main.h,167 :: 		if(Cap.B2) Set_Relais(REL_C3); else Reset_Relais(REL_C3);
	BTFSS       FARG_set_cap_Cap+0, 2 
	GOTO        L_set_cap84
	MOVLW       11
	MOVWF       FARG_Set_Relais_relay+0 
	CALL        _Set_Relais+0, 0
	GOTO        L_set_cap85
L_set_cap84:
	MOVLW       11
	MOVWF       FARG_Reset_Relais_relay+0 
	CALL        _Reset_Relais+0, 0
L_set_cap85:
;main.h,168 :: 		if(Cap.B3) Set_Relais(REL_C4); else Reset_Relais(REL_C4);
	BTFSS       FARG_set_cap_Cap+0, 3 
	GOTO        L_set_cap86
	MOVLW       12
	MOVWF       FARG_Set_Relais_relay+0 
	CALL        _Set_Relais+0, 0
	GOTO        L_set_cap87
L_set_cap86:
	MOVLW       12
	MOVWF       FARG_Reset_Relais_relay+0 
	CALL        _Reset_Relais+0, 0
L_set_cap87:
;main.h,169 :: 		if(Cap.B4) Set_Relais(REL_C5); else Reset_Relais(REL_C5);
	BTFSS       FARG_set_cap_Cap+0, 4 
	GOTO        L_set_cap88
	MOVLW       13
	MOVWF       FARG_Set_Relais_relay+0 
	CALL        _Set_Relais+0, 0
	GOTO        L_set_cap89
L_set_cap88:
	MOVLW       13
	MOVWF       FARG_Reset_Relais_relay+0 
	CALL        _Reset_Relais+0, 0
L_set_cap89:
;main.h,170 :: 		if(Cap.B5) Set_Relais(REL_C6); else Reset_Relais(REL_C6);
	BTFSS       FARG_set_cap_Cap+0, 5 
	GOTO        L_set_cap90
	MOVLW       14
	MOVWF       FARG_Set_Relais_relay+0 
	CALL        _Set_Relais+0, 0
	GOTO        L_set_cap91
L_set_cap90:
	MOVLW       14
	MOVWF       FARG_Reset_Relais_relay+0 
	CALL        _Reset_Relais+0, 0
L_set_cap91:
;main.h,171 :: 		if(Cap.B6) Set_Relais(REL_C7); else Reset_Relais(REL_C7);
	BTFSS       FARG_set_cap_Cap+0, 6 
	GOTO        L_set_cap92
	MOVLW       15
	MOVWF       FARG_Set_Relais_relay+0 
	CALL        _Set_Relais+0, 0
	GOTO        L_set_cap93
L_set_cap92:
	MOVLW       15
	MOVWF       FARG_Reset_Relais_relay+0 
	CALL        _Reset_Relais+0, 0
L_set_cap93:
;main.h,172 :: 		}
L_end_set_cap:
	RETURN      0
; end of _set_cap

_set_sw:

;main.h,174 :: 		void set_sw(char SW) {
;main.h,175 :: 		if(SW)
	MOVF        FARG_set_sw_SW+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_set_sw94
;main.h,176 :: 		Set_Relais(REL_HIZ);
	MOVLW       16
	MOVWF       FARG_Set_Relais_relay+0 
	CALL        _Set_Relais+0, 0
	GOTO        L_set_sw95
L_set_sw94:
;main.h,178 :: 		Reset_Relais(REL_HIZ);
	MOVLW       16
	MOVWF       FARG_Reset_Relais_relay+0 
	CALL        _Reset_Relais+0, 0
L_set_sw95:
;main.h,179 :: 		}
L_end_set_sw:
	RETURN      0
; end of _set_sw

_atu_reset:

;main.h,181 :: 		void atu_reset() {
;main.h,182 :: 		ind = 0;
	CLRF        main_ind+0 
;main.h,183 :: 		cap = 0;
	CLRF        main_cap+0 
;main.h,184 :: 		set_ind(ind);
	CLRF        FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.h,185 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,186 :: 		Vdelay_ms(Rel_Del);
	MOVF        main_Rel_Del+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        main_Rel_Del+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;main.h,187 :: 		}
L_end_atu_reset:
	RETURN      0
; end of _atu_reset

_coarse_cap:

;main.h,190 :: 		void coarse_cap() {
;main.h,191 :: 		char step = 3;
	MOVLW       3
	MOVWF       coarse_cap_step_L0+0 
;main.h,195 :: 		cap = 0;
	CLRF        main_cap+0 
;main.h,196 :: 		set_cap(cap);
	CLRF        FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,197 :: 		step_cap = step;
	MOVF        coarse_cap_step_L0+0, 0 
	MOVWF       main_step_cap+0 
;main.h,198 :: 		get_swr(); if(SWR==0) return;
	CALL        _get_swr+0, 0
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coarse_cap561
	MOVLW       0
	XORWF       _SWR+0, 0 
L__coarse_cap561:
	BTFSS       STATUS+0, 2 
	GOTO        L_coarse_cap96
	GOTO        L_end_coarse_cap
L_coarse_cap96:
;main.h,199 :: 		min_swr = SWR + SWR/20;
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
;main.h,200 :: 		for(count=step; count<=31;) {
	MOVF        coarse_cap_step_L0+0, 0 
	MOVWF       coarse_cap_count_L0+0 
L_coarse_cap97:
	MOVF        coarse_cap_count_L0+0, 0 
	SUBLW       31
	BTFSS       STATUS+0, 0 
	GOTO        L_coarse_cap98
;main.h,201 :: 		set_cap(count*C_mult);
	MOVF        coarse_cap_count_L0+0, 0 
	MULWF       main_C_mult+0 
	MOVF        PRODL+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,202 :: 		get_swr(); if(SWR==0) return;
	CALL        _get_swr+0, 0
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coarse_cap562
	MOVLW       0
	XORWF       _SWR+0, 0 
L__coarse_cap562:
	BTFSS       STATUS+0, 2 
	GOTO        L_coarse_cap100
	GOTO        L_end_coarse_cap
L_coarse_cap100:
;main.h,203 :: 		if(SWR < min_swr) {
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       coarse_cap_min_swr_L0+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coarse_cap563
	MOVF        coarse_cap_min_swr_L0+0, 0 
	SUBWF       _SWR+0, 0 
L__coarse_cap563:
	BTFSC       STATUS+0, 0 
	GOTO        L_coarse_cap101
;main.h,204 :: 		min_swr = SWR + SWR/20;
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
;main.h,205 :: 		cap = count*C_mult;
	MOVF        coarse_cap_count_L0+0, 0 
	MULWF       main_C_mult+0 
	MOVF        PRODL+0, 0 
	MOVWF       main_cap+0 
;main.h,206 :: 		step_cap = step;
	MOVF        coarse_cap_step_L0+0, 0 
	MOVWF       main_step_cap+0 
;main.h,207 :: 		if(SWR<120) break;
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coarse_cap564
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__coarse_cap564:
	BTFSC       STATUS+0, 0 
	GOTO        L_coarse_cap102
	GOTO        L_coarse_cap98
L_coarse_cap102:
;main.h,208 :: 		count +=step;
	MOVF        coarse_cap_step_L0+0, 0 
	ADDWF       coarse_cap_count_L0+0, 0 
	MOVWF       R2 
	MOVF        R2, 0 
	MOVWF       coarse_cap_count_L0+0 
;main.h,209 :: 		if(C_linear==0 & count==9) count = 8;
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
	GOTO        L_coarse_cap103
	MOVLW       8
	MOVWF       coarse_cap_count_L0+0 
	GOTO        L_coarse_cap104
L_coarse_cap103:
;main.h,210 :: 		else if(C_linear==0 & count==17) {count = 16; step = 4;}
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
	GOTO        L_coarse_cap105
	MOVLW       16
	MOVWF       coarse_cap_count_L0+0 
	MOVLW       4
	MOVWF       coarse_cap_step_L0+0 
L_coarse_cap105:
L_coarse_cap104:
;main.h,211 :: 		}
	GOTO        L_coarse_cap106
L_coarse_cap101:
;main.h,212 :: 		else break;
	GOTO        L_coarse_cap98
L_coarse_cap106:
;main.h,213 :: 		}
	GOTO        L_coarse_cap97
L_coarse_cap98:
;main.h,214 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,215 :: 		return;
;main.h,216 :: 		}
L_end_coarse_cap:
	RETURN      0
; end of _coarse_cap

_coarse_tune:

;main.h,218 :: 		void coarse_tune() {
;main.h,219 :: 		char step = 3;
	MOVLW       3
	MOVWF       coarse_tune_step_L0+0 
;main.h,224 :: 		mem_cap = 0;
	CLRF        coarse_tune_mem_cap_L0+0 
;main.h,225 :: 		step_ind = step;
	MOVF        coarse_tune_step_L0+0, 0 
	MOVWF       main_step_ind+0 
;main.h,226 :: 		mem_step_cap = 3;
	MOVLW       3
	MOVWF       coarse_tune_mem_step_cap_L0+0 
;main.h,227 :: 		min_swr = SWR + SWR/20;
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
;main.h,228 :: 		for(count=0; count<=31;) {
	CLRF        coarse_tune_count_L0+0 
L_coarse_tune107:
	MOVF        coarse_tune_count_L0+0, 0 
	SUBLW       31
	BTFSS       STATUS+0, 0 
	GOTO        L_coarse_tune108
;main.h,229 :: 		set_ind(count*L_mult);
	MOVF        coarse_tune_count_L0+0, 0 
	MULWF       main_L_mult+0 
	MOVF        PRODL+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.h,230 :: 		coarse_cap();
	CALL        _coarse_cap+0, 0
;main.h,231 :: 		get_swr();  if(SWR==0) return;
	CALL        _get_swr+0, 0
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coarse_tune566
	MOVLW       0
	XORWF       _SWR+0, 0 
L__coarse_tune566:
	BTFSS       STATUS+0, 2 
	GOTO        L_coarse_tune110
	GOTO        L_end_coarse_tune
L_coarse_tune110:
;main.h,232 :: 		if(SWR < min_swr) {
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       coarse_tune_min_swr_L0+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coarse_tune567
	MOVF        coarse_tune_min_swr_L0+0, 0 
	SUBWF       _SWR+0, 0 
L__coarse_tune567:
	BTFSC       STATUS+0, 0 
	GOTO        L_coarse_tune111
;main.h,233 :: 		min_swr = SWR + SWR/20;
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
;main.h,234 :: 		ind = count*L_mult;
	MOVF        coarse_tune_count_L0+0, 0 
	MULWF       main_L_mult+0 
	MOVF        PRODL+0, 0 
	MOVWF       main_ind+0 
;main.h,235 :: 		mem_cap = cap;
	MOVF        main_cap+0, 0 
	MOVWF       coarse_tune_mem_cap_L0+0 
;main.h,236 :: 		step_ind = step;
	MOVF        coarse_tune_step_L0+0, 0 
	MOVWF       main_step_ind+0 
;main.h,237 :: 		mem_step_cap = step_cap;
	MOVF        main_step_cap+0, 0 
	MOVWF       coarse_tune_mem_step_cap_L0+0 
;main.h,238 :: 		if(SWR<120) break;
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coarse_tune568
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__coarse_tune568:
	BTFSC       STATUS+0, 0 
	GOTO        L_coarse_tune112
	GOTO        L_coarse_tune108
L_coarse_tune112:
;main.h,239 :: 		count +=step;
	MOVF        coarse_tune_step_L0+0, 0 
	ADDWF       coarse_tune_count_L0+0, 0 
	MOVWF       R2 
	MOVF        R2, 0 
	MOVWF       coarse_tune_count_L0+0 
;main.h,240 :: 		if(L_linear==0 & count==9) count = 8;
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
	GOTO        L_coarse_tune113
	MOVLW       8
	MOVWF       coarse_tune_count_L0+0 
	GOTO        L_coarse_tune114
L_coarse_tune113:
;main.h,241 :: 		else if(L_linear==0 & count==17) {count = 16; step = 4;}
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
	GOTO        L_coarse_tune115
	MOVLW       16
	MOVWF       coarse_tune_count_L0+0 
	MOVLW       4
	MOVWF       coarse_tune_step_L0+0 
L_coarse_tune115:
L_coarse_tune114:
;main.h,242 :: 		}
	GOTO        L_coarse_tune116
L_coarse_tune111:
;main.h,243 :: 		else break;
	GOTO        L_coarse_tune108
L_coarse_tune116:
;main.h,244 :: 		}
	GOTO        L_coarse_tune107
L_coarse_tune108:
;main.h,245 :: 		cap = mem_cap;
	MOVF        coarse_tune_mem_cap_L0+0, 0 
	MOVWF       main_cap+0 
;main.h,246 :: 		set_ind(ind);
	MOVF        main_ind+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.h,247 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,248 :: 		step_cap = mem_step_cap;
	MOVF        coarse_tune_mem_step_cap_L0+0, 0 
	MOVWF       main_step_cap+0 
;main.h,249 :: 		Delay_ms(10);
	MOVLW       52
	MOVWF       R12, 0
	MOVLW       241
	MOVWF       R13, 0
L_coarse_tune117:
	DECFSZ      R13, 1, 1
	BRA         L_coarse_tune117
	DECFSZ      R12, 1, 1
	BRA         L_coarse_tune117
	NOP
	NOP
;main.h,250 :: 		return;
;main.h,251 :: 		}
L_end_coarse_tune:
	RETURN      0
; end of _coarse_tune

_sharp_cap:

;main.h,253 :: 		void sharp_cap() {
;main.h,256 :: 		range = step_cap*C_mult;
	MOVF        main_step_cap+0, 0 
	MULWF       main_C_mult+0 
	MOVF        PRODL+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       sharp_cap_range_L0+0 
;main.h,258 :: 		max_range = cap + range;
	MOVF        R0, 0 
	ADDWF       main_cap+0, 0 
	MOVWF       R4 
	MOVF        R4, 0 
	MOVWF       sharp_cap_max_range_L0+0 
;main.h,259 :: 		if(max_range>32*C_mult-1) max_range = 32*C_mult-1;
	MOVLW       5
	MOVWF       R2 
	MOVF        main_C_mult+0, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        R2, 0 
L__sharp_cap570:
	BZ          L__sharp_cap571
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	ADDLW       255
	GOTO        L__sharp_cap570
L__sharp_cap571:
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
	GOTO        L__sharp_cap572
	MOVF        R4, 0 
	SUBWF       R2, 0 
L__sharp_cap572:
	BTFSC       STATUS+0, 0 
	GOTO        L_sharp_cap118
	MOVLW       5
	MOVWF       R0 
	MOVF        main_C_mult+0, 0 
	MOVWF       sharp_cap_max_range_L0+0 
	MOVF        R0, 0 
L__sharp_cap573:
	BZ          L__sharp_cap574
	RLCF        sharp_cap_max_range_L0+0, 1 
	BCF         sharp_cap_max_range_L0+0, 0 
	ADDLW       255
	GOTO        L__sharp_cap573
L__sharp_cap574:
	DECF        sharp_cap_max_range_L0+0, 1 
L_sharp_cap118:
;main.h,260 :: 		if(cap>range) min_range = cap - range; else min_range = 0;
	MOVF        main_cap+0, 0 
	SUBWF       sharp_cap_range_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_sharp_cap119
	MOVF        sharp_cap_range_L0+0, 0 
	SUBWF       main_cap+0, 0 
	MOVWF       sharp_cap_min_range_L0+0 
	GOTO        L_sharp_cap120
L_sharp_cap119:
	CLRF        sharp_cap_min_range_L0+0 
L_sharp_cap120:
;main.h,261 :: 		cap = min_range;
	MOVF        sharp_cap_min_range_L0+0, 0 
	MOVWF       main_cap+0 
;main.h,262 :: 		set_cap(cap);
	MOVF        sharp_cap_min_range_L0+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,263 :: 		get_swr(); if(SWR==0) return;
	CALL        _get_swr+0, 0
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_cap575
	MOVLW       0
	XORWF       _SWR+0, 0 
L__sharp_cap575:
	BTFSS       STATUS+0, 2 
	GOTO        L_sharp_cap121
	GOTO        L_end_sharp_cap
L_sharp_cap121:
;main.h,264 :: 		min_SWR = SWR;
	MOVF        _SWR+0, 0 
	MOVWF       sharp_cap_min_swr_L0+0 
	MOVF        _SWR+1, 0 
	MOVWF       sharp_cap_min_swr_L0+1 
;main.h,265 :: 		for(count=min_range+C_mult; count<=max_range; count+=C_mult)  {
	MOVF        main_C_mult+0, 0 
	ADDWF       sharp_cap_min_range_L0+0, 0 
	MOVWF       sharp_cap_count_L0+0 
L_sharp_cap122:
	MOVF        sharp_cap_count_L0+0, 0 
	SUBWF       sharp_cap_max_range_L0+0, 0 
	BTFSS       STATUS+0, 0 
	GOTO        L_sharp_cap123
;main.h,266 :: 		set_cap(count);
	MOVF        sharp_cap_count_L0+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,267 :: 		get_swr(); if(SWR==0) return;
	CALL        _get_swr+0, 0
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_cap576
	MOVLW       0
	XORWF       _SWR+0, 0 
L__sharp_cap576:
	BTFSS       STATUS+0, 2 
	GOTO        L_sharp_cap125
	GOTO        L_end_sharp_cap
L_sharp_cap125:
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
	GOTO        L_sharp_cap126
	MOVLW       52
	MOVWF       R12, 0
	MOVLW       241
	MOVWF       R13, 0
L_sharp_cap127:
	DECFSZ      R13, 1, 1
	BRA         L_sharp_cap127
	DECFSZ      R12, 1, 1
	BRA         L_sharp_cap127
	NOP
	NOP
	CALL        _get_swr+0, 0
L_sharp_cap126:
;main.h,269 :: 		if(SWR>=min_SWR) { Delay_ms(10); get_swr(); }
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
	BTFSS       STATUS+0, 0 
	GOTO        L_sharp_cap128
	MOVLW       52
	MOVWF       R12, 0
	MOVLW       241
	MOVWF       R13, 0
L_sharp_cap129:
	DECFSZ      R13, 1, 1
	BRA         L_sharp_cap129
	DECFSZ      R12, 1, 1
	BRA         L_sharp_cap129
	NOP
	NOP
	CALL        _get_swr+0, 0
L_sharp_cap128:
;main.h,270 :: 		if(SWR < min_SWR) {
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       sharp_cap_min_swr_L0+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_cap579
	MOVF        sharp_cap_min_swr_L0+0, 0 
	SUBWF       _SWR+0, 0 
L__sharp_cap579:
	BTFSC       STATUS+0, 0 
	GOTO        L_sharp_cap130
;main.h,271 :: 		min_SWR = SWR;
	MOVF        _SWR+0, 0 
	MOVWF       sharp_cap_min_swr_L0+0 
	MOVF        _SWR+1, 0 
	MOVWF       sharp_cap_min_swr_L0+1 
;main.h,272 :: 		cap = count;
	MOVF        sharp_cap_count_L0+0, 0 
	MOVWF       main_cap+0 
;main.h,273 :: 		if(SWR<120) break;
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_cap580
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__sharp_cap580:
	BTFSC       STATUS+0, 0 
	GOTO        L_sharp_cap131
	GOTO        L_sharp_cap123
L_sharp_cap131:
;main.h,274 :: 		}
	GOTO        L_sharp_cap132
L_sharp_cap130:
;main.h,275 :: 		else break;
	GOTO        L_sharp_cap123
L_sharp_cap132:
;main.h,265 :: 		for(count=min_range+C_mult; count<=max_range; count+=C_mult)  {
	MOVF        main_C_mult+0, 0 
	ADDWF       sharp_cap_count_L0+0, 1 
;main.h,276 :: 		}
	GOTO        L_sharp_cap122
L_sharp_cap123:
;main.h,277 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,278 :: 		return;
;main.h,279 :: 		}
L_end_sharp_cap:
	RETURN      0
; end of _sharp_cap

_sharp_ind:

;main.h,281 :: 		void sharp_ind() {
;main.h,284 :: 		range = step_ind * L_mult;
	MOVF        main_step_ind+0, 0 
	MULWF       main_L_mult+0 
	MOVF        PRODL+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       sharp_ind_range_L0+0 
;main.h,286 :: 		max_range = ind + range;
	MOVF        R0, 0 
	ADDWF       main_ind+0, 0 
	MOVWF       R4 
	MOVF        R4, 0 
	MOVWF       sharp_ind_max_range_L0+0 
;main.h,287 :: 		if(max_range>32*L_mult-1) max_range = 32*L_mult-1;
	MOVLW       5
	MOVWF       R2 
	MOVF        main_L_mult+0, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        R2, 0 
L__sharp_ind582:
	BZ          L__sharp_ind583
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	ADDLW       255
	GOTO        L__sharp_ind582
L__sharp_ind583:
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
	GOTO        L__sharp_ind584
	MOVF        R4, 0 
	SUBWF       R2, 0 
L__sharp_ind584:
	BTFSC       STATUS+0, 0 
	GOTO        L_sharp_ind133
	MOVLW       5
	MOVWF       R0 
	MOVF        main_L_mult+0, 0 
	MOVWF       sharp_ind_max_range_L0+0 
	MOVF        R0, 0 
L__sharp_ind585:
	BZ          L__sharp_ind586
	RLCF        sharp_ind_max_range_L0+0, 1 
	BCF         sharp_ind_max_range_L0+0, 0 
	ADDLW       255
	GOTO        L__sharp_ind585
L__sharp_ind586:
	DECF        sharp_ind_max_range_L0+0, 1 
L_sharp_ind133:
;main.h,288 :: 		if(ind>range) min_range = ind - range; else min_range = 0;
	MOVF        main_ind+0, 0 
	SUBWF       sharp_ind_range_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_sharp_ind134
	MOVF        sharp_ind_range_L0+0, 0 
	SUBWF       main_ind+0, 0 
	MOVWF       sharp_ind_min_range_L0+0 
	GOTO        L_sharp_ind135
L_sharp_ind134:
	CLRF        sharp_ind_min_range_L0+0 
L_sharp_ind135:
;main.h,289 :: 		ind = min_range;
	MOVF        sharp_ind_min_range_L0+0, 0 
	MOVWF       main_ind+0 
;main.h,290 :: 		set_ind(ind);
	MOVF        sharp_ind_min_range_L0+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.h,291 :: 		get_swr(); if(SWR==0) return;
	CALL        _get_swr+0, 0
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_ind587
	MOVLW       0
	XORWF       _SWR+0, 0 
L__sharp_ind587:
	BTFSS       STATUS+0, 2 
	GOTO        L_sharp_ind136
	GOTO        L_end_sharp_ind
L_sharp_ind136:
;main.h,292 :: 		min_SWR = SWR;
	MOVF        _SWR+0, 0 
	MOVWF       sharp_ind_min_SWR_L0+0 
	MOVF        _SWR+1, 0 
	MOVWF       sharp_ind_min_SWR_L0+1 
;main.h,293 :: 		for(count=min_range+L_mult; count<=max_range; count+=L_mult) {
	MOVF        main_L_mult+0, 0 
	ADDWF       sharp_ind_min_range_L0+0, 0 
	MOVWF       sharp_ind_count_L0+0 
L_sharp_ind137:
	MOVF        sharp_ind_count_L0+0, 0 
	SUBWF       sharp_ind_max_range_L0+0, 0 
	BTFSS       STATUS+0, 0 
	GOTO        L_sharp_ind138
;main.h,294 :: 		set_ind(count);
	MOVF        sharp_ind_count_L0+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.h,295 :: 		get_swr(); if(SWR==0) return;
	CALL        _get_swr+0, 0
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_ind588
	MOVLW       0
	XORWF       _SWR+0, 0 
L__sharp_ind588:
	BTFSS       STATUS+0, 2 
	GOTO        L_sharp_ind140
	GOTO        L_end_sharp_ind
L_sharp_ind140:
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
	GOTO        L_sharp_ind141
	MOVLW       52
	MOVWF       R12, 0
	MOVLW       241
	MOVWF       R13, 0
L_sharp_ind142:
	DECFSZ      R13, 1, 1
	BRA         L_sharp_ind142
	DECFSZ      R12, 1, 1
	BRA         L_sharp_ind142
	NOP
	NOP
	CALL        _get_swr+0, 0
L_sharp_ind141:
;main.h,297 :: 		if(SWR>=min_SWR) { Delay_ms(10); get_swr(); }
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
	BTFSS       STATUS+0, 0 
	GOTO        L_sharp_ind143
	MOVLW       52
	MOVWF       R12, 0
	MOVLW       241
	MOVWF       R13, 0
L_sharp_ind144:
	DECFSZ      R13, 1, 1
	BRA         L_sharp_ind144
	DECFSZ      R12, 1, 1
	BRA         L_sharp_ind144
	NOP
	NOP
	CALL        _get_swr+0, 0
L_sharp_ind143:
;main.h,298 :: 		if(SWR < min_SWR) {
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       sharp_ind_min_SWR_L0+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_ind591
	MOVF        sharp_ind_min_SWR_L0+0, 0 
	SUBWF       _SWR+0, 0 
L__sharp_ind591:
	BTFSC       STATUS+0, 0 
	GOTO        L_sharp_ind145
;main.h,299 :: 		min_SWR = SWR;
	MOVF        _SWR+0, 0 
	MOVWF       sharp_ind_min_SWR_L0+0 
	MOVF        _SWR+1, 0 
	MOVWF       sharp_ind_min_SWR_L0+1 
;main.h,300 :: 		ind = count;
	MOVF        sharp_ind_count_L0+0, 0 
	MOVWF       main_ind+0 
;main.h,301 :: 		if(SWR<120) break;
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_ind592
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__sharp_ind592:
	BTFSC       STATUS+0, 0 
	GOTO        L_sharp_ind146
	GOTO        L_sharp_ind138
L_sharp_ind146:
;main.h,302 :: 		}
	GOTO        L_sharp_ind147
L_sharp_ind145:
;main.h,303 :: 		else break;
	GOTO        L_sharp_ind138
L_sharp_ind147:
;main.h,293 :: 		for(count=min_range+L_mult; count<=max_range; count+=L_mult) {
	MOVF        main_L_mult+0, 0 
	ADDWF       sharp_ind_count_L0+0, 1 
;main.h,304 :: 		}
	GOTO        L_sharp_ind137
L_sharp_ind138:
;main.h,305 :: 		set_ind(ind);
	MOVF        main_ind+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.h,306 :: 		return;
;main.h,307 :: 		}
L_end_sharp_ind:
	RETURN      0
; end of _sharp_ind

_sub_tune:

;main.h,310 :: 		void sub_tune () {
;main.h,313 :: 		swr_mem = SWR;
	MOVF        _SWR+0, 0 
	MOVWF       sub_tune_swr_mem_L0+0 
	MOVF        _SWR+1, 0 
	MOVWF       sub_tune_swr_mem_L0+1 
;main.h,314 :: 		coarse_tune(); if(SWR==0) {atu_reset(); return;}
	CALL        _coarse_tune+0, 0
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune594
	MOVLW       0
	XORWF       _SWR+0, 0 
L__sub_tune594:
	BTFSS       STATUS+0, 2 
	GOTO        L_sub_tune148
	CALL        _atu_reset+0, 0
	GOTO        L_end_sub_tune
L_sub_tune148:
;main.h,315 :: 		get_swr(); if(SWR<120) return;
	CALL        _get_swr+0, 0
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune595
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__sub_tune595:
	BTFSC       STATUS+0, 0 
	GOTO        L_sub_tune149
	GOTO        L_end_sub_tune
L_sub_tune149:
;main.h,316 :: 		sharp_ind();  if(SWR==0) {atu_reset(); return;}
	CALL        _sharp_ind+0, 0
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune596
	MOVLW       0
	XORWF       _SWR+0, 0 
L__sub_tune596:
	BTFSS       STATUS+0, 2 
	GOTO        L_sub_tune150
	CALL        _atu_reset+0, 0
	GOTO        L_end_sub_tune
L_sub_tune150:
;main.h,317 :: 		get_swr(); if(SWR<120) return;
	CALL        _get_swr+0, 0
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune597
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__sub_tune597:
	BTFSC       STATUS+0, 0 
	GOTO        L_sub_tune151
	GOTO        L_end_sub_tune
L_sub_tune151:
;main.h,318 :: 		sharp_cap(); if(SWR==0) {atu_reset(); return;}
	CALL        _sharp_cap+0, 0
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune598
	MOVLW       0
	XORWF       _SWR+0, 0 
L__sub_tune598:
	BTFSS       STATUS+0, 2 
	GOTO        L_sub_tune152
	CALL        _atu_reset+0, 0
	GOTO        L_end_sub_tune
L_sub_tune152:
;main.h,319 :: 		get_swr(); if(SWR<120) return;
	CALL        _get_swr+0, 0
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune599
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__sub_tune599:
	BTFSC       STATUS+0, 0 
	GOTO        L_sub_tune153
	GOTO        L_end_sub_tune
L_sub_tune153:
;main.h,321 :: 		if(SWR<200 & SWR<swr_mem & (swr_mem-SWR)>100) return;
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R1 
	MOVLW       128
	SUBWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune600
	MOVLW       200
	SUBWF       _SWR+0, 0 
L__sub_tune600:
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
	GOTO        L__sub_tune601
	MOVF        sub_tune_swr_mem_L0+0, 0 
	SUBWF       _SWR+0, 0 
L__sub_tune601:
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
	GOTO        L__sub_tune602
	MOVF        R1, 0 
	SUBLW       100
L__sub_tune602:
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R0 
	MOVF        R3, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_sub_tune154
	GOTO        L_end_sub_tune
L_sub_tune154:
;main.h,322 :: 		swr_mem = SWR;
	MOVF        _SWR+0, 0 
	MOVWF       sub_tune_swr_mem_L0+0 
	MOVF        _SWR+1, 0 
	MOVWF       sub_tune_swr_mem_L0+1 
;main.h,323 :: 		ind_mem = ind;
	MOVF        main_ind+0, 0 
	MOVWF       sub_tune_ind_mem_L0+0 
	MOVLW       0
	MOVWF       sub_tune_ind_mem_L0+1 
;main.h,324 :: 		cap_mem = cap;
	MOVF        main_cap+0, 0 
	MOVWF       sub_tune_cap_mem_L0+0 
	MOVLW       0
	MOVWF       sub_tune_cap_mem_L0+1 
;main.h,326 :: 		if(SW==1) SW = 0; else SW = 1;
	MOVF        main_SW+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_sub_tune155
	CLRF        main_SW+0 
	GOTO        L_sub_tune156
L_sub_tune155:
	MOVLW       1
	MOVWF       main_SW+0 
L_sub_tune156:
;main.h,327 :: 		atu_reset();
	CALL        _atu_reset+0, 0
;main.h,328 :: 		set_sw(SW);
	MOVF        main_SW+0, 0 
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
;main.h,329 :: 		Delay_ms(50);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_sub_tune157:
	DECFSZ      R13, 1, 1
	BRA         L_sub_tune157
	DECFSZ      R12, 1, 1
	BRA         L_sub_tune157
	DECFSZ      R11, 1, 1
	BRA         L_sub_tune157
	NOP
;main.h,330 :: 		get_swr(); if(SWR<120) return;
	CALL        _get_swr+0, 0
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune603
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__sub_tune603:
	BTFSC       STATUS+0, 0 
	GOTO        L_sub_tune158
	GOTO        L_end_sub_tune
L_sub_tune158:
;main.h,332 :: 		coarse_tune(); if(SWR==0) {atu_reset(); return;}
	CALL        _coarse_tune+0, 0
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune604
	MOVLW       0
	XORWF       _SWR+0, 0 
L__sub_tune604:
	BTFSS       STATUS+0, 2 
	GOTO        L_sub_tune159
	CALL        _atu_reset+0, 0
	GOTO        L_end_sub_tune
L_sub_tune159:
;main.h,333 :: 		get_swr(); if(SWR<120) return;
	CALL        _get_swr+0, 0
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune605
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__sub_tune605:
	BTFSC       STATUS+0, 0 
	GOTO        L_sub_tune160
	GOTO        L_end_sub_tune
L_sub_tune160:
;main.h,334 :: 		sharp_ind(); if(SWR==0) {atu_reset(); return;}
	CALL        _sharp_ind+0, 0
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune606
	MOVLW       0
	XORWF       _SWR+0, 0 
L__sub_tune606:
	BTFSS       STATUS+0, 2 
	GOTO        L_sub_tune161
	CALL        _atu_reset+0, 0
	GOTO        L_end_sub_tune
L_sub_tune161:
;main.h,335 :: 		get_swr(); if(SWR<120) return;
	CALL        _get_swr+0, 0
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune607
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__sub_tune607:
	BTFSC       STATUS+0, 0 
	GOTO        L_sub_tune162
	GOTO        L_end_sub_tune
L_sub_tune162:
;main.h,336 :: 		sharp_cap(); if(SWR==0) {atu_reset(); return;}
	CALL        _sharp_cap+0, 0
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune608
	MOVLW       0
	XORWF       _SWR+0, 0 
L__sub_tune608:
	BTFSS       STATUS+0, 2 
	GOTO        L_sub_tune163
	CALL        _atu_reset+0, 0
	GOTO        L_end_sub_tune
L_sub_tune163:
;main.h,337 :: 		get_swr(); if(SWR<120) return;
	CALL        _get_swr+0, 0
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune609
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__sub_tune609:
	BTFSC       STATUS+0, 0 
	GOTO        L_sub_tune164
	GOTO        L_end_sub_tune
L_sub_tune164:
;main.h,339 :: 		if(SWR>swr_mem) {
	MOVLW       128
	XORWF       sub_tune_swr_mem_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       _SWR+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune610
	MOVF        _SWR+0, 0 
	SUBWF       sub_tune_swr_mem_L0+0, 0 
L__sub_tune610:
	BTFSC       STATUS+0, 0 
	GOTO        L_sub_tune165
;main.h,340 :: 		if(SW==1) SW = 0; else SW = 1;
	MOVF        main_SW+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_sub_tune166
	CLRF        main_SW+0 
	GOTO        L_sub_tune167
L_sub_tune166:
	MOVLW       1
	MOVWF       main_SW+0 
L_sub_tune167:
;main.h,341 :: 		set_sw(SW);
	MOVF        main_SW+0, 0 
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
;main.h,342 :: 		ind = ind_mem;
	MOVF        sub_tune_ind_mem_L0+0, 0 
	MOVWF       main_ind+0 
;main.h,343 :: 		cap = cap_mem;
	MOVF        sub_tune_cap_mem_L0+0, 0 
	MOVWF       main_cap+0 
;main.h,344 :: 		set_ind(ind);
	MOVF        sub_tune_ind_mem_L0+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.h,345 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,346 :: 		SWR = swr_mem;
	MOVF        sub_tune_swr_mem_L0+0, 0 
	MOVWF       _SWR+0 
	MOVF        sub_tune_swr_mem_L0+1, 0 
	MOVWF       _SWR+1 
;main.h,347 :: 		}
L_sub_tune165:
;main.h,349 :: 		asm CLRWDT;
	CLRWDT
;main.h,350 :: 		return;
;main.h,351 :: 		}
L_end_sub_tune:
	RETURN      0
; end of _sub_tune

_tune:

;main.h,355 :: 		void tune() {
;main.h,357 :: 		asm CLRWDT;
	CLRWDT
;main.h,359 :: 		p_cnt = 0;
	CLRF        _p_cnt+0 
;main.h,360 :: 		P_max = 0;
	CLRF        _P_max+0 
	CLRF        _P_max+1 
;main.h,362 :: 		rready = 0;
	CLRF        _rready+0 
;main.h,363 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,364 :: 		if(SWR<110) return;
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
	GOTO        L_tune168
	GOTO        L_end_tune
L_tune168:
;main.h,365 :: 		atu_reset();
	CALL        _atu_reset+0, 0
;main.h,366 :: 		if(Loss_ind==0) lcd_ind();
	MOVF        main_Loss_ind+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_tune169
	CALL        _lcd_ind+0, 0
L_tune169:
;main.h,367 :: 		Delay_ms(50);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_tune170:
	DECFSZ      R13, 1, 1
	BRA         L_tune170
	DECFSZ      R12, 1, 1
	BRA         L_tune170
	DECFSZ      R11, 1, 1
	BRA         L_tune170
	NOP
;main.h,368 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,369 :: 		swr_a = SWR;
	MOVF        _SWR+0, 0 
	MOVWF       _swr_a+0 
	MOVF        _SWR+1, 0 
	MOVWF       _swr_a+1 
;main.h,370 :: 		if(SWR<110) return;
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__tune613
	MOVLW       110
	SUBWF       _SWR+0, 0 
L__tune613:
	BTFSC       STATUS+0, 0 
	GOTO        L_tune171
	GOTO        L_end_tune
L_tune171:
;main.h,371 :: 		if(max_swr>110 & SWR>max_swr) return;
	MOVLW       128
	MOVWF       R1 
	MOVLW       128
	XORWF       main_max_swr+1, 0 
	SUBWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__tune614
	MOVF        main_max_swr+0, 0 
	SUBLW       110
L__tune614:
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
	GOTO        L__tune615
	MOVF        _SWR+0, 0 
	SUBWF       main_max_swr+0, 0 
L__tune615:
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_tune172
	GOTO        L_end_tune
L_tune172:
;main.h,374 :: 		sub_tune(); if(SWR==0) {atu_reset(); return;}
	CALL        _sub_tune+0, 0
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__tune616
	MOVLW       0
	XORWF       _SWR+0, 0 
L__tune616:
	BTFSS       STATUS+0, 2 
	GOTO        L_tune173
	CALL        _atu_reset+0, 0
	GOTO        L_end_tune
L_tune173:
;main.h,375 :: 		if(SWR<120) return;
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
	GOTO        L_tune174
	GOTO        L_end_tune
L_tune174:
;main.h,376 :: 		if(C_q==5 & L_q==5) return;
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
	GOTO        L_tune175
	GOTO        L_end_tune
L_tune175:
;main.h,378 :: 		if(L_q>5) {
	MOVF        main_L_q+0, 0 
	SUBLW       5
	BTFSC       STATUS+0, 0 
	GOTO        L_tune176
;main.h,379 :: 		step_ind = L_mult;
	MOVF        main_L_mult+0, 0 
	MOVWF       main_step_ind+0 
;main.h,380 :: 		L_mult = 1;
	MOVLW       1
	MOVWF       main_L_mult+0 
;main.h,381 :: 		sharp_ind();
	CALL        _sharp_ind+0, 0
;main.h,382 :: 		}
L_tune176:
;main.h,383 :: 		if(SWR<120) return;
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__tune618
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__tune618:
	BTFSC       STATUS+0, 0 
	GOTO        L_tune177
	GOTO        L_end_tune
L_tune177:
;main.h,384 :: 		if(C_q>5) {
	MOVF        main_C_q+0, 0 
	SUBLW       5
	BTFSC       STATUS+0, 0 
	GOTO        L_tune178
;main.h,385 :: 		step_cap = C_mult;  // = C_mult
	MOVF        main_C_mult+0, 0 
	MOVWF       main_step_cap+0 
;main.h,386 :: 		C_mult = 1;
	MOVLW       1
	MOVWF       main_C_mult+0 
;main.h,387 :: 		sharp_cap();
	CALL        _sharp_cap+0, 0
;main.h,388 :: 		}
L_tune178:
;main.h,389 :: 		if(L_q==5)L_mult = 1;
	MOVF        main_L_q+0, 0 
	XORLW       5
	BTFSS       STATUS+0, 2 
	GOTO        L_tune179
	MOVLW       1
	MOVWF       main_L_mult+0 
	GOTO        L_tune180
L_tune179:
;main.h,390 :: 		else if(L_q==6) L_mult = 2;
	MOVF        main_L_q+0, 0 
	XORLW       6
	BTFSS       STATUS+0, 2 
	GOTO        L_tune181
	MOVLW       2
	MOVWF       main_L_mult+0 
	GOTO        L_tune182
L_tune181:
;main.h,391 :: 		else if(L_q==7) L_mult = 4;
	MOVF        main_L_q+0, 0 
	XORLW       7
	BTFSS       STATUS+0, 2 
	GOTO        L_tune183
	MOVLW       4
	MOVWF       main_L_mult+0 
L_tune183:
L_tune182:
L_tune180:
;main.h,392 :: 		if(C_q==5) C_mult =1;
	MOVF        main_C_q+0, 0 
	XORLW       5
	BTFSS       STATUS+0, 2 
	GOTO        L_tune184
	MOVLW       1
	MOVWF       main_C_mult+0 
	GOTO        L_tune185
L_tune184:
;main.h,393 :: 		else if(C_q==6) C_mult = 2;
	MOVF        main_C_q+0, 0 
	XORLW       6
	BTFSS       STATUS+0, 2 
	GOTO        L_tune186
	MOVLW       2
	MOVWF       main_C_mult+0 
	GOTO        L_tune187
L_tune186:
;main.h,394 :: 		else if(C_q==7) C_mult = 4;
	MOVF        main_C_q+0, 0 
	XORLW       7
	BTFSS       STATUS+0, 2 
	GOTO        L_tune188
	MOVLW       4
	MOVWF       main_C_mult+0 
L_tune188:
L_tune187:
L_tune185:
;main.h,395 :: 		asm CLRWDT;
	CLRWDT
;main.h,396 :: 		return;
;main.h,397 :: 		}
L_end_tune:
	RETURN      0
; end of _tune

_main:

;main.c,35 :: 		void main() {
;main.c,36 :: 		if(RCON.B3==0) Restart = 1;
	BTFSC       RCON+0, 3 
	GOTO        L_main189
	MOVLW       1
	MOVWF       _Restart+0 
L_main189:
;main.c,37 :: 		pic_init();
	CALL        _pic_init+0, 0
;main.c,40 :: 		Delay_ms (300);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       23
	MOVWF       R12, 0
	MOVLW       106
	MOVWF       R13, 0
L_main190:
	DECFSZ      R13, 1, 1
	BRA         L_main190
	DECFSZ      R12, 1, 1
	BRA         L_main190
	DECFSZ      R11, 1, 1
	BRA         L_main190
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
	GOTO        L_main191
;main.c,45 :: 		Soft_I2C_Scl = 1;
	BSF         LATC6_bit+0, BitPos(LATC6_bit+0) 
;main.c,46 :: 		Soft_I2C_Sda = 1;
	BSF         LATC7_bit+0, BitPos(LATC7_bit+0) 
;main.c,47 :: 		}
L_main191:
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
L_main192:
	DECFSZ      R13, 1, 1
	BRA         L_main192
	DECFSZ      R12, 1, 1
	BRA         L_main192
	DECFSZ      R11, 1, 1
	BRA         L_main192
	NOP
;main.c,51 :: 		asm CLRWDT;
	CLRWDT
;main.c,53 :: 		if(PORTB.B1==0 & PORTB.B2==0) {  // Test mode
	BTFSC       PORTB+0, 1 
	GOTO        L__main620
	BSF         R4, 0 
	GOTO        L__main621
L__main620:
	BCF         R4, 0 
L__main621:
	BTFSC       PORTB+0, 2 
	GOTO        L__main622
	BSF         STATUS+0, 0 
	GOTO        L__main623
L__main622:
	BCF         STATUS+0, 0 
L__main623:
	BTFSS       R4, 0 
	GOTO        L__main624
	BTFSS       STATUS+0, 0 
	GOTO        L__main624
	BSF         R4, 0 
	GOTO        L__main625
L__main624:
	BCF         R4, 0 
L__main625:
	BTFSS       R4, 0 
	GOTO        L_main193
;main.c,54 :: 		Test = 1;
	MOVLW       1
	MOVWF       _Test+0 
;main.c,55 :: 		Auto =0;
	CLRF        _Auto+0 
;main.c,56 :: 		}
L_main193:
;main.c,57 :: 		if(L_q==5)L_mult = 1;
	MOVF        main_L_q+0, 0 
	XORLW       5
	BTFSS       STATUS+0, 2 
	GOTO        L_main194
	MOVLW       1
	MOVWF       main_L_mult+0 
	GOTO        L_main195
L_main194:
;main.c,58 :: 		else if(L_q==6) L_mult = 2;
	MOVF        main_L_q+0, 0 
	XORLW       6
	BTFSS       STATUS+0, 2 
	GOTO        L_main196
	MOVLW       2
	MOVWF       main_L_mult+0 
	GOTO        L_main197
L_main196:
;main.c,59 :: 		else if(L_q==7) L_mult = 4;
	MOVF        main_L_q+0, 0 
	XORLW       7
	BTFSS       STATUS+0, 2 
	GOTO        L_main198
	MOVLW       4
	MOVWF       main_L_mult+0 
L_main198:
L_main197:
L_main195:
;main.c,60 :: 		if(C_q==5) C_mult =1;
	MOVF        main_C_q+0, 0 
	XORLW       5
	BTFSS       STATUS+0, 2 
	GOTO        L_main199
	MOVLW       1
	MOVWF       main_C_mult+0 
	GOTO        L_main200
L_main199:
;main.c,61 :: 		else if(C_q==6) C_mult = 2;
	MOVF        main_C_q+0, 0 
	XORLW       6
	BTFSS       STATUS+0, 2 
	GOTO        L_main201
	MOVLW       2
	MOVWF       main_C_mult+0 
	GOTO        L_main202
L_main201:
;main.c,62 :: 		else if(C_q==7) C_mult = 4;
	MOVF        main_C_q+0, 0 
	XORLW       7
	BTFSS       STATUS+0, 2 
	GOTO        L_main203
	MOVLW       4
	MOVWF       main_C_mult+0 
L_main203:
L_main202:
L_main200:
;main.c,64 :: 		Delay_ms(300);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       23
	MOVWF       R12, 0
	MOVLW       106
	MOVWF       R13, 0
L_main204:
	DECFSZ      R13, 1, 1
	BRA         L_main204
	DECFSZ      R12, 1, 1
	BRA         L_main204
	DECFSZ      R11, 1, 1
	BRA         L_main204
	NOP
;main.c,65 :: 		asm CLRWDT;
	CLRWDT
;main.c,66 :: 		Delay_ms(300);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       23
	MOVWF       R12, 0
	MOVLW       106
	MOVWF       R13, 0
L_main205:
	DECFSZ      R13, 1, 1
	BRA         L_main205
	DECFSZ      R12, 1, 1
	BRA         L_main205
	DECFSZ      R11, 1, 1
	BRA         L_main205
	NOP
;main.c,67 :: 		asm CLRWDT;
	CLRWDT
;main.c,68 :: 		Delay_ms(300);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       23
	MOVWF       R12, 0
	MOVLW       106
	MOVWF       R13, 0
L_main206:
	DECFSZ      R13, 1, 1
	BRA         L_main206
	DECFSZ      R12, 1, 1
	BRA         L_main206
	DECFSZ      R11, 1, 1
	BRA         L_main206
	NOP
;main.c,69 :: 		asm CLRWDT;
	CLRWDT
;main.c,70 :: 		Delay_ms(300);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       23
	MOVWF       R12, 0
	MOVLW       106
	MOVWF       R13, 0
L_main207:
	DECFSZ      R13, 1, 1
	BRA         L_main207
	DECFSZ      R12, 1, 1
	BRA         L_main207
	DECFSZ      R11, 1, 1
	BRA         L_main207
	NOP
;main.c,71 :: 		asm CLRWDT;
	CLRWDT
;main.c,72 :: 		Delay_ms(300);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       23
	MOVWF       R12, 0
	MOVLW       106
	MOVWF       R13, 0
L_main208:
	DECFSZ      R13, 1, 1
	BRA         L_main208
	DECFSZ      R12, 1, 1
	BRA         L_main208
	DECFSZ      R11, 1, 1
	BRA         L_main208
	NOP
;main.c,73 :: 		asm CLRWDT;
	CLRWDT
;main.c,75 :: 		led_init();
	CALL        _led_init+0, 0
;main.c,77 :: 		if(PORTB.B1==0 & PORTB.B2==0 & PORTB.B0==0)  { // Fast Test mode (loop)
	BTFSC       PORTB+0, 1 
	GOTO        L__main626
	BSF         R4, 0 
	GOTO        L__main627
L__main626:
	BCF         R4, 0 
L__main627:
	BTFSC       PORTB+0, 2 
	GOTO        L__main628
	BSF         STATUS+0, 0 
	GOTO        L__main629
L__main628:
	BCF         STATUS+0, 0 
L__main629:
	BTFSS       R4, 0 
	GOTO        L__main630
	BTFSS       STATUS+0, 0 
	GOTO        L__main630
	BSF         R4, 0 
	GOTO        L__main631
L__main630:
	BCF         R4, 0 
L__main631:
	BTFSC       PORTB+0, 0 
	GOTO        L__main632
	BSF         STATUS+0, 0 
	GOTO        L__main633
L__main632:
	BCF         STATUS+0, 0 
L__main633:
	BTFSS       R4, 0 
	GOTO        L__main634
	BTFSS       STATUS+0, 0 
	GOTO        L__main634
	BSF         R4, 0 
	GOTO        L__main635
L__main634:
	BCF         R4, 0 
L__main635:
	BTFSS       R4, 0 
	GOTO        L_main209
;main.c,78 :: 		if(type==4 | type==5)  led_wr_str (0, 12, "FAST TEST", 9); // 128*64
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
	GOTO        L_main210
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
	GOTO        L_main211
L_main210:
;main.c,79 :: 		else if(type!=0) led_wr_str (0, 3, "FAST TEST", 9); // 1602 | 128*32
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_main212
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
L_main212:
L_main211:
;main.c,80 :: 		set_cap(255);
	MOVLW       255
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.c,81 :: 		if(L_invert==0) set_ind(255);
	MOVF        main_L_invert+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main213
	MOVLW       255
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
	GOTO        L_main214
L_main213:
;main.c,82 :: 		else set_ind(0);
	CLRF        FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
L_main214:
;main.c,83 :: 		set_sw(1);
	MOVLW       1
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
;main.c,84 :: 		asm CLRWDT;
	CLRWDT
;main.c,85 :: 		while(1) {Delay_ms(500);asm CLRWDT;}
L_main215:
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main217:
	DECFSZ      R13, 1, 1
	BRA         L_main217
	DECFSZ      R12, 1, 1
	BRA         L_main217
	DECFSZ      R11, 1, 1
	BRA         L_main217
	NOP
	NOP
	CLRWDT
	GOTO        L_main215
;main.c,86 :: 		}
L_main209:
;main.c,87 :: 		asm CLRWDT;
	CLRWDT
;main.c,89 :: 		if(Button(&PORTB, 0, 100, 0))  { //  Fider loss input
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
	GOTO        L_main218
;main.c,90 :: 		if(type==4 | type==5) { led_wr_str (0, 6, "Fider Loss", 10); // 128*64
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
	GOTO        L_main219
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
;main.c,91 :: 		led_wr_str (2, 6, "input", 5);
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
;main.c,92 :: 		led_wr_str (4, 6+3*12, "dB", 2);}
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
	GOTO        L_main220
L_main219:
;main.c,93 :: 		else if(type!=0) { led_wr_str (0, 0, "Fider Loss input", 16); // 1602 | 128*32
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_main221
	CLRF        FARG_led_wr_str+0 
	CLRF        FARG_led_wr_str+0 
	MOVLW       ?lstr6_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr6_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,94 :: 		led_wr_str (1, 3, "dB", 2);}
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
L_main221:
L_main220:
;main.c,95 :: 		Fid_loss = Bcd2Dec(EEPROM_Read(0x34));
	MOVLW       52
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	MOVWF       _Fid_loss+0 
;main.c,96 :: 		show_loss();
	CALL        _show_loss+0, 0
;main.c,98 :: 		while(1) {
L_main222:
;main.c,99 :: 		if(Button(&PORTB, 2, 50, 0)){   // BYP button
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
	GOTO        L_main224
;main.c,100 :: 		if(Fid_loss<99) {
	MOVLW       99
	SUBWF       _Fid_loss+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main225
;main.c,101 :: 		Fid_loss ++;
	INCF        _Fid_loss+0, 1 
;main.c,102 :: 		show_loss();
	CALL        _show_loss+0, 0
;main.c,103 :: 		EEPROM_Write(0x34, Dec2Bcd(Fid_loss));
	MOVF        _Fid_loss+0, 0 
	MOVWF       FARG_Dec2Bcd_decnum+0 
	CALL        _Dec2Bcd+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_EEPROM_Write_data_+0 
	MOVLW       52
	MOVWF       FARG_EEPROM_Write_address+0 
	CALL        _EEPROM_Write+0, 0
;main.c,104 :: 		}
L_main225:
;main.c,105 :: 		while(Button(&PORTB, 2, 50, 0)) asm CLRWDT;
L_main226:
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
	GOTO        L_main227
	CLRWDT
	GOTO        L_main226
L_main227:
;main.c,106 :: 		}
L_main224:
;main.c,108 :: 		if(Button(&PORTB, 1, 50, 0)){   // AUTO button
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
	GOTO        L_main228
;main.c,109 :: 		if(Fid_loss>0) {
	MOVF        _Fid_loss+0, 0 
	SUBLW       0
	BTFSC       STATUS+0, 0 
	GOTO        L_main229
;main.c,110 :: 		Fid_loss --;
	DECF        _Fid_loss+0, 1 
;main.c,111 :: 		show_loss();
	CALL        _show_loss+0, 0
;main.c,112 :: 		EEPROM_Write(0x34, Dec2Bcd(Fid_loss));
	MOVF        _Fid_loss+0, 0 
	MOVWF       FARG_Dec2Bcd_decnum+0 
	CALL        _Dec2Bcd+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_EEPROM_Write_data_+0 
	MOVLW       52
	MOVWF       FARG_EEPROM_Write_address+0 
	CALL        _EEPROM_Write+0, 0
;main.c,113 :: 		}
L_main229:
;main.c,114 :: 		while(Button(&PORTB, 1, 50, 0)) asm CLRWDT;
L_main230:
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
	GOTO        L_main231
	CLRWDT
	GOTO        L_main230
L_main231:
;main.c,115 :: 		}
L_main228:
;main.c,116 :: 		asm CLRWDT;
	CLRWDT
;main.c,117 :: 		}  // while
	GOTO        L_main222
;main.c,118 :: 		} //  Fider loss input
L_main218:
;main.c,120 :: 		if(Test==0) {
	MOVF        _Test+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main232
;main.c,121 :: 		cap = EEPROM_Read(255);
	MOVLW       255
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_cap+0 
;main.c,122 :: 		ind = EEPROM_Read(254);
	MOVLW       254
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_ind+0 
;main.c,123 :: 		SW = EEPROM_Read(253);
	MOVLW       253
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_SW+0 
;main.c,124 :: 		swr_a = EEPROM_Read(252) * 256;
	MOVLW       252
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       _swr_a+1 
	CLRF        _swr_a+0 
;main.c,125 :: 		swr_a += EEPROM_Read(251);
	MOVLW       251
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	ADDWF       _swr_a+0, 1 
	MOVLW       0
	ADDWFC      _swr_a+1, 1 
;main.c,126 :: 		set_ind(ind);
	MOVF        main_ind+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.c,127 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.c,128 :: 		set_sw(SW);
	MOVF        main_SW+0, 0 
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
;main.c,129 :: 		if(Restart==1 ) lcd_prep_short = 1;
	MOVF        _Restart+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main233
	MOVLW       1
	MOVWF       _lcd_prep_short+0 
L_main233:
;main.c,130 :: 		lcd_prep();
	CALL        _lcd_prep+0, 0
;main.c,131 :: 		}
	GOTO        L_main234
L_main232:
;main.c,132 :: 		else Test_init();
	CALL        _test_init+0, 0
L_main234:
;main.c,134 :: 		lcd_ind();
	CALL        _lcd_ind+0, 0
;main.c,135 :: 		tune_btn_release = 1;
	BSF         _tune_btn_release+0, BitPos(_tune_btn_release+0) 
;main.c,141 :: 		while(1) {
L_main235:
;main.c,142 :: 		asm CLRWDT;
	CLRWDT
;main.c,143 :: 		lcd_pwr();
	CALL        _lcd_pwr+0, 0
;main.c,145 :: 		if(Test==0) button_proc();
	MOVF        _Test+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main237
	CALL        _button_proc+0, 0
	GOTO        L_main238
L_main237:
;main.c,146 :: 		else button_proc_test();
	CALL        _button_proc_test+0, 0
L_main238:
;main.c,148 :: 		if(dysp_cnt!=0) dysp_cnt --;
	MOVLW       0
	XORWF       _dysp_cnt+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main636
	MOVLW       0
	XORWF       _dysp_cnt+0, 0 
L__main636:
	BTFSC       STATUS+0, 2 
	GOTO        L_main239
	MOVLW       1
	SUBWF       _dysp_cnt+0, 1 
	MOVLW       0
	SUBWFB      _dysp_cnt+1, 1 
	GOTO        L_main240
L_main239:
;main.c,149 :: 		else if(Test==0 & Dysp_delay!=0 & dysp==1){
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
	GOTO        L_main241
;main.c,150 :: 		if(Relay_off){
	MOVF        main_Relay_off+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main242
;main.c,151 :: 		set_ind(0);
	CLRF        FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.c,152 :: 		set_cap(0);
	CLRF        FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.c,153 :: 		set_SW(0);
	CLRF        FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
;main.c,154 :: 		}
L_main242:
;main.c,155 :: 		dysp = 0;
	CLRF        _dysp+0 
;main.c,156 :: 		dysp_off();
	CALL        _dysp_off+0, 0
;main.c,157 :: 		}
L_main241:
L_main240:
;main.c,161 :: 		}
	GOTO        L_main235
;main.c,162 :: 		}
L_end_main:
	GOTO        $+0
; end of _main

_button_proc_test:

;main.c,167 :: 		void button_proc_test(void) {
;main.c,168 :: 		if(Button(&PORTB, 0, 50, 0)){    // Tune btn
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
	GOTO        L_button_proc_test243
;main.c,169 :: 		Delay_ms(250);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_button_proc_test244:
	DECFSZ      R13, 1, 1
	BRA         L_button_proc_test244
	DECFSZ      R12, 1, 1
	BRA         L_button_proc_test244
	DECFSZ      R11, 1, 1
	BRA         L_button_proc_test244
	NOP
	NOP
;main.c,170 :: 		asm CLRWDT;
	CLRWDT
;main.c,171 :: 		if(PORTB.B0==1) { // short press button
	BTFSS       PORTB+0, 0 
	GOTO        L_button_proc_test245
;main.c,172 :: 		if(SW==0) SW = 1; else SW = 0;
	MOVF        main_SW+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_button_proc_test246
	MOVLW       1
	MOVWF       main_SW+0 
	GOTO        L_button_proc_test247
L_button_proc_test246:
	CLRF        main_SW+0 
L_button_proc_test247:
;main.c,173 :: 		set_sw(SW);
	MOVF        main_SW+0, 0 
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
;main.c,174 :: 		lcd_ind();
	CALL        _lcd_ind+0, 0
;main.c,175 :: 		}
	GOTO        L_button_proc_test248
L_button_proc_test245:
;main.c,177 :: 		if(L==1) L = 0; else L = 1;
	MOVF        _L+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_button_proc_test249
	CLRF        _L+0 
	GOTO        L_button_proc_test250
L_button_proc_test249:
	MOVLW       1
	MOVWF       _L+0 
L_button_proc_test250:
;main.c,178 :: 		if(L==1) {
	MOVF        _L+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_button_proc_test251
;main.c,179 :: 		if(type==4 |type==5)   // 128*64 OLED
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
	GOTO        L_button_proc_test252
;main.c,180 :: 		led_wr_str (0, 16+12*8, "l", 1);
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
	GOTO        L_button_proc_test253
L_button_proc_test252:
;main.c,181 :: 		else if(type!=0)              // 1602 LCD & 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc_test254
;main.c,182 :: 		led_wr_str (0, 8, "l", 1);
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
L_button_proc_test254:
L_button_proc_test253:
;main.c,183 :: 		}
	GOTO        L_button_proc_test255
L_button_proc_test251:
;main.c,185 :: 		if(type==4 |type==5)   // 128*64 OLED
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
	GOTO        L_button_proc_test256
;main.c,186 :: 		led_wr_str (0, 16+12*8, "c", 1);
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
	GOTO        L_button_proc_test257
L_button_proc_test256:
;main.c,187 :: 		else if(type!=0)              // 1602 LCD & 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc_test258
;main.c,188 :: 		led_wr_str (0, 8, "c", 1);
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
L_button_proc_test258:
L_button_proc_test257:
;main.c,189 :: 		}
L_button_proc_test255:
;main.c,190 :: 		}
L_button_proc_test248:
;main.c,191 :: 		while(Button(&PORTB, 0, 50, 0)) {lcd_pwr(); asm CLRWDT;   }
L_button_proc_test259:
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
	GOTO        L_button_proc_test260
	CALL        _lcd_pwr+0, 0
	CLRWDT
	GOTO        L_button_proc_test259
L_button_proc_test260:
;main.c,192 :: 		}  // END Tune btn
L_button_proc_test243:
;main.c,194 :: 		if(Button(&PORTB, 2, 50, 0)){   // BYP button
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
	GOTO        L_button_proc_test261
;main.c,195 :: 		asm CLRWDT;
	CLRWDT
;main.c,196 :: 		while(PORTB.B2==0) {
L_button_proc_test262:
	BTFSC       PORTB+0, 2 
	GOTO        L_button_proc_test263
;main.c,197 :: 		if(L & ind<32*L_mult-1) {
	MOVLW       5
	MOVWF       R2 
	MOVF        main_L_mult+0, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        R2, 0 
L__button_proc_test638:
	BZ          L__button_proc_test639
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	ADDLW       255
	GOTO        L__button_proc_test638
L__button_proc_test639:
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
	GOTO        L__button_proc_test640
	MOVF        R2, 0 
	SUBWF       main_ind+0, 0 
L__button_proc_test640:
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R0 
	MOVF        _L+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc_test264
;main.c,198 :: 		ind ++;
	INCF        main_ind+0, 1 
;main.c,199 :: 		set_ind(ind);
	MOVF        main_ind+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.c,200 :: 		}
	GOTO        L_button_proc_test265
L_button_proc_test264:
;main.c,201 :: 		else if(!L & cap<32*L_mult-1) {
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
L__button_proc_test641:
	BZ          L__button_proc_test642
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	ADDLW       255
	GOTO        L__button_proc_test641
L__button_proc_test642:
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
	GOTO        L__button_proc_test643
	MOVF        R2, 0 
	SUBWF       main_cap+0, 0 
L__button_proc_test643:
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R0 
	MOVF        R4, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc_test266
;main.c,202 :: 		cap ++;
	INCF        main_cap+0, 1 
;main.c,203 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.c,204 :: 		}
L_button_proc_test266:
L_button_proc_test265:
;main.c,205 :: 		lcd_ind();
	CALL        _lcd_ind+0, 0
;main.c,206 :: 		lcd_pwr();
	CALL        _lcd_pwr+0, 0
;main.c,207 :: 		Delay_ms(30);
	MOVLW       156
	MOVWF       R12, 0
	MOVLW       215
	MOVWF       R13, 0
L_button_proc_test267:
	DECFSZ      R13, 1, 1
	BRA         L_button_proc_test267
	DECFSZ      R12, 1, 1
	BRA         L_button_proc_test267
;main.c,208 :: 		asm CLRWDT;
	CLRWDT
;main.c,209 :: 		}
	GOTO        L_button_proc_test262
L_button_proc_test263:
;main.c,210 :: 		}   // end of BYP button
L_button_proc_test261:
;main.c,212 :: 		if(Button(&PORTB, 1, 50, 0) & Bypas==0){   // Auto button
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
	GOTO        L_button_proc_test268
;main.c,213 :: 		asm CLRWDT;
	CLRWDT
;main.c,214 :: 		while(PORTB.B1==0) {
L_button_proc_test269:
	BTFSC       PORTB+0, 1 
	GOTO        L_button_proc_test270
;main.c,215 :: 		if(L & ind>0) {
	MOVF        main_ind+0, 0 
	SUBLW       0
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R0 
	MOVF        _L+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc_test271
;main.c,216 :: 		ind --;
	DECF        main_ind+0, 1 
;main.c,217 :: 		set_ind(ind);
	MOVF        main_ind+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.c,218 :: 		}
	GOTO        L_button_proc_test272
L_button_proc_test271:
;main.c,219 :: 		else if(!L & cap>0) {
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
	GOTO        L_button_proc_test273
;main.c,220 :: 		cap --;
	DECF        main_cap+0, 1 
;main.c,221 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.c,222 :: 		}
L_button_proc_test273:
L_button_proc_test272:
;main.c,223 :: 		lcd_ind();
	CALL        _lcd_ind+0, 0
;main.c,224 :: 		lcd_pwr();
	CALL        _lcd_pwr+0, 0
;main.c,225 :: 		Delay_ms(30);
	MOVLW       156
	MOVWF       R12, 0
	MOVLW       215
	MOVWF       R13, 0
L_button_proc_test274:
	DECFSZ      R13, 1, 1
	BRA         L_button_proc_test274
	DECFSZ      R12, 1, 1
	BRA         L_button_proc_test274
;main.c,226 :: 		asm CLRWDT;
	CLRWDT
;main.c,227 :: 		}
	GOTO        L_button_proc_test269
L_button_proc_test270:
;main.c,228 :: 		}
L_button_proc_test268:
;main.c,229 :: 		return;
;main.c,230 :: 		}
L_end_button_proc_test:
	RETURN      0
; end of _button_proc_test

_button_proc:

;main.c,233 :: 		void button_proc(void) {
;main.c,234 :: 		if(tune_btn_release==0 & Button(&PORTB, 0, 50, 1)) tune_btn_release = 1;
	BTFSC       _tune_btn_release+0, BitPos(_tune_btn_release+0) 
	GOTO        L__button_proc645
	BSF         R4, 0 
	GOTO        L__button_proc646
L__button_proc645:
	BCF         R4, 0 
L__button_proc646:
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
	GOTO        L_button_proc275
	BSF         _tune_btn_release+0, BitPos(_tune_btn_release+0) 
L_button_proc275:
;main.c,235 :: 		if(tune_btn_release==0 & Button(&PORTB, 0, 50, 0)) dysp_cnt = Dysp_delay * dysp_cnt_mult;
	BTFSC       _tune_btn_release+0, BitPos(_tune_btn_release+0) 
	GOTO        L__button_proc647
	BSF         R4, 0 
	GOTO        L__button_proc648
L__button_proc647:
	BCF         R4, 0 
L__button_proc648:
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
	GOTO        L_button_proc276
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
L_button_proc276:
;main.c,236 :: 		if((Button(&PORTB, 0, 50, 0) & tune_btn_release) | Soft_tune){
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
	GOTO        L_button_proc277
;main.c,237 :: 		if(dysp==0) { // dysplay ON
	MOVF        _dysp+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_button_proc278
;main.c,238 :: 		if(Relay_off==1){ set_ind(ind); set_cap(cap); set_SW(SW); }
	MOVF        main_Relay_off+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_button_proc279
	MOVF        main_ind+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
	MOVF        main_SW+0, 0 
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
L_button_proc279:
;main.c,239 :: 		dysp = 1;
	MOVLW       1
	MOVWF       _dysp+0 
;main.c,240 :: 		dysp_on();
	CALL        _dysp_on+0, 0
;main.c,241 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
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
;main.c,242 :: 		return;
	GOTO        L_end_button_proc
;main.c,243 :: 		}
L_button_proc278:
;main.c,244 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
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
;main.c,245 :: 		asm CLRWDT;
	CLRWDT
;main.c,246 :: 		Delay_ms(250);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_button_proc280:
	DECFSZ      R13, 1, 1
	BRA         L_button_proc280
	DECFSZ      R12, 1, 1
	BRA         L_button_proc280
	DECFSZ      R11, 1, 1
	BRA         L_button_proc280
	NOP
	NOP
;main.c,247 :: 		asm CLRWDT;
	CLRWDT
;main.c,248 :: 		if(Soft_tune == 0 & PORTB.B0==1) { // short press button
	MOVF        _Soft_tune+0, 0 
	XORLW       0
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	BTFSC       PORTB+0, 0 
	GOTO        L__button_proc649
	BCF         STATUS+0, 0 
	GOTO        L__button_proc650
L__button_proc649:
	BSF         STATUS+0, 0 
L__button_proc650:
	CLRF        R0 
	BTFSC       STATUS+0, 0 
	INCF        R0, 1 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc281
;main.c,249 :: 		show_reset();
	CALL        _show_reset+0, 0
;main.c,250 :: 		bypas =0;
	CLRF        _bypas+0 
;main.c,251 :: 		}
	GOTO        L_button_proc282
L_button_proc281:
;main.c,253 :: 		p_Tx = 1;         //
	MOVLW       1
	MOVWF       _p_Tx+0 
;main.c,254 :: 		n_Tx = 0;         // TX request
	CLRF        _n_Tx+0 
;main.c,255 :: 		Delay_ms(250);    //
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_button_proc283:
	DECFSZ      R13, 1, 1
	BRA         L_button_proc283
	DECFSZ      R12, 1, 1
	BRA         L_button_proc283
	DECFSZ      R11, 1, 1
	BRA         L_button_proc283
	NOP
	NOP
;main.c,256 :: 		btn_push();
	CALL        _btn_push+0, 0
;main.c,257 :: 		bypas = 0;
	CLRF        _bypas+0 
;main.c,258 :: 		Soft_tune = 0;
	CLRF        _Soft_tune+0 
;main.c,259 :: 		tune_btn_release = 0;
	BCF         _tune_btn_release+0, BitPos(_tune_btn_release+0) 
;main.c,260 :: 		}
L_button_proc282:
;main.c,261 :: 		}
L_button_proc277:
;main.c,263 :: 		if(Button(&PORTB, 2, 50, 0)){   // BYP button
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
	GOTO        L_button_proc284
;main.c,264 :: 		if(dysp==0) { // dysplay ON
	MOVF        _dysp+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_button_proc285
;main.c,265 :: 		if(Relay_off==1){ set_ind(ind); set_cap(cap); set_SW(SW); }
	MOVF        main_Relay_off+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_button_proc286
	MOVF        main_ind+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
	MOVF        main_SW+0, 0 
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
L_button_proc286:
;main.c,266 :: 		dysp = 1;
	MOVLW       1
	MOVWF       _dysp+0 
;main.c,267 :: 		dysp_on();
	CALL        _dysp_on+0, 0
;main.c,268 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
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
;main.c,269 :: 		return;
	GOTO        L_end_button_proc
;main.c,270 :: 		}
L_button_proc285:
;main.c,271 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
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
;main.c,272 :: 		asm CLRWDT;
	CLRWDT
;main.c,273 :: 		if(bypas == 0) {
	MOVF        _bypas+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_button_proc287
;main.c,274 :: 		bypas = 1;
	MOVLW       1
	MOVWF       _bypas+0 
;main.c,275 :: 		cap_mem = cap;
	MOVF        main_cap+0, 0 
	MOVWF       _cap_mem+0 
;main.c,276 :: 		ind_mem = ind;
	MOVF        main_ind+0, 0 
	MOVWF       _ind_mem+0 
;main.c,277 :: 		SW_mem = SW;
	MOVF        main_SW+0, 0 
	MOVWF       _SW_mem+0 
;main.c,278 :: 		cap = 0;
	CLRF        main_cap+0 
;main.c,279 :: 		if(L_invert) ind = 255;
	MOVF        main_L_invert+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc288
	MOVLW       255
	MOVWF       main_ind+0 
	GOTO        L_button_proc289
L_button_proc288:
;main.c,280 :: 		else ind = 0;
	CLRF        main_ind+0 
L_button_proc289:
;main.c,281 :: 		SW = 1;
	MOVLW       1
	MOVWF       main_SW+0 
;main.c,282 :: 		set_ind(ind);
	MOVF        main_ind+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.c,283 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.c,284 :: 		set_SW(SW);
	MOVF        main_SW+0, 0 
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
;main.c,285 :: 		if(Loss_mode==0) lcd_ind();
	MOVF        _Loss_mode+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_button_proc290
	CALL        _lcd_ind+0, 0
L_button_proc290:
;main.c,286 :: 		Auto_mem = Auto;
	MOVF        _Auto+0, 0 
	MOVWF       _Auto_mem+0 
;main.c,287 :: 		Auto = 0;
	CLRF        _Auto+0 
;main.c,288 :: 		}
	GOTO        L_button_proc291
L_button_proc287:
;main.c,290 :: 		bypas = 0;
	CLRF        _bypas+0 
;main.c,291 :: 		cap = cap_mem;
	MOVF        _cap_mem+0, 0 
	MOVWF       main_cap+0 
;main.c,292 :: 		ind = ind_mem;
	MOVF        _ind_mem+0, 0 
	MOVWF       main_ind+0 
;main.c,293 :: 		SW = SW_mem;
	MOVF        _SW_mem+0, 0 
	MOVWF       main_SW+0 
;main.c,294 :: 		set_cap(cap);
	MOVF        _cap_mem+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.c,295 :: 		set_ind(ind);
	MOVF        main_ind+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.c,296 :: 		set_SW(SW);
	MOVF        main_SW+0, 0 
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
;main.c,297 :: 		if(Loss_mode==0) lcd_ind();
	MOVF        _Loss_mode+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_button_proc292
	CALL        _lcd_ind+0, 0
L_button_proc292:
;main.c,298 :: 		Auto = Auto_mem;
	MOVF        _Auto_mem+0, 0 
	MOVWF       _Auto+0 
;main.c,299 :: 		}
L_button_proc291:
;main.c,300 :: 		if(type==4 | type==5) {      // 128*64 OLED
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
	GOTO        L_button_proc293
;main.c,301 :: 		if(Auto & !Bypas) led_wr_str (0, 16+8*12, ".", 1);
	MOVF        _bypas+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        _Auto+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc294
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
	GOTO        L_button_proc295
L_button_proc294:
;main.c,302 :: 		else if(!Auto & Bypas) led_wr_str (0, 16+8*12, "_", 1);
	MOVF        _Auto+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        _bypas+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc296
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
	GOTO        L_button_proc297
L_button_proc296:
;main.c,303 :: 		else led_wr_str (0, 16+8*12, " ", 1);
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
L_button_proc297:
L_button_proc295:
;main.c,304 :: 		}
	GOTO        L_button_proc298
L_button_proc293:
;main.c,305 :: 		else if(type!=0) { //  1602 LCD  or 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc299
;main.c,306 :: 		if(Auto & !Bypas) led_wr_str (0, 8, ".", 1);
	MOVF        _bypas+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        _Auto+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc300
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
	GOTO        L_button_proc301
L_button_proc300:
;main.c,307 :: 		else if(!Auto & Bypas) led_wr_str (0, 8, "_", 1);
	MOVF        _Auto+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        _bypas+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc302
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
	GOTO        L_button_proc303
L_button_proc302:
;main.c,308 :: 		else led_wr_str (0, 8, " ", 1);
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
L_button_proc303:
L_button_proc301:
;main.c,309 :: 		}
L_button_proc299:
L_button_proc298:
;main.c,310 :: 		asm CLRWDT;
	CLRWDT
;main.c,311 :: 		while(Button(&PORTB, 2, 50, 0)) {lcd_pwr(); asm CLRWDT;   }
L_button_proc304:
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
	GOTO        L_button_proc305
	CALL        _lcd_pwr+0, 0
	CLRWDT
	GOTO        L_button_proc304
L_button_proc305:
;main.c,312 :: 		}
L_button_proc284:
;main.c,314 :: 		if(Button(&PORTB, 1, 50, 0) & Bypas==0){   // Auto button
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
	GOTO        L_button_proc306
;main.c,315 :: 		if(dysp==0) { // dysplay ON
	MOVF        _dysp+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_button_proc307
;main.c,316 :: 		if(Relay_off==1){ set_ind(ind); set_cap(cap); set_SW(SW); }
	MOVF        main_Relay_off+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_button_proc308
	MOVF        main_ind+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
	MOVF        main_SW+0, 0 
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
L_button_proc308:
;main.c,317 :: 		dysp = 1;
	MOVLW       1
	MOVWF       _dysp+0 
;main.c,318 :: 		dysp_on();
	CALL        _dysp_on+0, 0
;main.c,319 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
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
;main.c,320 :: 		return;
	GOTO        L_end_button_proc
;main.c,321 :: 		}
L_button_proc307:
;main.c,322 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
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
;main.c,323 :: 		asm CLRWDT;
	CLRWDT
;main.c,324 :: 		if(Auto == 0) Auto = 1;
	MOVF        _Auto+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_button_proc309
	MOVLW       1
	MOVWF       _Auto+0 
	GOTO        L_button_proc310
L_button_proc309:
;main.c,325 :: 		else Auto = 0;
	CLRF        _Auto+0 
L_button_proc310:
;main.c,326 :: 		EEPROM_Write(2, Auto);
	MOVLW       2
	MOVWF       FARG_EEPROM_Write_address+0 
	MOVF        _Auto+0, 0 
	MOVWF       FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,327 :: 		if(type==4 | type==5) {      // 128*64 OLED
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
	GOTO        L_button_proc311
;main.c,328 :: 		if(Auto & !Bypas) led_wr_str (0, 16+8*12, ".", 1);
	MOVF        _bypas+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        _Auto+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc312
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
	GOTO        L_button_proc313
L_button_proc312:
;main.c,329 :: 		else if(!Auto & Bypas) led_wr_str (0, 16+8*12, "_", 1);
	MOVF        _Auto+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        _bypas+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc314
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
	GOTO        L_button_proc315
L_button_proc314:
;main.c,330 :: 		else led_wr_str (0, 16+8*12, " ", 1);
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
L_button_proc315:
L_button_proc313:
;main.c,331 :: 		}
	GOTO        L_button_proc316
L_button_proc311:
;main.c,332 :: 		else if(type!=0) { //  1602 LCD  or 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc317
;main.c,333 :: 		if(Auto & !Bypas) led_wr_str (0, 8, ".", 1);
	MOVF        _bypas+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        _Auto+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc318
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
	GOTO        L_button_proc319
L_button_proc318:
;main.c,334 :: 		else if(!Auto & Bypas) led_wr_str (0, 8, "_", 1);
	MOVF        _Auto+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        _bypas+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc320
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
	GOTO        L_button_proc321
L_button_proc320:
;main.c,335 :: 		else led_wr_str (0, 8, " ", 1);
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
L_button_proc321:
L_button_proc319:
;main.c,336 :: 		}
L_button_proc317:
L_button_proc316:
;main.c,337 :: 		asm CLRWDT;
	CLRWDT
;main.c,338 :: 		while(Button(&PORTB, 1, 50, 0)) {lcd_pwr(); asm CLRWDT; }
L_button_proc322:
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
	GOTO        L_button_proc323
	CALL        _lcd_pwr+0, 0
	CLRWDT
	GOTO        L_button_proc322
L_button_proc323:
;main.c,339 :: 		}
L_button_proc306:
;main.c,340 :: 		return;
;main.c,341 :: 		}
L_end_button_proc:
	RETURN      0
; end of _button_proc

_show_reset:

;main.c,343 :: 		void show_reset() {
;main.c,344 :: 		atu_reset();
	CALL        _atu_reset+0, 0
;main.c,345 :: 		SW = 1;
	MOVLW       1
	MOVWF       main_SW+0 
;main.c,346 :: 		set_sw(SW);
	MOVLW       1
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
;main.c,347 :: 		EEPROM_Write(255, 0);
	MOVLW       255
	MOVWF       FARG_EEPROM_Write_address+0 
	CLRF        FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,348 :: 		EEPROM_Write(254, 0);
	MOVLW       254
	MOVWF       FARG_EEPROM_Write_address+0 
	CLRF        FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,349 :: 		EEPROM_Write(253, 1);
	MOVLW       253
	MOVWF       FARG_EEPROM_Write_address+0 
	MOVLW       1
	MOVWF       FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,350 :: 		EEPROM_Write(252, 0);
	MOVLW       252
	MOVWF       FARG_EEPROM_Write_address+0 
	CLRF        FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,351 :: 		EEPROM_Write(251, 0);
	MOVLW       251
	MOVWF       FARG_EEPROM_Write_address+0 
	CLRF        FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,352 :: 		lcd_ind();
	CALL        _lcd_ind+0, 0
;main.c,353 :: 		Loss_mode = 0;
	CLRF        _Loss_mode+0 
;main.c,354 :: 		p_Tx = 0;
	CLRF        _p_Tx+0 
;main.c,355 :: 		n_Tx = 1;
	MOVLW       1
	MOVWF       _n_Tx+0 
;main.c,356 :: 		SWR = 0;
	CLRF        _SWR+0 
	CLRF        _SWR+1 
;main.c,357 :: 		PWR = 0;
	CLRF        _PWR+0 
	CLRF        _PWR+1 
;main.c,358 :: 		SWR_fixed_old = 0;
	CLRF        _SWR_fixed_old+0 
	CLRF        _SWR_fixed_old+1 
;main.c,359 :: 		if(type==4 | type==5) {    // 128*64 OLED
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
	GOTO        L_show_reset324
;main.c,360 :: 		led_wr_str (2, 16, "RESET   ", 8);
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
;main.c,361 :: 		asm CLRWDT;
	CLRWDT
;main.c,362 :: 		delay_ms(600);
	MOVLW       13
	MOVWF       R11, 0
	MOVLW       45
	MOVWF       R12, 0
	MOVLW       215
	MOVWF       R13, 0
L_show_reset325:
	DECFSZ      R13, 1, 1
	BRA         L_show_reset325
	DECFSZ      R12, 1, 1
	BRA         L_show_reset325
	DECFSZ      R11, 1, 1
	BRA         L_show_reset325
	NOP
	NOP
;main.c,363 :: 		led_wr_str (2, 16, "SWR=0.00", 8);
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
;main.c,364 :: 		asm CLRWDT;
	CLRWDT
;main.c,365 :: 		}
	GOTO        L_show_reset326
L_show_reset324:
;main.c,366 :: 		else if(type!=0) {// 1602 LCD & 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_show_reset327
;main.c,367 :: 		led_wr_str (1, 0, "RESET   ", 8);
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
;main.c,368 :: 		asm CLRWDT;
	CLRWDT
;main.c,369 :: 		delay_ms(600);
	MOVLW       13
	MOVWF       R11, 0
	MOVLW       45
	MOVWF       R12, 0
	MOVLW       215
	MOVWF       R13, 0
L_show_reset328:
	DECFSZ      R13, 1, 1
	BRA         L_show_reset328
	DECFSZ      R12, 1, 1
	BRA         L_show_reset328
	DECFSZ      R11, 1, 1
	BRA         L_show_reset328
	NOP
	NOP
;main.c,370 :: 		led_wr_str (1, 0, "SWR=0.00", 8);
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
;main.c,371 :: 		asm CLRWDT;
	CLRWDT
;main.c,372 :: 		}
	GOTO        L_show_reset329
L_show_reset327:
;main.c,374 :: 		Soft_I2C_Scl = 1;
	BSF         LATC6_bit+0, BitPos(LATC6_bit+0) 
;main.c,375 :: 		Soft_I2C_Sda = 1;
	BSF         LATC7_bit+0, BitPos(LATC7_bit+0) 
;main.c,376 :: 		}
L_show_reset329:
L_show_reset326:
;main.c,377 :: 		SWR_old = 10000;
	MOVLW       16
	MOVWF       _SWR_old+0 
	MOVLW       39
	MOVWF       _SWR_old+1 
;main.c,378 :: 		Power_old = 10000;
	MOVLW       16
	MOVWF       _Power_old+0 
	MOVLW       39
	MOVWF       _Power_old+1 
;main.c,379 :: 		lcd_pwr();
	CALL        _lcd_pwr+0, 0
;main.c,380 :: 		return;
;main.c,381 :: 		}
L_end_show_reset:
	RETURN      0
; end of _show_reset

_btn_push:

;main.c,383 :: 		void btn_push() {
;main.c,384 :: 		asm CLRWDT;
	CLRWDT
;main.c,385 :: 		if(type==4 | type==5)  {   // 128*64 OLED
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
	GOTO        L_btn_push330
;main.c,386 :: 		led_wr_str (2, 16+12*4, "TUNE", 4);
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
;main.c,387 :: 		}
	GOTO        L_btn_push331
L_btn_push330:
;main.c,388 :: 		else if(type!=0) {   // 1602 LCD & 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_btn_push332
;main.c,389 :: 		led_wr_str (1, 4, "TUNE", 4);
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
;main.c,390 :: 		}
	GOTO        L_btn_push333
L_btn_push332:
;main.c,392 :: 		Soft_I2C_Scl = 1;
	BSF         LATC6_bit+0, BitPos(LATC6_bit+0) 
;main.c,393 :: 		Soft_I2C_Sda = 1;
	BSF         LATC7_bit+0, BitPos(LATC7_bit+0) 
;main.c,394 :: 		}
L_btn_push333:
L_btn_push331:
;main.c,395 :: 		tune();
	CALL        _tune+0, 0
;main.c,396 :: 		if(type==0) {
	MOVF        _type+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_btn_push334
;main.c,398 :: 		}
	GOTO        L_btn_push335
L_btn_push334:
;main.c,399 :: 		else if(Loss_mode==0 | Loss_ind==0) lcd_ind();
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
	GOTO        L_btn_push336
	CALL        _lcd_ind+0, 0
L_btn_push336:
L_btn_push335:
;main.c,400 :: 		EEPROM_Write(255, cap);
	MOVLW       255
	MOVWF       FARG_EEPROM_Write_address+0 
	MOVF        main_cap+0, 0 
	MOVWF       FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,401 :: 		EEPROM_Write(254, ind);
	MOVLW       254
	MOVWF       FARG_EEPROM_Write_address+0 
	MOVF        main_ind+0, 0 
	MOVWF       FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,402 :: 		EEPROM_Write(253, SW);
	MOVLW       253
	MOVWF       FARG_EEPROM_Write_address+0 
	MOVF        main_SW+0, 0 
	MOVWF       FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,403 :: 		EEPROM_Write(252, swr_a/256);
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
;main.c,404 :: 		EEPROM_Write(251, swr_a%256);
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
;main.c,405 :: 		SWR_old = 10000;
	MOVLW       16
	MOVWF       _SWR_old+0 
	MOVLW       39
	MOVWF       _SWR_old+1 
;main.c,406 :: 		Power_old = 10000;
	MOVLW       16
	MOVWF       _Power_old+0 
	MOVLW       39
	MOVWF       _Power_old+1 
;main.c,407 :: 		lcd_pwr();
	CALL        _lcd_pwr+0, 0
;main.c,408 :: 		SWR_fixed_old = SWR;
	MOVF        _SWR+0, 0 
	MOVWF       _SWR_fixed_old+0 
	MOVF        _SWR+1, 0 
	MOVWF       _SWR_fixed_old+1 
;main.c,409 :: 		p_Tx = 0;
	CLRF        _p_Tx+0 
;main.c,410 :: 		n_Tx = 1;
	MOVLW       1
	MOVWF       _n_Tx+0 
;main.c,411 :: 		asm CLRWDT;
	CLRWDT
;main.c,412 :: 		return;
;main.c,413 :: 		}
L_end_btn_push:
	RETURN      0
; end of _btn_push

_lcd_prep:

;main.c,416 :: 		void lcd_prep() {
;main.c,417 :: 		asm CLRWDT;
	CLRWDT
;main.c,418 :: 		if(type==4 |type==5){   // 128*64 OLED
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
	GOTO        L_lcd_prep337
;main.c,419 :: 		if(lcd_prep_short==0) {
	MOVF        _lcd_prep_short+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_prep338
;main.c,420 :: 		led_wr_str (0, 22, "ATU-100", 7);
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
;main.c,421 :: 		led_wr_str (2, 6, "EXT board", 9);
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
;main.c,422 :: 		led_wr_str (4, 16, "by N7DDC", 8);
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
;main.c,423 :: 		led_wr_str (6, 4, "FW ver 3.2", 10);
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
;main.c,424 :: 		asm CLRWDT;
	CLRWDT
;main.c,425 :: 		Delay_ms(600);
	MOVLW       13
	MOVWF       R11, 0
	MOVLW       45
	MOVWF       R12, 0
	MOVLW       215
	MOVWF       R13, 0
L_lcd_prep339:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_prep339
	DECFSZ      R12, 1, 1
	BRA         L_lcd_prep339
	DECFSZ      R11, 1, 1
	BRA         L_lcd_prep339
	NOP
	NOP
;main.c,426 :: 		asm CLRWDT;
	CLRWDT
;main.c,427 :: 		Delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_lcd_prep340:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_prep340
	DECFSZ      R12, 1, 1
	BRA         L_lcd_prep340
	DECFSZ      R11, 1, 1
	BRA         L_lcd_prep340
	NOP
	NOP
;main.c,428 :: 		asm CLRWDT;
	CLRWDT
;main.c,429 :: 		led_wr_str (0, 16, "        ", 8);
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
;main.c,430 :: 		led_wr_str (2, 4, "          ", 10);
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
;main.c,431 :: 		led_wr_str (4, 16, "        ", 8);
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
;main.c,432 :: 		led_wr_str (6, 4, "          ", 10);
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
;main.c,433 :: 		}
L_lcd_prep338:
;main.c,434 :: 		Delay_ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_lcd_prep341:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_prep341
	DECFSZ      R12, 1, 1
	BRA         L_lcd_prep341
	DECFSZ      R11, 1, 1
	BRA         L_lcd_prep341
	NOP
	NOP
;main.c,435 :: 		if(P_High==1) led_wr_str (0, 16, "PWR=  0W", 8);
	MOVF        main_P_High+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_prep342
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
	GOTO        L_lcd_prep343
L_lcd_prep342:
;main.c,436 :: 		else  led_wr_str (0, 16, "PWR=0.0W", 8);
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
L_lcd_prep343:
;main.c,437 :: 		led_wr_str (2, 16, "SWR=0.00", 8);
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
;main.c,438 :: 		if(Auto) led_wr_str (0, 16+8*12, ".", 1);
	MOVF        _Auto+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_prep344
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
L_lcd_prep344:
;main.c,439 :: 		}
	GOTO        L_lcd_prep345
L_lcd_prep337:
;main.c,440 :: 		else if(type!=0) {   // 1602 LCD & 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_prep346
;main.c,441 :: 		if(lcd_prep_short==0) {
	MOVF        _lcd_prep_short+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_prep347
;main.c,442 :: 		led_wr_str (0, 4, "ATU-100", 7);
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
;main.c,443 :: 		led_wr_str (1, 3, "EXT board", 9);
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
;main.c,444 :: 		asm CLRWDT;
	CLRWDT
;main.c,445 :: 		Delay_ms(700);
	MOVLW       15
	MOVWF       R11, 0
	MOVLW       53
	MOVWF       R12, 0
	MOVLW       81
	MOVWF       R13, 0
L_lcd_prep348:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_prep348
	DECFSZ      R12, 1, 1
	BRA         L_lcd_prep348
	DECFSZ      R11, 1, 1
	BRA         L_lcd_prep348
;main.c,446 :: 		asm CLRWDT;
	CLRWDT
;main.c,447 :: 		Delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_lcd_prep349:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_prep349
	DECFSZ      R12, 1, 1
	BRA         L_lcd_prep349
	DECFSZ      R11, 1, 1
	BRA         L_lcd_prep349
	NOP
	NOP
;main.c,448 :: 		asm CLRWDT;
	CLRWDT
;main.c,449 :: 		led_wr_str (0, 4, "by N7DDC", 8);
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
;main.c,450 :: 		led_wr_str (1, 3, "FW ver 3.2", 10);
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
;main.c,451 :: 		asm CLRWDT;
	CLRWDT
;main.c,452 :: 		Delay_ms(600);
	MOVLW       13
	MOVWF       R11, 0
	MOVLW       45
	MOVWF       R12, 0
	MOVLW       215
	MOVWF       R13, 0
L_lcd_prep350:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_prep350
	DECFSZ      R12, 1, 1
	BRA         L_lcd_prep350
	DECFSZ      R11, 1, 1
	BRA         L_lcd_prep350
	NOP
	NOP
;main.c,453 :: 		asm CLRWDT;
	CLRWDT
;main.c,454 :: 		Delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_lcd_prep351:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_prep351
	DECFSZ      R12, 1, 1
	BRA         L_lcd_prep351
	DECFSZ      R11, 1, 1
	BRA         L_lcd_prep351
	NOP
	NOP
;main.c,455 :: 		asm CLRWDT;
	CLRWDT
;main.c,456 :: 		led_wr_str (0, 4, "        ", 8);
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
;main.c,457 :: 		led_wr_str (1, 3, "          ", 10);
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
;main.c,458 :: 		}
L_lcd_prep347:
;main.c,459 :: 		Delay_ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_lcd_prep352:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_prep352
	DECFSZ      R12, 1, 1
	BRA         L_lcd_prep352
	DECFSZ      R11, 1, 1
	BRA         L_lcd_prep352
	NOP
	NOP
;main.c,460 :: 		if(P_High==1) led_wr_str (0, 0, "PWR=  0W", 8);
	MOVF        main_P_High+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_prep353
	CLRF        FARG_led_wr_str+0 
	CLRF        FARG_led_wr_str+0 
	MOVLW       ?lstr48_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr48_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_lcd_prep354
L_lcd_prep353:
;main.c,461 :: 		else led_wr_str (0, 0, "PWR=0.0W", 8);
	CLRF        FARG_led_wr_str+0 
	CLRF        FARG_led_wr_str+0 
	MOVLW       ?lstr49_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr49_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_lcd_prep354:
;main.c,462 :: 		led_wr_str (1, 0, "SWR=0.00", 8);
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
;main.c,463 :: 		if(Auto) led_wr_str (0, 8, ".", 1);
	MOVF        _Auto+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_prep355
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
L_lcd_prep355:
;main.c,464 :: 		}
L_lcd_prep346:
L_lcd_prep345:
;main.c,465 :: 		asm CLRWDT;
	CLRWDT
;main.c,466 :: 		lcd_ind();
	CALL        _lcd_ind+0, 0
;main.c,467 :: 		return;
;main.c,468 :: 		}
L_end_lcd_prep:
	RETURN      0
; end of _lcd_prep

_lcd_swr:

;main.c,471 :: 		void lcd_swr(int swr) {
;main.c,472 :: 		asm CLRWDT;
	CLRWDT
;main.c,473 :: 		if(swr!=SWR_old) {
	MOVF        FARG_lcd_swr_swr+1, 0 
	XORWF       _SWR_old+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_swr655
	MOVF        _SWR_old+0, 0 
	XORWF       FARG_lcd_swr_swr+0, 0 
L__lcd_swr655:
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_swr356
;main.c,474 :: 		SWR_old = swr;
	MOVF        FARG_lcd_swr_swr+0, 0 
	MOVWF       _SWR_old+0 
	MOVF        FARG_lcd_swr_swr+1, 0 
	MOVWF       _SWR_old+1 
;main.c,475 :: 		if(SWR==0) {  // Low power
	MOVLW       0
	XORWF       FARG_lcd_swr_swr+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_swr656
	MOVLW       0
	XORWF       FARG_lcd_swr_swr+0, 0 
L__lcd_swr656:
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_swr357
;main.c,476 :: 		if(type==4 | type==5) led_wr_str (2, 16+4*12, "0.00", 4);   // 128*64 OLED
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
	GOTO        L_lcd_swr358
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
	GOTO        L_lcd_swr359
L_lcd_swr358:
;main.c,477 :: 		else if(type!=0) led_wr_str (1, 4, "0.00", 4);  // 1602  & 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_swr360
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
	GOTO        L_lcd_swr361
L_lcd_swr360:
;main.c,478 :: 		else  if(type==0) {    // real-time 2-colors led work
	MOVF        _type+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_swr362
;main.c,479 :: 		Soft_I2C_Scl = 1;
	BSF         LATC6_bit+0, BitPos(LATC6_bit+0) 
;main.c,480 :: 		Soft_I2C_Sda = 1;
	BSF         LATC7_bit+0, BitPos(LATC7_bit+0) 
;main.c,481 :: 		}
L_lcd_swr362:
L_lcd_swr361:
L_lcd_swr359:
;main.c,482 :: 		SWR_old = 0;
	CLRF        _SWR_old+0 
	CLRF        _SWR_old+1 
;main.c,483 :: 		}
	GOTO        L_lcd_swr363
L_lcd_swr357:
;main.c,485 :: 		IntToStr(swr, work_str);
	MOVF        FARG_lcd_swr_swr+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        FARG_lcd_swr_swr+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,486 :: 		work_str_2[0] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+0 
;main.c,487 :: 		work_str_2[1] = '.';
	MOVLW       46
	MOVWF       _work_str_2+1 
;main.c,488 :: 		work_str_2[2] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+2 
;main.c,489 :: 		work_str_2[3] = work_str[5];
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+3 
;main.c,490 :: 		if(type==4 | type==5) led_wr_str (2, 16+4*12, work_str_2, 4);  // 128*64 OLED
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
	GOTO        L_lcd_swr364
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
	GOTO        L_lcd_swr365
L_lcd_swr364:
;main.c,491 :: 		else if(type!=0) led_wr_str (1, 4, work_str_2, 4);       // 1602  & 128*32
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_swr366
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
	GOTO        L_lcd_swr367
L_lcd_swr366:
;main.c,492 :: 		else  if(type==0) {    // real-time 2-colors led work
	MOVF        _type+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_swr368
;main.c,493 :: 		if(swr<=150) { Soft_I2C_Scl = 0; Soft_I2C_Sda = 1; } // Green
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_lcd_swr_swr+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_swr657
	MOVF        FARG_lcd_swr_swr+0, 0 
	SUBLW       150
L__lcd_swr657:
	BTFSS       STATUS+0, 0 
	GOTO        L_lcd_swr369
	BCF         LATC6_bit+0, BitPos(LATC6_bit+0) 
	BSF         LATC7_bit+0, BitPos(LATC7_bit+0) 
	GOTO        L_lcd_swr370
L_lcd_swr369:
;main.c,494 :: 		else if(swr<=250) {Soft_I2C_Scl = 0; PORTB.B7 = 0;} // Orange
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_lcd_swr_swr+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_swr658
	MOVF        FARG_lcd_swr_swr+0, 0 
	SUBLW       250
L__lcd_swr658:
	BTFSS       STATUS+0, 0 
	GOTO        L_lcd_swr371
	BCF         LATC6_bit+0, BitPos(LATC6_bit+0) 
	BCF         PORTB+0, 7 
	GOTO        L_lcd_swr372
L_lcd_swr371:
;main.c,495 :: 		else { Soft_I2C_Scl = 1; Soft_I2C_Sda = 0; }  // Red
	BSF         LATC6_bit+0, BitPos(LATC6_bit+0) 
	BCF         LATC7_bit+0, BitPos(LATC7_bit+0) 
L_lcd_swr372:
L_lcd_swr370:
;main.c,496 :: 		}
L_lcd_swr368:
L_lcd_swr367:
L_lcd_swr365:
;main.c,497 :: 		}
L_lcd_swr363:
;main.c,498 :: 		}
L_lcd_swr356:
;main.c,499 :: 		asm CLRWDT;
	CLRWDT
;main.c,500 :: 		return;
;main.c,501 :: 		}
L_end_lcd_swr:
	RETURN      0
; end of _lcd_swr

_button_delay:

;main.c,504 :: 		void button_delay() {
;main.c,505 :: 		if((Button(&PORTB, 0, 25, 0)) | (Button(&PORTB, 1, 25, 0)) | (Button(&PORTB, 2, 25, 0))) {
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
	GOTO        L_button_delay373
;main.c,506 :: 		but = 1;
	MOVLW       1
	MOVWF       _but+0 
;main.c,507 :: 		}
L_button_delay373:
;main.c,508 :: 		return;
;main.c,509 :: 		}
L_end_button_delay:
	RETURN      0
; end of _button_delay

_show_pwr:

;main.c,511 :: 		void show_pwr(int Power, int SWR) {
;main.c,514 :: 		a = 100;
	MOVLW       0
	MOVWF       show_pwr_a_L0+0 
	MOVLW       0
	MOVWF       show_pwr_a_L0+1 
	MOVLW       72
	MOVWF       show_pwr_a_L0+2 
	MOVLW       133
	MOVWF       show_pwr_a_L0+3 
;main.c,515 :: 		asm CLRWDT;
	CLRWDT
;main.c,517 :: 		if(Test==0 & Loss_ind==1 & Power>=10) {
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
	GOTO        L__show_pwr661
	MOVLW       10
	SUBWF       FARG_show_pwr_Power+0, 0 
L__show_pwr661:
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr374
;main.c,518 :: 		if(Loss_mode==0) {   // prepare
	MOVF        _Loss_mode+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr375
;main.c,519 :: 		if(type==4 |type==5){   // 128*64 OLED
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
	GOTO        L_show_pwr376
;main.c,520 :: 		if(P_High==1) led_wr_str(4, 16, "ANT=  0W", 8);
	MOVF        main_P_High+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr377
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
	GOTO        L_show_pwr378
L_show_pwr377:
;main.c,521 :: 		else led_wr_str(4, 16, "ANT=0.0W", 8);
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
L_show_pwr378:
;main.c,522 :: 		led_wr_str(6, 16, "EFF=  0%", 8);
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
;main.c,523 :: 		}
	GOTO        L_show_pwr379
L_show_pwr376:
;main.c,524 :: 		else if(type==2 | type==3) {   // 128*32 OLED
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
	GOTO        L_show_pwr380
;main.c,525 :: 		if(P_High==1) led_wr_str (0, 9, "ANT=  0W", 8);
	MOVF        main_P_High+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr381
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
	GOTO        L_show_pwr382
L_show_pwr381:
;main.c,526 :: 		else led_wr_str (0, 9, "ANT=0.0W", 8);
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
L_show_pwr382:
;main.c,527 :: 		led_wr_str (1, 9, "EFF=  0%", 8);
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
;main.c,528 :: 		}
	GOTO        L_show_pwr383
L_show_pwr380:
;main.c,529 :: 		else if(type==1) {   // 1602 LCD
	MOVF        _type+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr384
;main.c,530 :: 		if(P_High==1) led_wr_str (0, 9, "AN=  0W", 7);
	MOVF        main_P_High+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr385
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
	GOTO        L_show_pwr386
L_show_pwr385:
;main.c,531 :: 		else led_wr_str (0, 9, "AN=0.0W", 7);
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
L_show_pwr386:
;main.c,532 :: 		led_wr_str (1, 9, "EFF= 0%", 7);
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
;main.c,533 :: 		}
L_show_pwr384:
L_show_pwr383:
L_show_pwr379:
;main.c,534 :: 		}
L_show_pwr375:
;main.c,535 :: 		Loss_mode = 1;
	MOVLW       1
	MOVWF       _Loss_mode+0 
;main.c,536 :: 		}
	GOTO        L_show_pwr387
L_show_pwr374:
;main.c,538 :: 		if(Loss_mode==1) lcd_ind();
	MOVF        _Loss_mode+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr388
	CALL        _lcd_ind+0, 0
L_show_pwr388:
;main.c,539 :: 		Loss_mode = 0;
	CLRF        _Loss_mode+0 
;main.c,540 :: 		}
L_show_pwr387:
;main.c,541 :: 		asm CLRWDT;
	CLRWDT
;main.c,542 :: 		if(Power != Power_old) {
	MOVF        FARG_show_pwr_Power+1, 0 
	XORWF       _Power_old+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__show_pwr662
	MOVF        _Power_old+0, 0 
	XORWF       FARG_show_pwr_Power+0, 0 
L__show_pwr662:
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr389
;main.c,543 :: 		Power_old = Power;
	MOVF        FARG_show_pwr_Power+0, 0 
	MOVWF       _Power_old+0 
	MOVF        FARG_show_pwr_Power+1, 0 
	MOVWF       _Power_old+1 
;main.c,545 :: 		if(P_High==0) {
	MOVF        main_P_High+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr390
;main.c,546 :: 		if(Power >= 100) {   // > 10 W
	MOVLW       128
	XORWF       FARG_show_pwr_Power+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__show_pwr663
	MOVLW       100
	SUBWF       FARG_show_pwr_Power+0, 0 
L__show_pwr663:
	BTFSS       STATUS+0, 0 
	GOTO        L_show_pwr391
;main.c,547 :: 		Power += 5;  // rounding to 1 W
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
;main.c,548 :: 		IntToStr(Power, work_str);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,549 :: 		work_str_2[0] = work_str[2];
	MOVF        _work_str+2, 0 
	MOVWF       _work_str_2+0 
;main.c,550 :: 		work_str_2[1] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+1 
;main.c,551 :: 		work_str_2[2] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+2 
;main.c,552 :: 		work_str_2[3] = 'W';
	MOVLW       87
	MOVWF       _work_str_2+3 
;main.c,553 :: 		}
	GOTO        L_show_pwr392
L_show_pwr391:
;main.c,555 :: 		IntToStr(Power, work_str);
	MOVF        FARG_show_pwr_Power+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        FARG_show_pwr_Power+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,556 :: 		if(work_str[4] != ' ') work_str_2[0] = work_str[4]; else work_str_2[0] = '0';
	MOVF        _work_str+4, 0 
	XORLW       32
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr393
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+0 
	GOTO        L_show_pwr394
L_show_pwr393:
	MOVLW       48
	MOVWF       _work_str_2+0 
L_show_pwr394:
;main.c,557 :: 		work_str_2[1] = '.';
	MOVLW       46
	MOVWF       _work_str_2+1 
;main.c,558 :: 		if(work_str[5] != ' ') work_str_2[2] = work_str[5]; else work_str_2[2] = '0';
	MOVF        _work_str+5, 0 
	XORLW       32
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr395
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+2 
	GOTO        L_show_pwr396
L_show_pwr395:
	MOVLW       48
	MOVWF       _work_str_2+2 
L_show_pwr396:
;main.c,559 :: 		work_str_2[3] = 'W';
	MOVLW       87
	MOVWF       _work_str_2+3 
;main.c,560 :: 		}
L_show_pwr392:
;main.c,561 :: 		}
	GOTO        L_show_pwr397
L_show_pwr390:
;main.c,563 :: 		if(Power<999){   // 0 - 999 Watt
	MOVLW       128
	XORWF       FARG_show_pwr_Power+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       3
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__show_pwr664
	MOVLW       231
	SUBWF       FARG_show_pwr_Power+0, 0 
L__show_pwr664:
	BTFSC       STATUS+0, 0 
	GOTO        L_show_pwr398
;main.c,564 :: 		IntToStr(Power, work_str);
	MOVF        FARG_show_pwr_Power+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        FARG_show_pwr_Power+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,565 :: 		work_str_2[0] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+0 
;main.c,566 :: 		work_str_2[1] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+1 
;main.c,567 :: 		work_str_2[2] = work_str[5];
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+2 
;main.c,568 :: 		work_str_2[3] = 'W';
	MOVLW       87
	MOVWF       _work_str_2+3 
;main.c,569 :: 		}
	GOTO        L_show_pwr399
L_show_pwr398:
;main.c,571 :: 		IntToStr(Power, work_str);
	MOVF        FARG_show_pwr_Power+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        FARG_show_pwr_Power+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,572 :: 		work_str_2[0] = work_str[2];
	MOVF        _work_str+2, 0 
	MOVWF       _work_str_2+0 
;main.c,573 :: 		work_str_2[1] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+1 
;main.c,574 :: 		work_str_2[2] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+2 
;main.c,575 :: 		work_str_2[3] = work_str[5];
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+3 
;main.c,576 :: 		}
L_show_pwr399:
;main.c,577 :: 		}
L_show_pwr397:
;main.c,578 :: 		if(type==4 | type==5) led_wr_str (0, 16+4*12, work_str_2, 4);  // 128*64 OLED
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
	GOTO        L_show_pwr400
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
	GOTO        L_show_pwr401
L_show_pwr400:
;main.c,579 :: 		else if(type!=0) led_wr_str (0, 4, work_str_2, 4);  // 1602  & 128*32
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr402
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
L_show_pwr402:
L_show_pwr401:
;main.c,581 :: 		asm CLRWDT;
	CLRWDT
;main.c,583 :: 		if(Loss_mode==1)  {
	MOVF        _Loss_mode+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr403
;main.c,584 :: 		if(ind==0 & cap==0) swr_a = SWR;
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
	GOTO        L_show_pwr404
	MOVF        FARG_show_pwr_SWR+0, 0 
	MOVWF       _swr_a+0 
	MOVF        FARG_show_pwr_SWR+1, 0 
	MOVWF       _swr_a+1 
L_show_pwr404:
;main.c,585 :: 		a = 1.0 / ((swr_a/100.0 + 100.0/swr_a) * Fid_loss/10.0 * 0.115 + 1.0); // Fider loss
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
;main.c,586 :: 		b = 4.0 / (2.0 + SWR/100.0 + 100.0/SWR);    // SWR loss
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
;main.c,587 :: 		if(a>=1.0) a = 1.0;
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
	GOTO        L_show_pwr405
	MOVLW       0
	MOVWF       show_pwr_a_L0+0 
	MOVLW       0
	MOVWF       show_pwr_a_L0+1 
	MOVLW       0
	MOVWF       show_pwr_a_L0+2 
	MOVLW       127
	MOVWF       show_pwr_a_L0+3 
L_show_pwr405:
;main.c,588 :: 		if(b>=1.0) b = 1.0;
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
	GOTO        L_show_pwr406
	MOVLW       0
	MOVWF       show_pwr_b_L0+0 
	MOVLW       0
	MOVWF       show_pwr_b_L0+1 
	MOVLW       0
	MOVWF       show_pwr_b_L0+2 
	MOVLW       127
	MOVWF       show_pwr_b_L0+3 
L_show_pwr406:
;main.c,589 :: 		p_ant = Power * a * b;
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
;main.c,590 :: 		eff = a * b * 100;
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
;main.c,591 :: 		if(eff>=100) eff = 99;
	MOVLW       128
	XORWF       R1, 0 
	MOVWF       R2 
	MOVLW       128
	SUBWF       R2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__show_pwr665
	MOVLW       100
	SUBWF       R0, 0 
L__show_pwr665:
	BTFSS       STATUS+0, 0 
	GOTO        L_show_pwr407
	MOVLW       99
	MOVWF       show_pwr_eff_L0+0 
	MOVLW       0
	MOVWF       show_pwr_eff_L0+1 
L_show_pwr407:
;main.c,593 :: 		if(P_High==0) {
	MOVF        main_P_High+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr408
;main.c,594 :: 		if(p_ant >= 100) {   // > 10 W
	MOVLW       128
	XORWF       show_pwr_p_ant_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__show_pwr666
	MOVLW       100
	SUBWF       show_pwr_p_ant_L0+0, 0 
L__show_pwr666:
	BTFSS       STATUS+0, 0 
	GOTO        L_show_pwr409
;main.c,595 :: 		p_ant += 5;  // rounding to 1 W
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
;main.c,596 :: 		IntToStr(p_ant, work_str);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,597 :: 		work_str_2[0] = work_str[2];
	MOVF        _work_str+2, 0 
	MOVWF       _work_str_2+0 
;main.c,598 :: 		work_str_2[1] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+1 
;main.c,599 :: 		work_str_2[2] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+2 
;main.c,600 :: 		work_str_2[3] = 'W';
	MOVLW       87
	MOVWF       _work_str_2+3 
;main.c,601 :: 		}
	GOTO        L_show_pwr410
L_show_pwr409:
;main.c,603 :: 		IntToStr(p_ant, work_str);
	MOVF        show_pwr_p_ant_L0+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        show_pwr_p_ant_L0+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,604 :: 		if(work_str[4] != ' ') work_str_2[0] = work_str[4]; else work_str_2[0] = '0';
	MOVF        _work_str+4, 0 
	XORLW       32
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr411
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+0 
	GOTO        L_show_pwr412
L_show_pwr411:
	MOVLW       48
	MOVWF       _work_str_2+0 
L_show_pwr412:
;main.c,605 :: 		work_str_2[1] = '.';
	MOVLW       46
	MOVWF       _work_str_2+1 
;main.c,606 :: 		if(work_str[5] != ' ') work_str_2[2] = work_str[5]; else work_str_2[2] = '0';
	MOVF        _work_str+5, 0 
	XORLW       32
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr413
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+2 
	GOTO        L_show_pwr414
L_show_pwr413:
	MOVLW       48
	MOVWF       _work_str_2+2 
L_show_pwr414:
;main.c,607 :: 		work_str_2[3] = 'W';
	MOVLW       87
	MOVWF       _work_str_2+3 
;main.c,608 :: 		}
L_show_pwr410:
;main.c,609 :: 		}
	GOTO        L_show_pwr415
L_show_pwr408:
;main.c,611 :: 		if(p_ant<999){   // 0 - 1500 Watts
	MOVLW       128
	XORWF       show_pwr_p_ant_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       3
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__show_pwr667
	MOVLW       231
	SUBWF       show_pwr_p_ant_L0+0, 0 
L__show_pwr667:
	BTFSC       STATUS+0, 0 
	GOTO        L_show_pwr416
;main.c,612 :: 		IntToStr(p_ant, work_str);
	MOVF        show_pwr_p_ant_L0+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        show_pwr_p_ant_L0+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,613 :: 		work_str_2[0] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+0 
;main.c,614 :: 		work_str_2[1] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+1 
;main.c,615 :: 		work_str_2[2] = work_str[5];
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+2 
;main.c,616 :: 		work_str_2[3] = 'W';
	MOVLW       87
	MOVWF       _work_str_2+3 
;main.c,617 :: 		}
	GOTO        L_show_pwr417
L_show_pwr416:
;main.c,619 :: 		IntToStr(p_ant, work_str);
	MOVF        show_pwr_p_ant_L0+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        show_pwr_p_ant_L0+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,620 :: 		work_str_2[0] = work_str[2];
	MOVF        _work_str+2, 0 
	MOVWF       _work_str_2+0 
;main.c,621 :: 		work_str_2[1] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+1 
;main.c,622 :: 		work_str_2[2] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+2 
;main.c,623 :: 		work_str_2[3] = work_str[5];
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+3 
;main.c,624 :: 		}
L_show_pwr417:
;main.c,625 :: 		}
L_show_pwr415:
;main.c,626 :: 		if(type==4 | type==5) led_wr_str (4, 16+4*12, work_str_2, 4);  // 128*64 OLED
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
	GOTO        L_show_pwr418
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
	GOTO        L_show_pwr419
L_show_pwr418:
;main.c,627 :: 		else if(type==2 | type==3) led_wr_str (0, 13, work_str_2, 4);  // 128*32
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
	GOTO        L_show_pwr420
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
	GOTO        L_show_pwr421
L_show_pwr420:
;main.c,628 :: 		else if(type!=0) led_wr_str (0, 12, work_str_2, 4);  // 1602
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr422
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
L_show_pwr422:
L_show_pwr421:
L_show_pwr419:
;main.c,630 :: 		IntToStr(eff, work_str);
	MOVF        show_pwr_eff_L0+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        show_pwr_eff_L0+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,631 :: 		work_str_2[0] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+0 
;main.c,632 :: 		work_str_2[1] = work_str[5];
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+1 
;main.c,633 :: 		if(type==4 | type==5) led_wr_str(6, 16+5*12, work_str_2, 2);
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
	GOTO        L_show_pwr423
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
	GOTO        L_show_pwr424
L_show_pwr423:
;main.c,634 :: 		else if(type==2 | type==3) led_wr_str(1, 14, work_str_2, 2);
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
	GOTO        L_show_pwr425
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
	GOTO        L_show_pwr426
L_show_pwr425:
;main.c,635 :: 		else if(type==1) led_wr_str(1, 13, work_str_2, 2);
	MOVF        _type+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr427
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
L_show_pwr427:
L_show_pwr426:
L_show_pwr424:
;main.c,636 :: 		}
L_show_pwr403:
;main.c,637 :: 		}
L_show_pwr389:
;main.c,638 :: 		asm CLRWDT;
	CLRWDT
;main.c,639 :: 		return;
;main.c,640 :: 		}
L_end_show_pwr:
	RETURN      0
; end of _show_pwr

_lcd_pwr:

;main.c,642 :: 		void lcd_pwr() {
;main.c,643 :: 		int p = 0;
	CLRF        lcd_pwr_p_L0+0 
	CLRF        lcd_pwr_p_L0+1 
;main.c,645 :: 		int delta = Auto_delta - 100;
	MOVLW       100
	SUBWF       _Auto_delta+0, 0 
	MOVWF       lcd_pwr_delta_L0+0 
	MOVLW       0
	SUBWFB      _Auto_delta+1, 0 
	MOVWF       lcd_pwr_delta_L0+1 
;main.c,648 :: 		PWR = 0;
	CLRF        _PWR+0 
	CLRF        _PWR+1 
;main.c,649 :: 		asm CLRWDT;
	CLRWDT
;main.c,651 :: 		if(dysp==0 & Relay_off==1){
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
	GOTO        L_lcd_pwr428
;main.c,652 :: 		get_pwr();
	CALL        _get_pwr+0, 0
;main.c,653 :: 		if(PWR>=10){
	MOVLW       128
	XORWF       _PWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_pwr669
	MOVLW       10
	SUBWF       _PWR+0, 0 
L__lcd_pwr669:
	BTFSS       STATUS+0, 0 
	GOTO        L_lcd_pwr429
;main.c,654 :: 		set_ind(ind);
	MOVF        main_ind+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.c,655 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.c,656 :: 		set_SW(SW);
	MOVF        main_SW+0, 0 
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
;main.c,658 :: 		dysp = 1;
	MOVLW       1
	MOVWF       _dysp+0 
;main.c,659 :: 		dysp_on();           // dysplay ON
	CALL        _dysp_on+0, 0
;main.c,660 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
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
;main.c,661 :: 		}
L_lcd_pwr429:
;main.c,662 :: 		return;
	GOTO        L_end_lcd_pwr
;main.c,663 :: 		}
L_lcd_pwr428:
;main.c,665 :: 		cnt = 120;
	MOVLW       120
	MOVWF       lcd_pwr_cnt_L0+0 
;main.c,666 :: 		for(peak_cnt = 0; peak_cnt < cnt; peak_cnt++){
	CLRF        lcd_pwr_peak_cnt_L0+0 
L_lcd_pwr430:
	MOVF        lcd_pwr_cnt_L0+0, 0 
	SUBWF       lcd_pwr_peak_cnt_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_lcd_pwr431
;main.c,667 :: 		if(PORTB.B1==0 | PORTB.B2==0 | (PORTB.B0==0 & tune_btn_release)) {button_delay(); if(but==1) {but = 0; return;} }
	BTFSC       PORTB+0, 1 
	GOTO        L__lcd_pwr670
	BSF         R6, 0 
	GOTO        L__lcd_pwr671
L__lcd_pwr670:
	BCF         R6, 0 
L__lcd_pwr671:
	BTFSC       PORTB+0, 2 
	GOTO        L__lcd_pwr672
	BSF         STATUS+0, 0 
	GOTO        L__lcd_pwr673
L__lcd_pwr672:
	BCF         STATUS+0, 0 
L__lcd_pwr673:
	BTFSC       R6, 0 
	GOTO        L__lcd_pwr674
	BTFSC       STATUS+0, 0 
	GOTO        L__lcd_pwr674
	BCF         R6, 1 
	GOTO        L__lcd_pwr675
L__lcd_pwr674:
	BSF         R6, 1 
L__lcd_pwr675:
	BTFSC       PORTB+0, 0 
	GOTO        L__lcd_pwr676
	BSF         STATUS+0, 0 
	GOTO        L__lcd_pwr677
L__lcd_pwr676:
	BCF         STATUS+0, 0 
L__lcd_pwr677:
	BTFSS       STATUS+0, 0 
	GOTO        L__lcd_pwr678
	BTFSS       _tune_btn_release+0, BitPos(_tune_btn_release+0) 
	GOTO        L__lcd_pwr678
	BSF         R6, 0 
	GOTO        L__lcd_pwr679
L__lcd_pwr678:
	BCF         R6, 0 
L__lcd_pwr679:
	BTFSC       R6, 1 
	GOTO        L__lcd_pwr680
	BTFSC       R6, 0 
	GOTO        L__lcd_pwr680
	BCF         STATUS+0, 0 
	GOTO        L__lcd_pwr681
L__lcd_pwr680:
	BSF         STATUS+0, 0 
L__lcd_pwr681:
	BTFSS       STATUS+0, 0 
	GOTO        L_lcd_pwr433
	CALL        _button_delay+0, 0
	MOVF        _but+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_pwr434
	CLRF        _but+0 
	GOTO        L_end_lcd_pwr
L_lcd_pwr434:
L_lcd_pwr433:
;main.c,668 :: 		get_pwr();
	CALL        _get_pwr+0, 0
;main.c,669 :: 		if(PWR>p) {p = PWR; SWR_fixed = SWR;}
	MOVLW       128
	XORWF       lcd_pwr_p_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       _PWR+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_pwr682
	MOVF        _PWR+0, 0 
	SUBWF       lcd_pwr_p_L0+0, 0 
L__lcd_pwr682:
	BTFSC       STATUS+0, 0 
	GOTO        L_lcd_pwr435
	MOVF        _PWR+0, 0 
	MOVWF       lcd_pwr_p_L0+0 
	MOVF        _PWR+1, 0 
	MOVWF       lcd_pwr_p_L0+1 
	MOVF        _SWR+0, 0 
	MOVWF       lcd_pwr_SWR_fixed_L0+0 
	MOVF        _SWR+1, 0 
	MOVWF       lcd_pwr_SWR_fixed_L0+1 
L_lcd_pwr435:
;main.c,670 :: 		Delay_ms(3);
	MOVLW       16
	MOVWF       R12, 0
	MOVLW       148
	MOVWF       R13, 0
L_lcd_pwr436:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr436
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr436
	NOP
;main.c,666 :: 		for(peak_cnt = 0; peak_cnt < cnt; peak_cnt++){
	INCF        lcd_pwr_peak_cnt_L0+0, 1 
;main.c,671 :: 		}
	GOTO        L_lcd_pwr430
L_lcd_pwr431:
;main.c,672 :: 		asm CLRWDT;
	CLRWDT
;main.c,673 :: 		if(p>=100){ p = (p + 5) / 10; p*= 10; }  // round to 1 W if more then 100 W
	MOVLW       128
	XORWF       lcd_pwr_p_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_pwr683
	MOVLW       100
	SUBWF       lcd_pwr_p_L0+0, 0 
L__lcd_pwr683:
	BTFSS       STATUS+0, 0 
	GOTO        L_lcd_pwr437
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
L_lcd_pwr437:
;main.c,674 :: 		Power = p;
	MOVF        lcd_pwr_p_L0+0, 0 
	MOVWF       _Power+0 
	MOVF        lcd_pwr_p_L0+1, 0 
	MOVWF       _Power+1 
;main.c,675 :: 		if(Power<10) SWR_fixed = 0;
	MOVLW       128
	XORWF       lcd_pwr_p_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_pwr684
	MOVLW       10
	SUBWF       lcd_pwr_p_L0+0, 0 
L__lcd_pwr684:
	BTFSC       STATUS+0, 0 
	GOTO        L_lcd_pwr438
	CLRF        lcd_pwr_SWR_fixed_L0+0 
	CLRF        lcd_pwr_SWR_fixed_L0+1 
L_lcd_pwr438:
;main.c,676 :: 		lcd_swr(SWR_fixed);
	MOVF        lcd_pwr_SWR_fixed_L0+0, 0 
	MOVWF       FARG_lcd_swr_swr+0 
	MOVF        lcd_pwr_SWR_fixed_L0+1, 0 
	MOVWF       FARG_lcd_swr_swr+1 
	CALL        _lcd_swr+0, 0
;main.c,677 :: 		if(Power>=10 & Dysp_delay>0) {
	MOVLW       128
	XORWF       _Power+1, 0 
	MOVWF       R1 
	MOVLW       128
	SUBWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_pwr685
	MOVLW       10
	SUBWF       _Power+0, 0 
L__lcd_pwr685:
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
	GOTO        L_lcd_pwr439
;main.c,678 :: 		if(dysp==0){ dysp = 1; dysp_on(); }          // dysplay ON
	MOVF        _dysp+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_pwr440
	MOVLW       1
	MOVWF       _dysp+0 
	CALL        _dysp_on+0, 0
L_lcd_pwr440:
;main.c,679 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
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
;main.c,680 :: 		}
L_lcd_pwr439:
;main.c,682 :: 		if(Auto & SWR_fixed>=Auto_delta & ((SWR_fixed>SWR_fixed_old & (SWR_fixed-SWR_fixed_old)>delta) | (SWR_fixed<SWR_fixed_old & (SWR_fixed_old-SWR_fixed)>delta) | SWR_fixed_old==999))
	MOVLW       128
	XORWF       lcd_pwr_SWR_fixed_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       _Auto_delta+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_pwr686
	MOVF        _Auto_delta+0, 0 
	SUBWF       lcd_pwr_SWR_fixed_L0+0, 0 
L__lcd_pwr686:
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
	GOTO        L__lcd_pwr687
	MOVF        lcd_pwr_SWR_fixed_L0+0, 0 
	SUBWF       _SWR_fixed_old+0, 0 
L__lcd_pwr687:
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
	GOTO        L__lcd_pwr688
	MOVF        R1, 0 
	SUBWF       lcd_pwr_delta_L0+0, 0 
L__lcd_pwr688:
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
	GOTO        L__lcd_pwr689
	MOVF        _SWR_fixed_old+0, 0 
	SUBWF       lcd_pwr_SWR_fixed_L0+0, 0 
L__lcd_pwr689:
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
	GOTO        L__lcd_pwr690
	MOVF        R1, 0 
	SUBWF       lcd_pwr_delta_L0+0, 0 
L__lcd_pwr690:
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
	GOTO        L__lcd_pwr691
	MOVLW       231
	XORWF       _SWR_fixed_old+0, 0 
L__lcd_pwr691:
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	MOVF        R5, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_pwr441
;main.c,683 :: 		Soft_tune = 1;
	MOVLW       1
	MOVWF       _Soft_tune+0 
L_lcd_pwr441:
;main.c,685 :: 		if(PORTB.B1==0 | PORTB.B2==0 | (PORTB.B0==0 & tune_btn_release)) {button_delay(); if(but==1) {but = 0; return;} }   // Fast return if button pressed
	BTFSC       PORTB+0, 1 
	GOTO        L__lcd_pwr692
	BSF         R6, 0 
	GOTO        L__lcd_pwr693
L__lcd_pwr692:
	BCF         R6, 0 
L__lcd_pwr693:
	BTFSC       PORTB+0, 2 
	GOTO        L__lcd_pwr694
	BSF         STATUS+0, 0 
	GOTO        L__lcd_pwr695
L__lcd_pwr694:
	BCF         STATUS+0, 0 
L__lcd_pwr695:
	BTFSC       R6, 0 
	GOTO        L__lcd_pwr696
	BTFSC       STATUS+0, 0 
	GOTO        L__lcd_pwr696
	BCF         R6, 1 
	GOTO        L__lcd_pwr697
L__lcd_pwr696:
	BSF         R6, 1 
L__lcd_pwr697:
	BTFSC       PORTB+0, 0 
	GOTO        L__lcd_pwr698
	BSF         STATUS+0, 0 
	GOTO        L__lcd_pwr699
L__lcd_pwr698:
	BCF         STATUS+0, 0 
L__lcd_pwr699:
	BTFSS       STATUS+0, 0 
	GOTO        L__lcd_pwr700
	BTFSS       _tune_btn_release+0, BitPos(_tune_btn_release+0) 
	GOTO        L__lcd_pwr700
	BSF         R6, 0 
	GOTO        L__lcd_pwr701
L__lcd_pwr700:
	BCF         R6, 0 
L__lcd_pwr701:
	BTFSC       R6, 1 
	GOTO        L__lcd_pwr702
	BTFSC       R6, 0 
	GOTO        L__lcd_pwr702
	BCF         STATUS+0, 0 
	GOTO        L__lcd_pwr703
L__lcd_pwr702:
	BSF         STATUS+0, 0 
L__lcd_pwr703:
	BTFSS       STATUS+0, 0 
	GOTO        L_lcd_pwr442
	CALL        _button_delay+0, 0
	MOVF        _but+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_pwr443
	CLRF        _but+0 
	GOTO        L_end_lcd_pwr
L_lcd_pwr443:
L_lcd_pwr442:
;main.c,687 :: 		show_pwr(Power, SWR_fixed);
	MOVF        _Power+0, 0 
	MOVWF       FARG_show_pwr_Power+0 
	MOVF        _Power+1, 0 
	MOVWF       FARG_show_pwr_Power+1 
	MOVF        lcd_pwr_SWR_fixed_L0+0, 0 
	MOVWF       FARG_show_pwr_SWR+0 
	MOVF        lcd_pwr_SWR_fixed_L0+1, 0 
	MOVWF       FARG_show_pwr_SWR+1 
	CALL        _show_pwr+0, 0
;main.c,689 :: 		if(PORTB.B1==0 | PORTB.B2==0 | (PORTB.B0==0 & tune_btn_release)) {button_delay(); if(but==1) {but = 0; return;} }
	BTFSC       PORTB+0, 1 
	GOTO        L__lcd_pwr704
	BSF         R6, 0 
	GOTO        L__lcd_pwr705
L__lcd_pwr704:
	BCF         R6, 0 
L__lcd_pwr705:
	BTFSC       PORTB+0, 2 
	GOTO        L__lcd_pwr706
	BSF         STATUS+0, 0 
	GOTO        L__lcd_pwr707
L__lcd_pwr706:
	BCF         STATUS+0, 0 
L__lcd_pwr707:
	BTFSC       R6, 0 
	GOTO        L__lcd_pwr708
	BTFSC       STATUS+0, 0 
	GOTO        L__lcd_pwr708
	BCF         R6, 1 
	GOTO        L__lcd_pwr709
L__lcd_pwr708:
	BSF         R6, 1 
L__lcd_pwr709:
	BTFSC       PORTB+0, 0 
	GOTO        L__lcd_pwr710
	BSF         STATUS+0, 0 
	GOTO        L__lcd_pwr711
L__lcd_pwr710:
	BCF         STATUS+0, 0 
L__lcd_pwr711:
	BTFSS       STATUS+0, 0 
	GOTO        L__lcd_pwr712
	BTFSS       _tune_btn_release+0, BitPos(_tune_btn_release+0) 
	GOTO        L__lcd_pwr712
	BSF         R6, 0 
	GOTO        L__lcd_pwr713
L__lcd_pwr712:
	BCF         R6, 0 
L__lcd_pwr713:
	BTFSC       R6, 1 
	GOTO        L__lcd_pwr714
	BTFSC       R6, 0 
	GOTO        L__lcd_pwr714
	BCF         STATUS+0, 0 
	GOTO        L__lcd_pwr715
L__lcd_pwr714:
	BSF         STATUS+0, 0 
L__lcd_pwr715:
	BTFSS       STATUS+0, 0 
	GOTO        L_lcd_pwr444
	CALL        _button_delay+0, 0
	MOVF        _but+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_pwr445
	CLRF        _but+0 
	GOTO        L_end_lcd_pwr
L_lcd_pwr445:
L_lcd_pwr444:
;main.c,690 :: 		asm CLRWDT;
	CLRWDT
;main.c,691 :: 		if(Overload==1) {
	MOVF        main_Overload+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_pwr446
;main.c,692 :: 		if(type==4 | type==5) {                  // 128*64 OLED
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
	GOTO        L_lcd_pwr447
;main.c,693 :: 		led_wr_str (2, 16, "        ", 8);
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
;main.c,694 :: 		delay_ms(100);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       8
	MOVWF       R12, 0
	MOVLW       119
	MOVWF       R13, 0
L_lcd_pwr448:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr448
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr448
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr448
;main.c,695 :: 		led_wr_str (2, 16, "OVERLOAD", 8);
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
;main.c,696 :: 		delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_lcd_pwr449:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr449
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr449
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr449
	NOP
	NOP
;main.c,697 :: 		asm CLRWDT;
	CLRWDT
;main.c,698 :: 		led_wr_str (2, 16, "        ", 8);
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
;main.c,699 :: 		delay_ms(300);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       23
	MOVWF       R12, 0
	MOVLW       106
	MOVWF       R13, 0
L_lcd_pwr450:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr450
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr450
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr450
	NOP
;main.c,700 :: 		asm CLRWDT;
	CLRWDT
;main.c,701 :: 		led_wr_str (2, 16, "OVERLOAD", 8);
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
;main.c,702 :: 		delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_lcd_pwr451:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr451
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr451
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr451
	NOP
	NOP
;main.c,703 :: 		asm CLRWDT;
	CLRWDT
;main.c,704 :: 		led_wr_str (2, 16, "        ", 8);
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
;main.c,705 :: 		delay_ms(300);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       23
	MOVWF       R12, 0
	MOVLW       106
	MOVWF       R13, 0
L_lcd_pwr452:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr452
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr452
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr452
	NOP
;main.c,706 :: 		asm CLRWDT;
	CLRWDT
;main.c,707 :: 		led_wr_str (2, 16, "OVERLOAD", 8);
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
;main.c,708 :: 		delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_lcd_pwr453:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr453
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr453
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr453
	NOP
	NOP
;main.c,709 :: 		asm CLRWDT;
	CLRWDT
;main.c,710 :: 		led_wr_str (2, 16, "        ", 8);
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
;main.c,711 :: 		delay_ms(100);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       8
	MOVWF       R12, 0
	MOVLW       119
	MOVWF       R13, 0
L_lcd_pwr454:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr454
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr454
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr454
;main.c,712 :: 		led_wr_str (2, 16, "SWR=    ", 8);
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
;main.c,713 :: 		}
	GOTO        L_lcd_pwr455
L_lcd_pwr447:
;main.c,714 :: 		else if(type!=0)  {        // 1602  & 128*32
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_pwr456
;main.c,715 :: 		led_wr_str (1, 0, "        ", 8);
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
;main.c,716 :: 		delay_ms(100);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       8
	MOVWF       R12, 0
	MOVLW       119
	MOVWF       R13, 0
L_lcd_pwr457:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr457
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr457
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr457
;main.c,717 :: 		led_wr_str (1, 0, "OVERLOAD", 8);
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
;main.c,718 :: 		delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_lcd_pwr458:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr458
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr458
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr458
	NOP
	NOP
;main.c,719 :: 		asm CLRWDT;
	CLRWDT
;main.c,720 :: 		led_wr_str (1, 0, "        ", 8);
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
;main.c,721 :: 		delay_ms(300);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       23
	MOVWF       R12, 0
	MOVLW       106
	MOVWF       R13, 0
L_lcd_pwr459:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr459
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr459
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr459
	NOP
;main.c,722 :: 		asm CLRWDT;
	CLRWDT
;main.c,723 :: 		led_wr_str (1, 0, "OVERLOAD", 8);
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
;main.c,724 :: 		delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_lcd_pwr460:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr460
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr460
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr460
	NOP
	NOP
;main.c,725 :: 		asm CLRWDT;
	CLRWDT
;main.c,726 :: 		led_wr_str (1, 0, "        ", 8);
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
;main.c,727 :: 		delay_ms(300);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       23
	MOVWF       R12, 0
	MOVLW       106
	MOVWF       R13, 0
L_lcd_pwr461:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr461
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr461
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr461
	NOP
;main.c,728 :: 		asm CLRWDT;
	CLRWDT
;main.c,729 :: 		led_wr_str (1, 0, "OVERLOAD", 8);
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
;main.c,730 :: 		delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_lcd_pwr462:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr462
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr462
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr462
	NOP
	NOP
;main.c,731 :: 		asm CLRWDT;
	CLRWDT
;main.c,732 :: 		led_wr_str (1, 0, "        ", 8);
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
;main.c,733 :: 		delay_ms(100);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       8
	MOVWF       R12, 0
	MOVLW       119
	MOVWF       R13, 0
L_lcd_pwr463:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr463
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr463
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr463
;main.c,734 :: 		led_wr_str (1, 0, "SWR=    ", 8);
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
;main.c,735 :: 		}
L_lcd_pwr456:
L_lcd_pwr455:
;main.c,736 :: 		asm CLRWDT;
	CLRWDT
;main.c,737 :: 		SWR_old = 10000;
	MOVLW       16
	MOVWF       _SWR_old+0 
	MOVLW       39
	MOVWF       _SWR_old+1 
;main.c,738 :: 		lcd_swr(SWR_fixed);
	MOVF        lcd_pwr_SWR_fixed_L0+0, 0 
	MOVWF       FARG_lcd_swr_swr+0 
	MOVF        lcd_pwr_SWR_fixed_L0+1, 0 
	MOVWF       FARG_lcd_swr_swr+1 
	CALL        _lcd_swr+0, 0
;main.c,739 :: 		}
L_lcd_pwr446:
;main.c,740 :: 		return;
;main.c,741 :: 		}
L_end_lcd_pwr:
	RETURN      0
; end of _lcd_pwr

_lcd_ind:

;main.c,743 :: 		void lcd_ind() {
;main.c,745 :: 		asm CLRWDT;
	CLRWDT
;main.c,747 :: 		work_int = 0;
	CLRF        _work_int+0 
	CLRF        _work_int+1 
;main.c,748 :: 		if(ind.B0) work_int += Ind1;
	BTFSS       main_ind+0, 0 
	GOTO        L_lcd_ind465
	MOVF        _Ind1+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Ind1+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind465:
;main.c,749 :: 		if(ind.B1) work_int += Ind2;
	BTFSS       main_ind+0, 1 
	GOTO        L_lcd_ind466
	MOVF        _Ind2+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Ind2+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind466:
;main.c,750 :: 		if(ind.B2) work_int += Ind3;
	BTFSS       main_ind+0, 2 
	GOTO        L_lcd_ind467
	MOVF        _Ind3+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Ind3+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind467:
;main.c,751 :: 		if(ind.B3) work_int += Ind4;
	BTFSS       main_ind+0, 3 
	GOTO        L_lcd_ind468
	MOVF        _Ind4+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Ind4+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind468:
;main.c,752 :: 		if(ind.B4) work_int += Ind5;
	BTFSS       main_ind+0, 4 
	GOTO        L_lcd_ind469
	MOVF        _Ind5+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Ind5+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind469:
;main.c,753 :: 		if(ind.B5) work_int += Ind6;
	BTFSS       main_ind+0, 5 
	GOTO        L_lcd_ind470
	MOVF        _Ind6+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Ind6+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind470:
;main.c,754 :: 		if(ind.B6) work_int += Ind7;
	BTFSS       main_ind+0, 6 
	GOTO        L_lcd_ind471
	MOVF        _Ind7+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Ind7+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind471:
;main.c,755 :: 		if(work_int>9999) {    // more then 9999 nH
	MOVLW       128
	XORLW       39
	MOVWF       R0 
	MOVLW       128
	XORWF       _work_int+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_ind717
	MOVF        _work_int+0, 0 
	SUBLW       15
L__lcd_ind717:
	BTFSC       STATUS+0, 0 
	GOTO        L_lcd_ind472
;main.c,756 :: 		work_int += 50; // round
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
;main.c,757 :: 		IntToStr(work_int, work_str);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,758 :: 		work_str_2[0] = work_str[1];
	MOVF        _work_str+1, 0 
	MOVWF       _work_str_2+0 
;main.c,759 :: 		work_str_2[1] = work_str[2];
	MOVF        _work_str+2, 0 
	MOVWF       _work_str_2+1 
;main.c,760 :: 		work_str_2[2] = '.';
	MOVLW       46
	MOVWF       _work_str_2+2 
;main.c,761 :: 		work_str_2[3] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+3 
;main.c,762 :: 		}
	GOTO        L_lcd_ind473
L_lcd_ind472:
;main.c,764 :: 		IntToStr(work_int, work_str);
	MOVF        _work_int+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _work_int+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,765 :: 		if(work_str[2] != ' ') work_str_2[0] = work_str[2]; else work_str_2[0] = '0';
	MOVF        _work_str+2, 0 
	XORLW       32
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_ind474
	MOVF        _work_str+2, 0 
	MOVWF       _work_str_2+0 
	GOTO        L_lcd_ind475
L_lcd_ind474:
	MOVLW       48
	MOVWF       _work_str_2+0 
L_lcd_ind475:
;main.c,766 :: 		work_str_2[1] = '.';
	MOVLW       46
	MOVWF       _work_str_2+1 
;main.c,767 :: 		if(work_str[3] != ' ') work_str_2[2] = work_str[3]; else work_str_2[2] = '0';
	MOVF        _work_str+3, 0 
	XORLW       32
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_ind476
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+2 
	GOTO        L_lcd_ind477
L_lcd_ind476:
	MOVLW       48
	MOVWF       _work_str_2+2 
L_lcd_ind477:
;main.c,768 :: 		if(work_str[4] != ' ') work_str_2[3] = work_str[4]; else work_str_2[3] = '0';
	MOVF        _work_str+4, 0 
	XORLW       32
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_ind478
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+3 
	GOTO        L_lcd_ind479
L_lcd_ind478:
	MOVLW       48
	MOVWF       _work_str_2+3 
L_lcd_ind479:
;main.c,769 :: 		}
L_lcd_ind473:
;main.c,770 :: 		if(type==4 | type==5) {  // 128*64 OLED
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
	GOTO        L_lcd_ind480
;main.c,771 :: 		if(SW==1) column = 4; else column = 6;
	MOVF        main_SW+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_ind481
	MOVLW       4
	MOVWF       lcd_ind_column_L0+0 
	GOTO        L_lcd_ind482
L_lcd_ind481:
	MOVLW       6
	MOVWF       lcd_ind_column_L0+0 
L_lcd_ind482:
;main.c,772 :: 		led_wr_str (column, 16, "L=", 2);
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
;main.c,773 :: 		led_wr_str (column, 16+6*12, "uH", 2);
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
;main.c,774 :: 		led_wr_str (column, 16+2*12, work_str_2, 4);
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
;main.c,775 :: 		}
	GOTO        L_lcd_ind483
L_lcd_ind480:
;main.c,776 :: 		else if(type==2 | type==3) {// 128*32 OLED
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
	GOTO        L_lcd_ind484
;main.c,777 :: 		if(SW==1) column = 0; else column = 1;
	MOVF        main_SW+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_ind485
	CLRF        lcd_ind_column_L0+0 
	GOTO        L_lcd_ind486
L_lcd_ind485:
	MOVLW       1
	MOVWF       lcd_ind_column_L0+0 
L_lcd_ind486:
;main.c,778 :: 		led_wr_str (column, 9, "L=", 2);
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
;main.c,779 :: 		led_wr_str (column, 15, "uH", 2);
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
;main.c,780 :: 		led_wr_str (column, 11, work_str_2, 4);
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
;main.c,781 :: 		}
	GOTO        L_lcd_ind487
L_lcd_ind484:
;main.c,782 :: 		else if(type==1) { //  1602 LCD
	MOVF        _type+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_ind488
;main.c,783 :: 		if(SW==1) column = 0; else column = 1;
	MOVF        main_SW+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_ind489
	CLRF        lcd_ind_column_L0+0 
	GOTO        L_lcd_ind490
L_lcd_ind489:
	MOVLW       1
	MOVWF       lcd_ind_column_L0+0 
L_lcd_ind490:
;main.c,784 :: 		led_wr_str (column, 9, "L=", 2);
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
;main.c,785 :: 		led_wr_str (column, 15, "u", 1);
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
;main.c,786 :: 		led_wr_str (column, 11, work_str_2, 4);
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
;main.c,787 :: 		}
L_lcd_ind488:
L_lcd_ind487:
L_lcd_ind483:
;main.c,789 :: 		asm CLRWDT;
	CLRWDT
;main.c,791 :: 		work_int = 0;
	CLRF        _work_int+0 
	CLRF        _work_int+1 
;main.c,792 :: 		if(cap.B0) work_int += Cap1;
	BTFSS       main_cap+0, 0 
	GOTO        L_lcd_ind492
	MOVF        _Cap1+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Cap1+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind492:
;main.c,793 :: 		if(cap.B1) work_int += Cap2;
	BTFSS       main_cap+0, 1 
	GOTO        L_lcd_ind493
	MOVF        _Cap2+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Cap2+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind493:
;main.c,794 :: 		if(cap.B2) work_int += Cap3;
	BTFSS       main_cap+0, 2 
	GOTO        L_lcd_ind494
	MOVF        _Cap3+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Cap3+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind494:
;main.c,795 :: 		if(cap.B3) work_int += Cap4;
	BTFSS       main_cap+0, 3 
	GOTO        L_lcd_ind495
	MOVF        _Cap4+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Cap4+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind495:
;main.c,796 :: 		if(cap.B4) work_int += Cap5;
	BTFSS       main_cap+0, 4 
	GOTO        L_lcd_ind496
	MOVF        _Cap5+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Cap5+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind496:
;main.c,797 :: 		if(cap.B5) work_int += Cap6;
	BTFSS       main_cap+0, 5 
	GOTO        L_lcd_ind497
	MOVF        _Cap6+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Cap6+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind497:
;main.c,798 :: 		if(cap.B6) work_int += Cap7;
	BTFSS       main_cap+0, 6 
	GOTO        L_lcd_ind498
	MOVF        _Cap7+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Cap7+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind498:
;main.c,799 :: 		IntToStr(work_int, work_str);
	MOVF        _work_int+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _work_int+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,800 :: 		work_str_2[0] = work_str[2];
	MOVF        _work_str+2, 0 
	MOVWF       _work_str_2+0 
;main.c,801 :: 		work_str_2[1] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+1 
;main.c,802 :: 		work_str_2[2] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+2 
;main.c,803 :: 		work_str_2[3] = work_str[5];
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+3 
;main.c,805 :: 		if(type==4 | type==5) {  // 128*64 OLED
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
	GOTO        L_lcd_ind499
;main.c,806 :: 		if(SW==1) column = 6; else column = 4;
	MOVF        main_SW+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_ind500
	MOVLW       6
	MOVWF       lcd_ind_column_L0+0 
	GOTO        L_lcd_ind501
L_lcd_ind500:
	MOVLW       4
	MOVWF       lcd_ind_column_L0+0 
L_lcd_ind501:
;main.c,807 :: 		led_wr_str (column, 16, "C=", 2);
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
;main.c,808 :: 		led_wr_str (column, 16+6*12, "pF", 2);
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
;main.c,809 :: 		led_wr_str (column, 16+2*12, work_str_2, 4);
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
;main.c,810 :: 		}
	GOTO        L_lcd_ind502
L_lcd_ind499:
;main.c,811 :: 		else if(type==2 | type==3) {// 128*32 OLED
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
	GOTO        L_lcd_ind503
;main.c,812 :: 		if(SW==1) column = 1; else column = 0;
	MOVF        main_SW+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_ind504
	MOVLW       1
	MOVWF       lcd_ind_column_L0+0 
	GOTO        L_lcd_ind505
L_lcd_ind504:
	CLRF        lcd_ind_column_L0+0 
L_lcd_ind505:
;main.c,813 :: 		led_wr_str (column, 9, "C=", 2);
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
;main.c,814 :: 		led_wr_str (column, 15, "pF", 2);
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
;main.c,815 :: 		led_wr_str (column, 11, work_str_2, 4);
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
;main.c,816 :: 		}
	GOTO        L_lcd_ind506
L_lcd_ind503:
;main.c,817 :: 		else if(type==1) { // 1602 LCD
	MOVF        _type+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_ind507
;main.c,818 :: 		if(SW==1) column = 1; else column = 0;
	MOVF        main_SW+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_ind508
	MOVLW       1
	MOVWF       lcd_ind_column_L0+0 
	GOTO        L_lcd_ind509
L_lcd_ind508:
	CLRF        lcd_ind_column_L0+0 
L_lcd_ind509:
;main.c,819 :: 		led_wr_str (column, 9, "C=", 2);
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
;main.c,820 :: 		led_wr_str (column, 15, "p", 1);
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
;main.c,821 :: 		led_wr_str (column, 11, work_str_2, 4);
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
;main.c,822 :: 		}
L_lcd_ind507:
L_lcd_ind506:
L_lcd_ind502:
;main.c,824 :: 		asm CLRWDT;
	CLRWDT
;main.c,825 :: 		return;
;main.c,826 :: 		}
L_end_lcd_ind:
	RETURN      0
; end of _lcd_ind

_Test_init:

;main.c,829 :: 		void Test_init(void) { // Test mode
;main.c,830 :: 		if(type==4 | type==5)        // 128*64 OLED
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
	GOTO        L_Test_init510
;main.c,831 :: 		led_wr_str (0, 10, "TEST MODE", 9);
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
	GOTO        L_Test_init511
L_Test_init510:
;main.c,832 :: 		else if(type!=0)            // 1602 LCD  or 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_Test_init512
;main.c,833 :: 		led_wr_str (0, 3, "TEST MODE", 9);
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
L_Test_init512:
L_Test_init511:
;main.c,834 :: 		asm CLRWDT;
	CLRWDT
;main.c,835 :: 		Delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_Test_init513:
	DECFSZ      R13, 1, 1
	BRA         L_Test_init513
	DECFSZ      R12, 1, 1
	BRA         L_Test_init513
	DECFSZ      R11, 1, 1
	BRA         L_Test_init513
	NOP
	NOP
;main.c,836 :: 		asm CLRWDT;
	CLRWDT
;main.c,837 :: 		Delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_Test_init514:
	DECFSZ      R13, 1, 1
	BRA         L_Test_init514
	DECFSZ      R12, 1, 1
	BRA         L_Test_init514
	DECFSZ      R11, 1, 1
	BRA         L_Test_init514
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
L_Test_init515:
	DECFSZ      R13, 1, 1
	BRA         L_Test_init515
	DECFSZ      R12, 1, 1
	BRA         L_Test_init515
	DECFSZ      R11, 1, 1
	BRA         L_Test_init515
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
L_Test_init516:
	DECFSZ      R13, 1, 1
	BRA         L_Test_init516
	DECFSZ      R12, 1, 1
	BRA         L_Test_init516
	DECFSZ      R11, 1, 1
	BRA         L_Test_init516
	NOP
	NOP
;main.c,842 :: 		asm CLRWDT;
	CLRWDT
;main.c,843 :: 		if(type==4 | type==5)        // 128*64 OLED
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
	GOTO        L_Test_init517
;main.c,844 :: 		led_wr_str (0, 10, "         ", 9);
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
	GOTO        L_Test_init518
L_Test_init517:
;main.c,845 :: 		else if(type!=0)            // 1602 LCD  or 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_Test_init519
;main.c,846 :: 		led_wr_str (0, 3,  "         ", 9);
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
L_Test_init519:
L_Test_init518:
;main.c,847 :: 		atu_reset();
	CALL        _atu_reset+0, 0
;main.c,848 :: 		SW = 1; // C to OUT
	MOVLW       1
	MOVWF       main_SW+0 
;main.c,849 :: 		set_sw(SW);
	MOVLW       1
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
;main.c,850 :: 		EEPROM_Write(255, cap);
	MOVLW       255
	MOVWF       FARG_EEPROM_Write_address+0 
	MOVF        main_cap+0, 0 
	MOVWF       FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,851 :: 		EEPROM_Write(254, ind);
	MOVLW       254
	MOVWF       FARG_EEPROM_Write_address+0 
	MOVF        main_ind+0, 0 
	MOVWF       FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,852 :: 		EEPROM_Write(253, SW);
	MOVLW       253
	MOVWF       FARG_EEPROM_Write_address+0 
	MOVF        main_SW+0, 0 
	MOVWF       FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,854 :: 		if(type==4 | type==5)        // 128*64 OLED
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
	GOTO        L_Test_init520
;main.c,855 :: 		led_wr_str (0, 16+12*8, "l", 1);
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
	GOTO        L_Test_init521
L_Test_init520:
;main.c,856 :: 		else if(type!=0)             // 1602 LCD or 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_Test_init522
;main.c,857 :: 		led_wr_str (0, 8, "l", 1);
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
L_Test_init522:
L_Test_init521:
;main.c,859 :: 		lcd_prep_short = 1;
	MOVLW       1
	MOVWF       _lcd_prep_short+0 
;main.c,860 :: 		lcd_prep();
	CALL        _lcd_prep+0, 0
;main.c,861 :: 		return;
;main.c,862 :: 		}
L_end_Test_init:
	RETURN      0
; end of _Test_init

_cells_init:

;main.c,865 :: 		void cells_init(void) {
;main.c,867 :: 		asm CLRWDT;
	CLRWDT
;main.c,869 :: 		type = EEPROM_Read(1); // type of display
	MOVLW       1
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       _type+0 
;main.c,870 :: 		if(EEPROM_Read(2) == 1) Auto = 1;
	MOVLW       2
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_cells_init523
	MOVLW       1
	MOVWF       _Auto+0 
L_cells_init523:
;main.c,871 :: 		Rel_Del = Bcd2Dec(EEPROM_Read(3)); // Relay's Delay
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
;main.c,872 :: 		Auto_delta = Bcd2Dec(EEPROM_Read(4)) * 10;  // Auto_delta
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
;main.c,873 :: 		min_for_start = Bcd2Dec(EEPROM_Read(5)) * 10; // P_min_for_start
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
;main.c,874 :: 		max_for_start = Bcd2Dec(EEPROM_Read(6)) * 10; // P_max_for_start
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
;main.c,877 :: 		max_swr = Bcd2Dec(EEPROM_Read(9)) * 10; // Max SWR
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
;main.c,878 :: 		L_q = EEPROM_Read(10);
	MOVLW       10
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_L_q+0 
;main.c,879 :: 		L_linear = EEPROM_Read(11);
	MOVLW       11
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_L_linear+0 
;main.c,880 :: 		C_q = EEPROM_Read(12);
	MOVLW       12
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_C_q+0 
;main.c,881 :: 		C_linear = EEPROM_Read(13);
	MOVLW       13
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_C_linear+0 
;main.c,882 :: 		D_correction = EEPROM_Read(14);
	MOVLW       14
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_D_correction+0 
;main.c,883 :: 		L_invert = EEPROM_Read(15);
	MOVLW       15
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_L_invert+0 
;main.c,885 :: 		asm CLRWDT;
	CLRWDT
;main.c,886 :: 		Ind1 =  Bcd2Dec(EEPROM_Read(16)) * 100 + Bcd2Dec(EEPROM_Read(17));  // Ind1
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
;main.c,887 :: 		Ind2 =  Bcd2Dec(EEPROM_Read(18)) * 100 + Bcd2Dec(EEPROM_Read(19));  // Ind2
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
;main.c,888 :: 		Ind3 =  Bcd2Dec(EEPROM_Read(20)) * 100 + Bcd2Dec(EEPROM_Read(21));  // Ind3
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
;main.c,889 :: 		Ind4 =  Bcd2Dec(EEPROM_Read(22)) * 100 + Bcd2Dec(EEPROM_Read(23));  // Ind4
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
;main.c,890 :: 		Ind5 =  Bcd2Dec(EEPROM_Read(24)) * 100 + Bcd2Dec(EEPROM_Read(25));  // Ind5
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
;main.c,891 :: 		Ind6 =  Bcd2Dec(EEPROM_Read(26)) * 100 + Bcd2Dec(EEPROM_Read(27));  // Ind6
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
;main.c,892 :: 		Ind7 =  Bcd2Dec(EEPROM_Read(28)) * 100 + Bcd2Dec(EEPROM_Read(29));  // Ind7
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
;main.c,894 :: 		Cap1 =  Bcd2Dec(EEPROM_Read(32)) * 100 + Bcd2Dec(EEPROM_Read(33));  // Cap1
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
;main.c,895 :: 		Cap2 =  Bcd2Dec(EEPROM_Read(34)) * 100 + Bcd2Dec(EEPROM_Read(35));  // Cap2
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
;main.c,896 :: 		Cap3 =  Bcd2Dec(EEPROM_Read(36)) * 100 + Bcd2Dec(EEPROM_Read(37));  // Cap3
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
;main.c,897 :: 		Cap4 =  Bcd2Dec(EEPROM_Read(38)) * 100 + Bcd2Dec(EEPROM_Read(39));  // Cap4
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
;main.c,898 :: 		Cap5 =  Bcd2Dec(EEPROM_Read(40)) * 100 + Bcd2Dec(EEPROM_Read(41));  // Cap5
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
;main.c,899 :: 		Cap6 =  Bcd2Dec(EEPROM_Read(42)) * 100 + Bcd2Dec(EEPROM_Read(43));  // Cap6
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
;main.c,900 :: 		Cap7 =  Bcd2Dec(EEPROM_Read(44)) * 100 + Bcd2Dec(EEPROM_Read(45));  // Cap7
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
;main.c,902 :: 		P_High = EEPROM_Read(0x30);  // High power
	MOVLW       48
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_P_High+0 
;main.c,903 :: 		K_Mult = Bcd2Dec(EEPROM_Read(0x31)); // Tandem Match rate
	MOVLW       49
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	MOVWF       main_K_Mult+0 
;main.c,904 :: 		Dysp_delay = Bcd2Dec(EEPROM_Read(0x32)); // Dysplay ON delay
	MOVLW       50
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	MOVWF       _Dysp_delay+0 
;main.c,905 :: 		Loss_ind = EEPROM_Read(0x33);
	MOVLW       51
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_Loss_ind+0 
;main.c,906 :: 		Fid_loss = Bcd2Dec(EEPROM_Read(0x34));
	MOVLW       52
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	MOVWF       _Fid_loss+0 
;main.c,907 :: 		Relay_off = Bcd2Dec(EEPROM_Read(0x35));
	MOVLW       53
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	MOVWF       main_Relay_off+0 
;main.c,908 :: 		asm CLRWDT;
	CLRWDT
;main.c,909 :: 		return;
;main.c,911 :: 		}
L_end_cells_init:
	RETURN      0
; end of _cells_init

_show_loss:

;main.c,913 :: 		void show_loss(void) {
;main.c,914 :: 		IntToStr(Fid_loss, work_str);
	MOVF        _Fid_loss+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVLW       0
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,915 :: 		if(Fid_loss>=10) work_str_2[0] = work_str[4];
	MOVLW       10
	SUBWF       _Fid_loss+0, 0 
	BTFSS       STATUS+0, 0 
	GOTO        L_show_loss524
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+0 
	GOTO        L_show_loss525
L_show_loss524:
;main.c,916 :: 		else work_str_2[0] = '0';
	MOVLW       48
	MOVWF       _work_str_2+0 
L_show_loss525:
;main.c,917 :: 		work_str_2[1] = '.';
	MOVLW       46
	MOVWF       _work_str_2+1 
;main.c,918 :: 		work_str_2[2] = work_str[5];
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+2 
;main.c,919 :: 		if(type==4 | type==5) led_wr_str (4, 6, work_str_2, 3); // 128*64
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
	GOTO        L_show_loss526
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
	GOTO        L_show_loss527
L_show_loss526:
;main.c,920 :: 		else if(type!=0) led_wr_str (1, 0, work_str_2, 3); // 1602 | 128*32
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_show_loss528
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
L_show_loss528:
L_show_loss527:
;main.c,921 :: 		return;
;main.c,922 :: 		}
L_end_show_loss:
	RETURN      0
; end of _show_loss
