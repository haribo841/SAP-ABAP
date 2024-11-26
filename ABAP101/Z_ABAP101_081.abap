*Declare three radio buttons and an input field. If any radio button is
*selected, the input field should be cleared. Note: the field should be cleared
*as soon any radio buttons is selected and not after the program is executed.

REPORT Z_ABAP101_081.

DATA: gv_input   TYPE string,
	  gv_rbutton TYPE c.

PARAMETERS:
	r1 RADIOBUTTON GROUP rad1,
	r1 RADIOBUTTON GROUP rad1 DEFAULT 'X',
	r1 RADIOBUTTON GROUP rad1,
	p_input TYPE string MODIF ID grp.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE select.
SELECTION-SCREEN COMMENT 1(30) choose.
SELECTION-SCREEN END OF BLOCK b1.

AT SELECTION-SCREEN OUTPUT.
	LOOP AT SCREEN INTO DATA(ls_screen).
		IF ls_screen-group1 = 'grp'.
		   ls_screen-active = '1'.
		ENDIF.
	ENDLOOP.

AT SELECTION-SCREEN ON RADIOBUTTON GROUP rad1.
	CLEAR p_input.