*Declare a selection screen with a select-options representing a time range.
*Then, save a variant so that these fields are filled with the start
*of day until the current time every time the variant is used.

REPORT Z_ABAP101_096.

*Define select-options for time range
SELECT-OPTIONS: s_time FOR sy-uzeit.

*Initialization to dynamically set the time range
INITIALIZATION.
 "Set the start of the day (00:00:00) and current time
 DATA: lv_start_of_day TYPE sy-uzeit.
 lv_start_of_day = '000000'.

 "Set the time range in the selection screen
 s_time-sign   = 'I'. "Include
 s_time-option = 'BT'. "Between
 s_time-low    = lv_start_of_day. "Start of the day
 s_time-high   = sy-datum. "Current s_time
 APPEND s_time.