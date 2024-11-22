*Declare three parameters as checkboxes. The first one should always be checked
*once the program is started. Moreover, if the current day is between 1 and 10,
*the other two checkboxes should be checked as well once the program is started

REPORT Z_ABAP101_080.

PARAMETERS:
	p_check1 AS CHECKBOX DEFAULT 'X'.
	p_check2 AS CHECKBOX,
	p_check3 AS CHECKBOX.

DATA: lv_day TYPE i.

lv_day = sy_datum+6(2).

IF lv_day >= 1 AND lv_day <= 10.
	p_check2 = 'X'.
	p_check3 = 'X'.
ENDIF.

START-OF-SELECTION.
	IF p_check1 = 'X'.
		WRITE: 'Checkbox 1 is checked'.
	ELSE.
		WRITE: 'Checkbox 1 is not checked'.
	ENDIF.

		IF p_check2 = 'X'.
		WRITE: 'Checkbox 2 is checked'.
	ELSE.
		WRITE: 'Checkbox 2 is not checked'.
	ENDIF.

		IF p_check3 = 'X'.
		WRITE: 'Checkbox 3 is checked'.
	ELSE.
		WRITE: 'Checkbox 3 is not checked'.
	ENDIF.