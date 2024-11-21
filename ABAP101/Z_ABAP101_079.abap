*Declare three parameters as radio buttons.
*Each of them will represent a different flight class (first, business and economy).

REPORT Z_ABAP101_079.

PARAMETERS:
	r1 RADIOBUTTON GROUP rad1,
	r2 RADIOBUTTON GROUP rad1 DEFAULT 'X',
	r3 RADIOBUTTON GROUP rad1.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE Select.
SELECTION-SCREEN COMMENT 1(30) Choose.
SELECTION-SCREEN END OF BLOCK b1.

START-OF-SELECTION.
	IF r1 = 'X'.
		WRITE: 'first class'.
	ELSEIF r2 = 'X'.
		WRITE: 'business class'.
	ELSEIF r3 = 'X'.
		WRITE: 'economy class'.
	ENDIF.