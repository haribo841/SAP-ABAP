*Write an executable program which has a routine that receives an internal
*table and print how many fields are filled with their default value
*(the line type of the table must have at least 4 fields).
*Hint: each primitive type has a default value. For example,
*0 (zero) is the default value of integers whereas
*space ( ' ' ) is the default value of characters.

REPORT Z_ABAP101_061.

TYPES: BEGIN OF lty_line,
 field1 TYPE i,
 field2 TYPE c LENGTH 10,
 field3 TYPE dats,
 field4 TYPE string,
END OF lty_line.

DATA: lt_table TYPE STANDARD TABLE OF lty_line,
      lwa_table TYPE lty_line.

DATA: lv_default_count TYPE i.

*Populating the table with data
lwa_table-field1 = 0.
lwa_table-field2 = ''.
lwa_table-field3 = '00000000'.
lwa_table-field4 = ''.
APPEND lwa_table TO lt_table.

*Routine to count fields filled with default values in the table

FORM count USING p_table.
 DATA: lwa_table TYPE lty_line,
       lv_field_count TYPE i.

lv_default_count = 0.

LOOP AT lt_table INTO DATA(ls_line).
 IF ls_line-field1 IS INITIAL.
  lv_field_count = lv_field_count + 1
 ENDIF.
 IF ls_line-field2 IS INITIAL.
  lv_field_count = lv_field_count + 1
 ENDIF.
 IF ls_line-field3 IS INITIAL.
  lv_field_count = lv_field_count + 1
 ENDIF.
 IF ls_line-field4 IS INITIAL.
  lv_field_count = lv_field_count + 1
 ENDIF.

 lv_default_count = lv_field_count.

*Output the count of fields filled with default values
WRITE: / 'Number of fields filled with default values:', lv_field_count.

ENDFORM.

START-OF-SELECTION.
*Here you can fill lt_table with data.

PERFORM count USING lt_table.
