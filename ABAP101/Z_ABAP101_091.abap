*Declare a selection screen with two date parameters.
*The first once should be typed with the primitive type.
*The second, with type SYST-DATUM.
*Is there any different between them when filling the selection screen?
*What about the documentation displayed when you hit F1 key?

REPORT Z_ABAP101_091.

PARAMETERS: p_date1   TYPE d,
			p_date2   TYPE syst-datum.

START-OF-SELECTION.
WRITE: / 'Date 1:', p_date1,
	   / 'Date 2:', p_date2.