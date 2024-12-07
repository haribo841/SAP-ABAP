*Create a tabbed block with 3 tabs. Each of them should have a different content.

REPORT Z_ABAP101_088.

*Radio buttons for tab selection
SELECTION-SCREEN BEGIN OF BLOCK tab_control WITH FRAME TITLE text-001.
PARAMETERS: rb_tab1 RADIOBUTTON GROUP g1 DEFAULT 'X',
			rb_tab2 RADIOBUTTON GROUP g1,
			rb_tab3 RADIOBUTTON GROUP g1.
SELECTION-SCREEN END OF BLOCK tab_control.

*Subscreens
SELECTION-SCREEN BEGIN OF SCREEN 0100 AS SUBSCREEN.
PARAMETERS: p_field1 TYPE string. "Field for Tab 1
SELECTION-SCREEN END OF SCREEN 0100.

SELECTION-SCREEN BEGIN OF SCREEN 0200 AS SUBSCREEN.
PARAMETERS: p_field2 TYPE string. "Field for Tab 2
SELECTION-SCREEN END OF SCREEN 0200.

SELECTION-SCREEN BEGIN OF SCREEN 0300 AS SUBSCREEN.
PARAMETERS: p_field3 TYPE string. "Field for Tab 3
SELECTION-SCREEN END OF SCREEN 0300.

*Variable for the active subscreen number
DATA: dyn_subscreen TYPE sy-dynnr  VALUE '0100'. "Default screen

INITIALIZATION.
	dyn_subscreen = '0100'. "Set the default subscreen for Tab  1

AT SELECTION-SCREEN OUTPUT.
*Change the subscreen dynamically based on the selected radio button
IF rb_tab1 = 'X'.
	dyn_subscreen = '0100'. "Tab 1
ELSEIF rb_tab2 = 'X'.
	dyn_subscreen = '0200'. "Tab 2
ELSEIF rb_tab3 = 'X'.
	dyn_subscreen = '0300'. "Tab 3
ENDIF.

MODULE user_command INPUT.
	CASE sy-ucomm.
		WHEN 'EXIT' OR 'BACK' OR 'CANCEL'.
			LEAVE PROGRAM.
	ENDCASE.
ENDMODULE.