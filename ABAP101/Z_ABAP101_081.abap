*Declare three radio buttons and an input field. If any radio button is
*selected, the input field should be cleared. Note: the field should be cleared
*as soon any radio buttons is selected and not after the program is executed.

REPORT Z_ABAP101_081.

PARAMETERS:
	r1 RADIOBUTTON GROUP rad1 USER-COMMAND action,
	r1 RADIOBUTTON GROUP rad1,
	r1 RADIOBUTTON GROUP rad1,
	p_input TYPE string.

AT SELECTION-SCREEN.
	IF sy-ucomm = 'ACTION'.
		CLEAR p_input.
	ENDIF.