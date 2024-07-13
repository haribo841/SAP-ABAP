*Write an executable program which has a routine that receives an internal
*table and prints how many fields are blank by line (the type of table
*must have at least 4 fields). Output must be generated as:
Line [line number] => [number of blank fields] + " blank fields"
Total: [total number of blank fields]

REPORT Z_ABAP101_062.

TYPES: BEGIN OF lty_line,
 field1 TYPE i,
 field2 TYPE c LENGTH 10,
 field3 TYPE dats,
 field4 TYPE string,
END OF lty_line.

DATA: lt_line TYPE STANDARD TABLE OF lty_line,
      lwa_table TYPE lty_line.

DATA: lv_default_count TYPE i.

*Populating the table with data
lwa_table-field1 = 0.
lwa_table-field2 = ''.
lwa_table-field3 = '00000000'.
lwa_table-field4 = ''.
APPEND lwa_table TO lty_line.

*Routine to count blank fields by line
FORM count USING lt_line TYPE lty_line
 DATA: lv_blank_count TYPE i.

lv_blank_count = 0.

IF lt_line-field1 IS INITIAL.
 lv_blank_count = lv_blank_count + 1.
ENDIF.
IF lt_line-field2 IS INITIAL.
 lv_blank_count = lv_blank_count + 1.
ENDIF.
IF lt_line-field3 IS INITIAL.
 lv_blank_count = lv_blank_count + 1.
ENDIF.
IF lt_line-field4 IS INITIAL.
 lv_blank_count = lv_blank_count + 1.
ENDIF.

 WRITE: / 'Line', sy-tabix, '=>', lv_blank_count, 'blank fields'.
ENDFORM.

START-OF-SELECTION.
DATA: lv_total_blanks TYPE i,
      lv_blank_count TYPE i.

lv_total_blanks = 0.

lwa_table-field1 = 5.
lwa_table-field2 = 'ABC'.
lwa_table-field3 = sy-datum.
lwa_table-field4 = 'DEF'.
APPEND lwa_table TO lt_line.

LOOP AT lt_line INTO DATA(ls_line).
 PERFORM count USING ls_line.
 lv_blank_count = 0.
IF lt_line-field1 IS INITIAL.
 lv_blank_count = lv_blank_count + 1.
ENDIF.
IF lt_line-field2 IS INITIAL.
 lv_blank_count = lv_blank_count + 1.
ENDIF.
IF lt_line-field3 IS INITIAL.
 lv_blank_count = lv_blank_count + 1.
ENDIF.
IF lt_line-field4 IS INITIAL.
 lv_blank_count = lv_blank_count + 1.
 lv_total_blanks = lv_total_blanks + lv_blank_count.
ENDIF.
ENDLOOP.

WRITE: / 'Total', lv_total_blanks.
