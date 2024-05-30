*Write an executable program that has a routine that receives two numbers and
*returns the largest of them, If the numbers are equal return the number itself.

REPORT Z_ABAP101_053.

DATA: lv_number1 TYPE i,
      lv_number2 TYPE i,
      lv_number3 TYPE i,

PARAMETERS: p_input1 TYPE i,
            p_input2 TYPE i.

START-OF-SELECTION.
PERFORM find_largest_number USING p_input1 p_input2
 CHANGING lv_largest.

WRITE: / 'The largest number is:', lv_largest.

FORM find_largest_number USING p_num1 TYPE i
                               p_num2 TYPE i
 CHANGING p_result TYPE i.

IF p_num1 > p_num2.
 p_result = p_num1.
ELSEIF p_num1 < p_num2.
  p_result = p_num2.
ELSE.
 p_result = p_num1. "or  p_result = p_num2; as they are equal
ENDIF.
ENDFORM.
