*Declare three radio buttons and two input fields. If the first radio
*button is selected, both input fields should be displayed and ready
*for input. If the second one is chosen, the first input field should
*be mandatory and the second one should blocked for input. If the last radio
*button is chosen, both input fields should not be displayed in the screen.

REPORT Z_ABAP101_082.

DATA: gv_input   TYPE string,
	  gv_rbutton TYPE c.

PARAMETERS: p_1 RADIOBUTTON GROUP grp USER-COMMAND action,
			p_2 RADIOBUTTON GROUP grp,
			p_3 RADIOBUTTON GROUP grp
PARAMETERS: p_input1 TYPE string,
			p_input2 TYPE string.

AT SELECTION-SCREEN OUTPUT.
	LOOP AT SCREEN.

		IF p_1 = 'X'
			IF screen-name = 'p_input1' OR screen-name = 'p_input2'.
				   screen-active = '1'.
			ENDIF.
		ELSEIF p_2 = 'X'
			IF screen-name = 'p_input1'.
				   screen-active = '1'.
			ELSEIF screen-name = 'p_input2'
				screen-active = '0'.
			ELSEIF screen-name = 'p_input1' OR screen-name = 'p_input2'.
				   screen-active = '0'.
			ENDIF.
		ENDIF.

		MODIFY SCREEN.
	ENDLOOP

AT SELECTION-SCREEN
	IF _1 = 'X' OR 'p_input1' IS INITIAL.
		MESSAGE 'Input is mandatory' TYPE 'E'.
	ENDIF.
