
_i2c_delay:

;main.c,8 :: 		void i2c_delay() {
;main.c,9 :: 		Delay_us(5);
	MOVLW       3
	MOVWF       R13, 0
L_i2c_delay0:
	DECFSZ      R13, 1, 1
	BRA         L_i2c_delay0
;main.c,10 :: 		}
L_end_i2c_delay:
	RETURN      0
; end of _i2c_delay

_scl_high:

;main.c,12 :: 		void scl_high() { TRISC6_bit = 1; }
	BSF         TRISC6_bit+0, BitPos(TRISC6_bit+0) 
L_end_scl_high:
	RETURN      0
; end of _scl_high

_scl_low:

;main.c,13 :: 		void scl_low()  { TRISC6_bit = 0; LATC6_bit = 0; }
	BCF         TRISC6_bit+0, BitPos(TRISC6_bit+0) 
	BCF         LATC6_bit+0, BitPos(LATC6_bit+0) 
L_end_scl_low:
	RETURN      0
; end of _scl_low

_sda_high:

;main.c,15 :: 		void sda_high() { TRISC7_bit = 1; }
	BSF         TRISC7_bit+0, BitPos(TRISC7_bit+0) 
L_end_sda_high:
	RETURN      0
; end of _sda_high

_sda_low:

;main.c,16 :: 		void sda_low()  { TRISC7_bit = 0; LATC7_bit = 0; }
	BCF         TRISC7_bit+0, BitPos(TRISC7_bit+0) 
	BCF         LATC7_bit+0, BitPos(LATC7_bit+0) 
L_end_sda_low:
	RETURN      0
; end of _sda_low

_i2c_init:

;main.c,18 :: 		void i2c_init() {
;main.c,19 :: 		LATC6_bit = 0;
	BCF         LATC6_bit+0, BitPos(LATC6_bit+0) 
;main.c,20 :: 		LATC7_bit = 0;
	BCF         LATC7_bit+0, BitPos(LATC7_bit+0) 
;main.c,21 :: 		scl_high();
	CALL        _scl_high+0, 0
;main.c,22 :: 		sda_high();
	CALL        _sda_high+0, 0
;main.c,23 :: 		}
L_end_i2c_init:
	RETURN      0
; end of _i2c_init

_i2c_start:

;main.c,25 :: 		void i2c_start() {
;main.c,26 :: 		sda_high();
	CALL        _sda_high+0, 0
;main.c,27 :: 		scl_high();
	CALL        _scl_high+0, 0
;main.c,28 :: 		i2c_delay();
	CALL        _i2c_delay+0, 0
;main.c,29 :: 		sda_low();
	CALL        _sda_low+0, 0
;main.c,30 :: 		i2c_delay();
	CALL        _i2c_delay+0, 0
;main.c,31 :: 		scl_low();
	CALL        _scl_low+0, 0
;main.c,32 :: 		}
L_end_i2c_start:
	RETURN      0
; end of _i2c_start

_i2c_stop:

;main.c,34 :: 		void i2c_stop() {
;main.c,35 :: 		sda_low();
	CALL        _sda_low+0, 0
;main.c,36 :: 		i2c_delay();
	CALL        _i2c_delay+0, 0
;main.c,37 :: 		scl_high();
	CALL        _scl_high+0, 0
;main.c,38 :: 		i2c_delay();
	CALL        _i2c_delay+0, 0
;main.c,39 :: 		sda_high();
	CALL        _sda_high+0, 0
;main.c,40 :: 		i2c_delay();
	CALL        _i2c_delay+0, 0
;main.c,41 :: 		}
L_end_i2c_stop:
	RETURN      0
; end of _i2c_stop

_i2c_write:

;main.c,43 :: 		void i2c_write(unsigned char d) {
;main.c,46 :: 		for(i = 0; i < 8; i++) {
	CLRF        i2c_write_i_L0+0 
L_i2c_write1:
	MOVLW       8
	SUBWF       i2c_write_i_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_i2c_write2
;main.c,47 :: 		if(d & 0x80) sda_high();
	BTFSS       FARG_i2c_write_d+0, 7 
	GOTO        L_i2c_write4
	CALL        _sda_high+0, 0
	GOTO        L_i2c_write5
L_i2c_write4:
;main.c,48 :: 		else         sda_low();
	CALL        _sda_low+0, 0
L_i2c_write5:
;main.c,50 :: 		i2c_delay();
	CALL        _i2c_delay+0, 0
;main.c,51 :: 		scl_high();
	CALL        _scl_high+0, 0
;main.c,52 :: 		i2c_delay();
	CALL        _i2c_delay+0, 0
;main.c,53 :: 		scl_low();
	CALL        _scl_low+0, 0
;main.c,55 :: 		d <<= 1;
	RLCF        FARG_i2c_write_d+0, 1 
	BCF         FARG_i2c_write_d+0, 0 
;main.c,46 :: 		for(i = 0; i < 8; i++) {
	INCF        i2c_write_i_L0+0, 1 
;main.c,56 :: 		}
	GOTO        L_i2c_write1
L_i2c_write2:
;main.c,59 :: 		sda_high();
	CALL        _sda_high+0, 0
;main.c,60 :: 		i2c_delay();
	CALL        _i2c_delay+0, 0
;main.c,61 :: 		scl_high();
	CALL        _scl_high+0, 0
;main.c,62 :: 		i2c_delay();
	CALL        _i2c_delay+0, 0
;main.c,63 :: 		scl_low();
	CALL        _scl_low+0, 0
;main.c,64 :: 		}
L_end_i2c_write:
	RETURN      0
; end of _i2c_write

_oled_cmd:

;main.c,66 :: 		void oled_cmd(unsigned char c) {
;main.c,67 :: 		i2c_start();
	CALL        _i2c_start+0, 0
;main.c,68 :: 		i2c_write(OLED_ADDR);
	MOVLW       120
	MOVWF       FARG_i2c_write_d+0 
	CALL        _i2c_write+0, 0
;main.c,69 :: 		i2c_write(0x00);   // Control byte: commands
	CLRF        FARG_i2c_write_d+0 
	CALL        _i2c_write+0, 0
;main.c,70 :: 		i2c_write(c);
	MOVF        FARG_oled_cmd_c+0, 0 
	MOVWF       FARG_i2c_write_d+0 
	CALL        _i2c_write+0, 0
;main.c,71 :: 		i2c_stop();
	CALL        _i2c_stop+0, 0
;main.c,72 :: 		}
L_end_oled_cmd:
	RETURN      0
; end of _oled_cmd

_oled_data:

;main.c,74 :: 		void oled_data(unsigned char d) {
;main.c,75 :: 		i2c_start();
	CALL        _i2c_start+0, 0
;main.c,76 :: 		i2c_write(OLED_ADDR);
	MOVLW       120
	MOVWF       FARG_i2c_write_d+0 
	CALL        _i2c_write+0, 0
;main.c,77 :: 		i2c_write(0x40);   // Control byte: data
	MOVLW       64
	MOVWF       FARG_i2c_write_d+0 
	CALL        _i2c_write+0, 0
;main.c,78 :: 		i2c_write(d);
	MOVF        FARG_oled_data_d+0, 0 
	MOVWF       FARG_i2c_write_d+0 
	CALL        _i2c_write+0, 0
;main.c,79 :: 		i2c_stop();
	CALL        _i2c_stop+0, 0
;main.c,80 :: 		}
L_end_oled_data:
	RETURN      0
; end of _oled_data

_oled_init_test:

;main.c,82 :: 		void oled_init_test() {
;main.c,83 :: 		oled_cmd(0xAE);
	MOVLW       174
	MOVWF       FARG_oled_cmd_c+0 
	CALL        _oled_cmd+0, 0
;main.c,84 :: 		oled_cmd(0xD5); oled_cmd(0x80);
	MOVLW       213
	MOVWF       FARG_oled_cmd_c+0 
	CALL        _oled_cmd+0, 0
	MOVLW       128
	MOVWF       FARG_oled_cmd_c+0 
	CALL        _oled_cmd+0, 0
;main.c,85 :: 		oled_cmd(0xA8); oled_cmd(0x3F);
	MOVLW       168
	MOVWF       FARG_oled_cmd_c+0 
	CALL        _oled_cmd+0, 0
	MOVLW       63
	MOVWF       FARG_oled_cmd_c+0 
	CALL        _oled_cmd+0, 0
;main.c,86 :: 		oled_cmd(0xD3); oled_cmd(0x00);
	MOVLW       211
	MOVWF       FARG_oled_cmd_c+0 
	CALL        _oled_cmd+0, 0
	CLRF        FARG_oled_cmd_c+0 
	CALL        _oled_cmd+0, 0
;main.c,87 :: 		oled_cmd(0x40);
	MOVLW       64
	MOVWF       FARG_oled_cmd_c+0 
	CALL        _oled_cmd+0, 0
;main.c,88 :: 		oled_cmd(0x8D); oled_cmd(0x14);
	MOVLW       141
	MOVWF       FARG_oled_cmd_c+0 
	CALL        _oled_cmd+0, 0
	MOVLW       20
	MOVWF       FARG_oled_cmd_c+0 
	CALL        _oled_cmd+0, 0
;main.c,89 :: 		oled_cmd(0x20); oled_cmd(0x00);
	MOVLW       32
	MOVWF       FARG_oled_cmd_c+0 
	CALL        _oled_cmd+0, 0
	CLRF        FARG_oled_cmd_c+0 
	CALL        _oled_cmd+0, 0
;main.c,90 :: 		oled_cmd(0xA1);
	MOVLW       161
	MOVWF       FARG_oled_cmd_c+0 
	CALL        _oled_cmd+0, 0
;main.c,91 :: 		oled_cmd(0xC8);
	MOVLW       200
	MOVWF       FARG_oled_cmd_c+0 
	CALL        _oled_cmd+0, 0
;main.c,92 :: 		oled_cmd(0xDA); oled_cmd(0x12);
	MOVLW       218
	MOVWF       FARG_oled_cmd_c+0 
	CALL        _oled_cmd+0, 0
	MOVLW       18
	MOVWF       FARG_oled_cmd_c+0 
	CALL        _oled_cmd+0, 0
;main.c,93 :: 		oled_cmd(0x81); oled_cmd(0x7F);
	MOVLW       129
	MOVWF       FARG_oled_cmd_c+0 
	CALL        _oled_cmd+0, 0
	MOVLW       127
	MOVWF       FARG_oled_cmd_c+0 
	CALL        _oled_cmd+0, 0
;main.c,94 :: 		oled_cmd(0xD9); oled_cmd(0xF1);
	MOVLW       217
	MOVWF       FARG_oled_cmd_c+0 
	CALL        _oled_cmd+0, 0
	MOVLW       241
	MOVWF       FARG_oled_cmd_c+0 
	CALL        _oled_cmd+0, 0
;main.c,95 :: 		oled_cmd(0xDB); oled_cmd(0x40);
	MOVLW       219
	MOVWF       FARG_oled_cmd_c+0 
	CALL        _oled_cmd+0, 0
	MOVLW       64
	MOVWF       FARG_oled_cmd_c+0 
	CALL        _oled_cmd+0, 0
;main.c,96 :: 		oled_cmd(0xA4);
	MOVLW       164
	MOVWF       FARG_oled_cmd_c+0 
	CALL        _oled_cmd+0, 0
;main.c,97 :: 		oled_cmd(0xA6);
	MOVLW       166
	MOVWF       FARG_oled_cmd_c+0 
	CALL        _oled_cmd+0, 0
;main.c,98 :: 		oled_cmd(0xAF);
	MOVLW       175
	MOVWF       FARG_oled_cmd_c+0 
	CALL        _oled_cmd+0, 0
;main.c,99 :: 		}
L_end_oled_init_test:
	RETURN      0
; end of _oled_init_test

_oled_set_pos:

;main.c,101 :: 		void oled_set_pos(unsigned char page, unsigned char col) {
;main.c,102 :: 		oled_cmd(0xB0 | page);
	MOVLW       176
	IORWF       FARG_oled_set_pos_page+0, 0 
	MOVWF       FARG_oled_cmd_c+0 
	CALL        _oled_cmd+0, 0
;main.c,103 :: 		oled_cmd(0x00 | (col & 0x0F));
	MOVLW       15
	ANDWF       FARG_oled_set_pos_col+0, 0 
	MOVWF       FARG_oled_cmd_c+0 
	CALL        _oled_cmd+0, 0
;main.c,104 :: 		oled_cmd(0x10 | (col >> 4));
	MOVF        FARG_oled_set_pos_col+0, 0 
	MOVWF       R0 
	RRCF        R0, 1 
	BCF         R0, 7 
	RRCF        R0, 1 
	BCF         R0, 7 
	RRCF        R0, 1 
	BCF         R0, 7 
	RRCF        R0, 1 
	BCF         R0, 7 
	MOVLW       16
	IORWF       R0, 0 
	MOVWF       FARG_oled_cmd_c+0 
	CALL        _oled_cmd+0, 0
;main.c,105 :: 		}
L_end_oled_set_pos:
	RETURN      0
; end of _oled_set_pos

_oled_fill:

;main.c,107 :: 		void oled_fill(unsigned char pattern) {
;main.c,111 :: 		for(page = 0; page < 8; page++) {
	CLRF        oled_fill_page_L0+0 
L_oled_fill6:
	MOVLW       8
	SUBWF       oled_fill_page_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_oled_fill7
;main.c,112 :: 		oled_set_pos(page, 0);
	MOVF        oled_fill_page_L0+0, 0 
	MOVWF       FARG_oled_set_pos_page+0 
	CLRF        FARG_oled_set_pos_col+0 
	CALL        _oled_set_pos+0, 0
;main.c,114 :: 		for(col = 0; col < 128; col++) {
	CLRF        oled_fill_col_L0+0 
L_oled_fill9:
	MOVLW       128
	SUBWF       oled_fill_col_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_oled_fill10
;main.c,115 :: 		oled_data(pattern);
	MOVF        FARG_oled_fill_pattern+0, 0 
	MOVWF       FARG_oled_data_d+0 
	CALL        _oled_data+0, 0
;main.c,114 :: 		for(col = 0; col < 128; col++) {
	INCF        oled_fill_col_L0+0, 1 
;main.c,116 :: 		}
	GOTO        L_oled_fill9
L_oled_fill10:
;main.c,111 :: 		for(page = 0; page < 8; page++) {
	INCF        oled_fill_page_L0+0, 1 
;main.c,117 :: 		}
	GOTO        L_oled_fill6
L_oled_fill7:
;main.c,118 :: 		}
L_end_oled_fill:
	RETURN      0
; end of _oled_fill

_oled_test_pattern:

;main.c,120 :: 		void oled_test_pattern() {
;main.c,125 :: 		oled_fill(0xFF);
	MOVLW       255
	MOVWF       FARG_oled_fill_pattern+0 
	CALL        _oled_fill+0, 0
;main.c,126 :: 		Delay_ms(1000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_oled_test_pattern12:
	DECFSZ      R13, 1, 1
	BRA         L_oled_test_pattern12
	DECFSZ      R12, 1, 1
	BRA         L_oled_test_pattern12
	DECFSZ      R11, 1, 1
	BRA         L_oled_test_pattern12
	NOP
	NOP
;main.c,129 :: 		oled_fill(0x00);
	CLRF        FARG_oled_fill_pattern+0 
	CALL        _oled_fill+0, 0
;main.c,130 :: 		Delay_ms(500);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_oled_test_pattern13:
	DECFSZ      R13, 1, 1
	BRA         L_oled_test_pattern13
	DECFSZ      R12, 1, 1
	BRA         L_oled_test_pattern13
	DECFSZ      R11, 1, 1
	BRA         L_oled_test_pattern13
	NOP
	NOP
;main.c,133 :: 		oled_fill(0xAA);
	MOVLW       170
	MOVWF       FARG_oled_fill_pattern+0 
	CALL        _oled_fill+0, 0
;main.c,134 :: 		Delay_ms(1000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_oled_test_pattern14:
	DECFSZ      R13, 1, 1
	BRA         L_oled_test_pattern14
	DECFSZ      R12, 1, 1
	BRA         L_oled_test_pattern14
	DECFSZ      R11, 1, 1
	BRA         L_oled_test_pattern14
	NOP
	NOP
;main.c,137 :: 		oled_fill(0x55);
	MOVLW       85
	MOVWF       FARG_oled_fill_pattern+0 
	CALL        _oled_fill+0, 0
;main.c,138 :: 		Delay_ms(1000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_oled_test_pattern15:
	DECFSZ      R13, 1, 1
	BRA         L_oled_test_pattern15
	DECFSZ      R12, 1, 1
	BRA         L_oled_test_pattern15
	DECFSZ      R11, 1, 1
	BRA         L_oled_test_pattern15
	NOP
	NOP
;main.c,141 :: 		for(page = 0; page < 8; page++) {
	CLRF        oled_test_pattern_page_L0+0 
L_oled_test_pattern16:
	MOVLW       8
	SUBWF       oled_test_pattern_page_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_oled_test_pattern17
;main.c,142 :: 		oled_set_pos(page, 0);
	MOVF        oled_test_pattern_page_L0+0, 0 
	MOVWF       FARG_oled_set_pos_page+0 
	CLRF        FARG_oled_set_pos_col+0 
	CALL        _oled_set_pos+0, 0
;main.c,144 :: 		for(col = 0; col < 128; col++) {
	CLRF        oled_test_pattern_col_L0+0 
L_oled_test_pattern19:
	MOVLW       128
	SUBWF       oled_test_pattern_col_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_oled_test_pattern20
;main.c,145 :: 		if(col & 1) oled_data(0xFF);
	BTFSS       oled_test_pattern_col_L0+0, 0 
	GOTO        L_oled_test_pattern22
	MOVLW       255
	MOVWF       FARG_oled_data_d+0 
	CALL        _oled_data+0, 0
	GOTO        L_oled_test_pattern23
L_oled_test_pattern22:
;main.c,146 :: 		else        oled_data(0x00);
	CLRF        FARG_oled_data_d+0 
	CALL        _oled_data+0, 0
L_oled_test_pattern23:
;main.c,144 :: 		for(col = 0; col < 128; col++) {
	INCF        oled_test_pattern_col_L0+0, 1 
;main.c,147 :: 		}
	GOTO        L_oled_test_pattern19
L_oled_test_pattern20:
;main.c,141 :: 		for(page = 0; page < 8; page++) {
	INCF        oled_test_pattern_page_L0+0, 1 
;main.c,148 :: 		}
	GOTO        L_oled_test_pattern16
L_oled_test_pattern17:
;main.c,149 :: 		}
L_end_oled_test_pattern:
	RETURN      0
; end of _oled_test_pattern

_main:

;main.c,151 :: 		void main() {
;main.c,152 :: 		OSCCON = 0x70;
	MOVLW       112
	MOVWF       OSCCON+0 
;main.c,153 :: 		ADCON1 = 0x0F;
	MOVLW       15
	MOVWF       ADCON1+0 
;main.c,154 :: 		CMCON  = 0x07;
	MOVLW       7
	MOVWF       CMCON+0 
;main.c,156 :: 		TRISA2_bit = 0;
	BCF         TRISA2_bit+0, BitPos(TRISA2_bit+0) 
;main.c,157 :: 		LATA2_bit = 0;
	BCF         LATA2_bit+0, BitPos(LATA2_bit+0) 
;main.c,159 :: 		TRISC6_bit = 1;
	BSF         TRISC6_bit+0, BitPos(TRISC6_bit+0) 
;main.c,160 :: 		TRISC7_bit = 1;
	BSF         TRISC7_bit+0, BitPos(TRISC7_bit+0) 
;main.c,162 :: 		i2c_init();
	CALL        _i2c_init+0, 0
;main.c,164 :: 		oled_init_test();
	CALL        _oled_init_test+0, 0
;main.c,165 :: 		oled_test_pattern();
	CALL        _oled_test_pattern+0, 0
;main.c,167 :: 		while(1) {
L_main24:
;main.c,168 :: 		LATA2_bit = 1;
	BSF         LATA2_bit+0, BitPos(LATA2_bit+0) 
;main.c,169 :: 		Delay_ms(500);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_main26:
	DECFSZ      R13, 1, 1
	BRA         L_main26
	DECFSZ      R12, 1, 1
	BRA         L_main26
	DECFSZ      R11, 1, 1
	BRA         L_main26
	NOP
	NOP
;main.c,170 :: 		LATA2_bit = 0;
	BCF         LATA2_bit+0, BitPos(LATA2_bit+0) 
;main.c,171 :: 		Delay_ms(500);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_main27:
	DECFSZ      R13, 1, 1
	BRA         L_main27
	DECFSZ      R12, 1, 1
	BRA         L_main27
	DECFSZ      R11, 1, 1
	BRA         L_main27
	NOP
	NOP
;main.c,172 :: 		}
	GOTO        L_main24
;main.c,174 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
