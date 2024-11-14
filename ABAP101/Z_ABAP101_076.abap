*Declare a select-options for numeric values without multiple ranges.
*Then, validate if a range bigger than 100 is entered and if it is, show an error message.

REPORT Z_ABAP101_076.

DATA: lv_value  TYPE i.

SELECT-OPTIONS: s_num FOR lv_value.

AT SELECTION-SCREEN.
 LOOP AT s_num.
  IF s_num-sign = 'I' AND s_num-option = 'BT' AND ( s_num-high - s_num-low ) > 100.
    MESSAGE 'Range cannot be greater than 100' TYPE 'E'.
  ENDIF.
 ENDLOOP.
