*Write an executable program that counts from 1 to 100 and for each multiple of 8,
*write the message: "The number [number] is a multiple of 8 ".

REPORT Z_ABAP101_050.

DATA: lv_counter TYPE i.

DO 100 TIMES.
	lv_counter = sy-index.

	IF lv_counter MOD 8 = 0.
		WRITE: / 'The number', lv_counter 'is a multiple of 8'.
	ENDIF.

ENDDO.