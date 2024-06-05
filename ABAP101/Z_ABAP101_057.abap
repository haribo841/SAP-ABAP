*Write an executable program with a routine that receives a work area containing five
*different data types and count how many components are not filled. Finally, print result.

REPORT Z_ABAP101_057.

DATA: BEGIN OF ls_data,
 field1 TYPE i,
 field2 TYPE c LENGTH 10,
 field3 TYPE d,
 field4 TYPE p DECIMALS 2,
 field5 TYPE string
END OF ls_data.

DATA lv_count_unfilled TYPE i.

START-OF-SELECTION.
 ls_data-field1 = 123.
 ls_data-field2 = 'Hello'.
 "Leaving field3, field4 and field5 empty inentionally.

PERFORM count_unfilled components USING ls_data
 CHANGING lv_count_unfilled.

WRITE: / 'Number of unfilled components:', lv_count_unfilled.

FORM count_unfilled components USING p_data LIKE ls_data
 CHANGING p_count TYPE i.

p_count = 0.

IF p_data-field1 IS INITIAL.
p_count = p_count + 1.
ENDIF.
IF p_data-field2 IS INITIAL.
p_count = p_count + 1.
ENDIF.
IF p_data-field3 IS INITIAL.
p_count = p_count + 1.
ENDIF.
IF p_data-field4 IS INITIAL.
p_count = p_count + 1.
ENDIF.
IF p_data-field5 IS INITIAL.
p_count = p_count + 1.
ENDIF.

lv_count_unfilled = p_count.
ENDFORM.
