*Write an executable program that does NOT have a routine. The program
*should include a work area with 5 fields of different types or more.
*Then, it must be populated and its fields should be printed one per line,
*separated by one horizontal line. After testing your program, change the
*output separating each field by two lines. During this process, refactor
*your code to include a routine which handle the separation between each line.

REPORT Z_ABAP101_055.

DATA: BEGIN OF ls_data,
 field1 TYPE i,
 field2 TYPE c LENGTH 10,
 field3 TYPE d,
 field4 TYPE p DECIMALS 2,
 field5 TYPE string
END OF ls_data.

START-OF-SELECTION.
 ls_data-field1 = 123.
 ls_data-field2 = 'Hello'.
 ls_data-field3 = sy-datum.
 ls_data-field4 = '123.45'.
 ls_data-field5 = 'ABAP Programming'.

*Before testing & refactoring
WRITE: / ls_data-field1,
       / '------------',
       / ls_data-field2,
       / '------------',
       / ls_data-field3,
       / '------------',
       / ls_data-field4,
       / '------------',
       / ls_data-field5,

START-OF-SELECTION.
 PERFORM display_fields USING ls_data.

FORM display_fields USING p_data TYPE ls_data.
 PERFORM write_field USING p_data-field1.
 PERFORM write_separator.
 PERFORM write_field USING p_data-field2.
 PERFORM write_separator.
 PERFORM write_field USING p_data-field3.
 PERFORM write_separator.
 PERFORM write_field USING p_data-field4.
 PERFORM write_separator.
 PERFORM write_field USING p_data-field5.
ENDFORM.

FORM write_field USING p_value.
 WRITE: / p_value.
ENDFORM.

FORM write_separator.
 WRITE: / '------------', / '------------'.
ENDFORM.
