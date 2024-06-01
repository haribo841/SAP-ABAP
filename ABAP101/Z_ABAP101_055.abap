*Write an executable program that has a routine that takes two numbers
*and writes the result of the operation [higher_number / lower_number]
*if the numbers are different. If they are equal,
*write the result of the operation [number ^ 2].

REPORT Z_ABAP101_055.

DATA: lv_result TYPE f.

PARAMETERS: p_numb1 TYPE i,
            p_numb2 TYPE i.

START-OF-SELECTION.
PERFORM perform_operation USING p_numb1 p_numb2
 CHANGING lv_result.

WRITE: / 'Result:', lv_result.

FORM perform_operation USING p_numb1 TYPE i
                             p_numb2 TYPE i
  CHANGING p_result TYPE f.

 IF p_numb1 <> p_numb2.
  IF p_numb1 > p_numb2.
   p_result = p_numb1 / p_numb2.
  ELSE.
   p_result = p_numb2 / p_numb1.
  ENDIF.
 ELSE.
  p_result = p_numb1 ** 2.
 ENDIF.
ENDFORM.
