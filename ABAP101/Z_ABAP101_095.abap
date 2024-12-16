*Declare a selection screen with a select-options representing a date range.
*Then, save a variant so that it is filled with a range between the first
*day of the current month and the current date every time the variant is used.

REPORT Z_ABAP101_095.

*Define select-options for date range
SELECT-OPTIONS: s_date FOR sy-datum.

*Initialization to dynamically set the date range
INITIALIZATION.
 "Get the first day of the current month
 DATA: lv_first_day TYPE sy-datum.
 lv_first_day = sy-datum - ( sy-datum MOD 100 ) + 1.

 "Set the date range in the selection screen
 s_date-sign   = 'I'. "Include
 s_date-option = 'BT'. "Between
 s_date-low    = lv_first_day. "First day of the mont"
 s_date-high   = sy-datum. "Current date
 APPEND s_date.