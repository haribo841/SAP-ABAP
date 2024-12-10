*Declare a selection screen with 8 parameters and 3 select-options of your choice.
*Execute your program and save a variant so you refer to your selection any time you want.

REPORT Z_ABAP101_090.

PARAMETERS: p_name   TYPE char20,
			p_age    TYPE i,
			p_city   TYPE char20,
			p_state  TYPE char20,
			p_county TYPE char20,
			p_email  TYPE char50,
			p_phone  TYPE char15,
			p_status TYPE char10.

SELECTION-OPTIONS: so_date  FOR sy-datum,
				   so_count FOR sy-datum,
				   so_code  FOR sy-datum.

START-OF-SELECTION.
WRITE: / 'You have executed the program with the following selection:',
	   / 'Name:',    p_name,
	   / 'Age:',     p_age,
	   / 'City:',    p_city,
	   / 'State:',   p_state,
	   / 'Country:', p_county,
	   / 'Email:',   p_email,
   	   / 'Phone:',   p_phone,
	   / 'Status:',  p_status,
   	   / 'Date Range:',   so_date,
	   / 'Amount Range:', so_count,
   	   / 'Code Range:',   so_code.