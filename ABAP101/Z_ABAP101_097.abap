*Declare a selection screen with one parameter and a select-options.
*Save a variant so that the parameter is blocked for input and the select-options is hidden.

REPORT Z_ABAP101_097.

*Declare a parameter and a select-options
PARAMETERS: p_param TYPE char10.
SELECT-OPTIONS: s_option FOR sy-datum.

*Initialization to set default values
INITIALIZATION.
 p_param = 'DEFAULT'. "Default value for the parameter
 s_time-sign   = 'I'. "Include
 s_time-option = 'BT'. "Between
 s_time-low    = sy-datum - 7. "Last 7 days
 s_time-high   = sy-datum.
 APPEND s_option.