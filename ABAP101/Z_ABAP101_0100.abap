*Create a program with one parameter representing an executable
*program name (also known as report).
*The program should execute the program entered in the parameter.

REPORT Z_ABAP101_100.

*Parameter to accept the name of an executable program
PARAMETERS: p_report TYPE sy-repid OLBIGATORY.

START-OF-SELECTION.

 "Chceck if the entered program exists and is executable
 DATA: lv_exist TYPE c LENGTH 1.

 CALL FUNCTION 'RS_PROGRAM_CHECK_NAME'
  EXPORTING
   P_NAME = p_report
  IMPORTING
   P_EXIST = lv_exist.

 IF lv_exist = 'X'.
  "Dynamically call the entered program
  SUMBIT (p_report)
   AND RETURN.
 ELSE.
  "Display error message if the program is not valid
  MESSAGE 'The entered program does not exist or is not executable.' TYPE 'E'.
 ENDIF.