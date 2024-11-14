*Declare a select-options for numeric values without ranges.
*Then, validate if the number zero is entered and if it is, show an error message.

REPORT Z_ABAP101_075.

DATA: lv_value  TYPE i.

PARAMETERS: p_num TYPE i.

AT SELECTION-SCREEN ON p_num.
  IF p_num = 0.
    MESSAGE 'Zero is not allowed as value' TYPE 'E'.
  ENDIF.
