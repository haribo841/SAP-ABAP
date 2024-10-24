*Contains a select-options for numeric values and print all search criteria separated ",".

REPORT Z_ABAP101_074.

* Define select-options using SY-DATUM (valid DDIC element)
SELECT-OPTIONS: s_num FOR sy-datum.

DATA: lv_output TYPE string.

START-OF-SELECTION.

  " Loop through each entry in the select-options table
  LOOP AT s_num.
    " Concatenate the low and high values for the range
    IF s_num-sign = 'I' AND s_num-option = 'EQ'.
      CONCATENATE lv_output s_num-low INTO lv_output SEPARATED BY ','.
    ELSEIF s_num-sign = 'I' AND s_num-option = 'BT'.
      CONCATENATE lv_output s_num-low s_num-high INTO lv_output SEPARATED BY ','.
    ELSEIF s_num-sign = 'I' AND s_num-option = 'GE'.
      CONCATENATE lv_output s_num-low INTO lv_output SEPARATED BY ','.
    ELSEIF s_num-sign = 'I' AND s_num-option = 'LE'.
      CONCATENATE lv_output s_num-low INTO lv_output SEPARATED BY ','.
    ELSEIF s_num-sign = 'E' AND s_num-option = 'NE'.
      CONCATENATE lv_output s_num-low INTO lv_output SEPARATED BY ','.
    ENDIF.
  ENDLOOP.

  " Remove leading comma, if present
  IF lv_output CP ','.
    SHIFT lv_output LEFT DELETING LEADING ','.
  ENDIF.

  " Print the concatenated output
  WRITE: / 'Search criteria:', lv_output.
