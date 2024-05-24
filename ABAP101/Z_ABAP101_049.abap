*Write an executable program that counts a string length and if it's bigger 
*than 2o characteres, write 'Too big'. If not, write the string length.

REPORT Z_ABAP101_049.

DATA: lv_string TYPE string,
      lv_length TYPE i .

PARAMETERS: p_input TYPE string.

lv_string = p_input.
lv_length = STRLEN( lv_string ).

IF lv_length > 20.
    WRITE: 'Too big'.
ELSE.
    WRITE: / 'String length is', lv_length.
ENDIF.
