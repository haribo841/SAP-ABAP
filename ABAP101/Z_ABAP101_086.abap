*Declare a checkbox and an input field side-by-side inside a frame

REPORT Z_ABAP101_086.

SELECTION-SCREEN BEGIN OF BLOCK blk1 WITH FRAME TITLE Options.
	PARAMETERS: chk_box AS CHECKBOX,
				p_input TYPE string.
SELECTION-SCREEN END OF BLOCK blk1.

START-OF-SELECTION.
	WRITE: / 'Checkbox', chk_box,
		   / 'Input:', p_input.