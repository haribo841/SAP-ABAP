*Declare a selection screen with a parameter representing a date.
*Then, save a variant so that this field is filled with the last
*day of the previous month every time the variant is used.

REPORT Z_ABAP101_093.

PARAMETERS: p_time1   TYPE sy-datum. "Date parameter
"During execution of the program in the SAP GUI using F8 or the Execute button.
"On the selection screen, go to the Variant menu and choose Save as Variant.
"In the Variant Maintenance screen:
"Enter a name for the variant (e.g., LAST_DAY_PREV_MONTH).
"Highlight the date parameter (P_DATE) and click on the Selection Variable button.
"(usually a pencil icon or similar next to the field).
"In the Selection Variable popup:
"Set the Type of Selection Variable to D (Dynamic Date Calculation.
"Choose Previous Month's Last Day from the list of options.
"After configuring the dynamic date, save the variant.