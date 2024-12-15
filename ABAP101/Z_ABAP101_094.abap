*Declare a selection screen with a parameter representing a specific time.
*Then, save a variant so that this field is filled with the current time
* minus 3 hours every time the variant is used.

REPORT Z_ABAP101_094.

PARAMETERS: p_time1   TYPE sy-uzeit. "Date parameter
"During execution of the program in the SAP GUI using F8 or the Execute button.
"On the selection screen, go to the Variant menu and choose Save as Variant.
"In the Variant Maintenance screen:
"Enter a name for the variant (e.g., CURR_TIME_MINUS_3).
"Highlight the date parameter (P_TIME) and click on the Selection Variable button.
"(usually a pencil icon or similar next to the field).
"In the Selection Variable popup:
"Set the Type of Selection Variable to Z.
"Choose the Current Time option.
"Adjust the Offset by entering -03:00:00 (minus 3 hours).
"After configuring the dynamic time, save the variant.