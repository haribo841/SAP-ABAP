*Declare a button inside a selection screen and
*show an information message when it is pressed.

REPORT Z_ABAP101_087.

PARAMETERS: p_name TYPE string.

SELECTION-SCREEN: PUSHBUTTON /10(20) btn1 USER-COMMAND btn1 MODIF ID btn.

START-OF-SELECTION.
	WRITE: / 'Program started.'.

AT SELECTION-SCREEN.
	CASE sy-ucomm.
		WHEN 'BTN1'.
			MESSAGE 'Button pressed! Hello, world!' TYPE 'I'.
	ENDCASE.