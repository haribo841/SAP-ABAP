*Create a program with one select-options representing an executable
*program name (also known as report). The program should execute all
*programs entered in the select-options one-byone. Keep in mind that after
*running a program, the execution should return back to the original program.

REPORT Z_ABAP101_101.

*Select-options for program names
SELECT-OPTIONS: s_report FOR sy-repid.

START-OF-SELECTION.

 DATA: lv_exist TYPE c LENGTH 1.

 "Loop through the entered program names
 LOOP AT s_report INTO DATA(ls_report).
  CALL FUNCTION 'RS_PROGRAM_CHECK_NAME'
   EXPORTING
    P_NAME = ls_report-low
   IMPORTING
    P_EXIST = lv_exist.

  IF lv_exist = 'X'.
   "Execute the program dynamically
   SUMBIT (ls_report-low)
    AND RETURN.
  ELSE.
   "Display an error message for invalid program names
   WRITE: / 'Program', ls_report-low, 'does not exist or is not executable.' COLOR COL_NEGATIVE.
  ENDIF.
 ENDLOOP.