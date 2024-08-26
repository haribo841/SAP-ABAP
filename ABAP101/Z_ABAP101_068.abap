*Write an executable program with two parameters (a string and a number
*The number should be accepted only if it's less or equal to 25.
*The program should print the string as many times as the value of the numeric parameter.
*The output should be as following
*String = "ABAPers are not crazy people." Number = 21.
*Line [1]: A
*Line [2]: AB
*Line [3]: ABA
*Line [4]: ABAP
*Line [5]: ABAPe
*(...)
*Line [21]: ABAPers are not crazy

REPORT Z_ABAP101_068.

PARAMETERS: p_string TYPE string,
            p_number TYPE i.

START-OF-SELECTION.
*Checking if the number is less than or equal to 25
 IF p_number <= 25.
  DO p_number TIMES.
   WRITE: / p_string.
 ENDDO.
ELSE.
 WRITE: / 'The number should be less than or equal to 25.'.
ENDIF.
