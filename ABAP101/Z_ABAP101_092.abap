*Declare a selection screen with two time parameters.
*The first once should be typed with the primitive type.
*The second, with type SYST-UZEIT.
*Is there any different between them when filling the selection screen?
*What about the documentation displayed when you hit F1 key?

REPORT Z_ABAP101_092.

PARAMETERS: p_time1   TYPE t,
			p_time2   TYPE syst-uzeit.

START-OF-SELECTION.
WRITE: / 'Time 1:', p_time1,
	   / 'Time 2:', p_time2.