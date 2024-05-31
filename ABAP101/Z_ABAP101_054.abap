*Write an executable program that has a routine that receives two
*numbers and return a flag (character with length 1). If the numbers
*are equal, set the flag with 'X. Otherwise set the flag to space.

REPORT Z_ABAP101_054.

DATA: lv_flag TYPE c LENGTH 1.

PARAMETERS: p_numb1 TYPE i,
            p_numb2 TYPE i.

START-OF-SELECTION.
PERFORM check_equality USING p_numb1 p_numb2
 CHANGING lv_flag.

WRITE: / 'Flag', lv_flag.

FORM chceck_equality USING p_numb1 TYPE i
                           p_numb2 TYPE i
  CHANGING p_result TYPE c.

 IF p_numb1 = p_numb2.
  p_result = 'X'.
 ELSE.
  p_result = ' '.
ENDFORM.
