Write an executable program with two parameters types as integers.
*The first represents a number to be printed and the second represents
*the length of the number to be printed. Place zeros to the left if necessary. 
*Example:
*• p_number = 15 p_length = 2. Output = 15
*• p_number = 15 p_length = 6. Output = 000015
*• p_number = 2014 p_length = 2. Output = 20
*• p_number = 123456789 p_length = 10. Output = 0123456789
*• p_number = 123456789 p_length = 4. Output = 1234

REPORT Z_ABAP101_066.

PARAMETERS: p_number TYPE i,
            p_number TYPE i.

DATA: lv_output TYPE string,
      lv_zeros TYPE string,
      lv_number_length TYPE i.

START-OF-SELECTION.
lv_output = p_number.
lv_number_length = strlen( lv_output ).
*Checking if the length of the number needs padding
 IF ( p_length + 1 ) > lv_number_length.
  lv_zeros = '0'.
  DO ( p_length - lv_number_length ) + 1 TIMES.
   lv_output = lv_zeros && lv_output.
  ENDDO.
 ENDIF.

WRITE: / 'Number with specified length:', lv_output.
