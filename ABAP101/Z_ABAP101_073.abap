*Contains a select-options for numeric values and print the result of
*multiplying each number within the range of 3.

REPORT Z_ABAP101_073.

TYPES: BEGIN OF ty_range,
        low  TYPE i,
        high TYPE i,
         END OF ty_range.

DATA: lt_range       TYPE TABLE OF ty_range,
      lv_result      TYPE i,
      lv_multiplier  TYPE i.

PARAMETERS: p_low  TYPE i,
            p_high TYPE i.

START-OF-SELECTION.

 APPEND VALUE #( low = p_low high = p_high ) TO lt_range.

LOOP AT lt_range INTO DATA(ls_range).
 lv_multiplier = ls_range-low * 3.
 WRITE: / 'Number:', ls_range-low, 'Multiplied by 3:', lv_multiplier.
 ADD lv_multiplier TO lv_result.
ENDLOOP.

WRITE: / 'Total Result', lv_result.
