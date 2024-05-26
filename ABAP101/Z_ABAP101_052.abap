*For this exercise, you should Read the help from command FORM completely.
*Then, write an executable program that has a routine that receives four
*global variables and change their value. Each variable will be received
*in a different way: 2 of them using the addition USING and the other 2
*using the addition CHANGING from the FORM command. For each pair use and
*omit the adding VALUE. Print the contents of all global variables before
*the routine is called, at the beginning of the routine, at the end of the
*routine (after all values are changed) and after the PERFORM statement.
*See how the contents of variables behave using the debugger.

REPORT Z_ABAP101_052.

DATA: gv_variable1 TYPE i VALUE 10,
      gv_variable2 TYPE i VALUE 20,
      gv_variable3 TYPE i VALUE 30,
      gv_variable4 TYPE i VALUE 40.

WRITE: / 'Before routine call:',
       / 'Variable 1:', gv_variable1,
       / 'Variable 2:', gv_variable2,
       / 'Variable 3:', gv_variable3,
       / 'Variable 4:', gv_variable4.

START-OF-SELECTION.
PERFORM change_values USING gv_variable1 CHANGING gv_variable2 gv_variable3 gv_variable4.

WRITE: / 'After routine call:',
       / 'Variable 1:', gv_variable1,
       / 'Variable 2:', gv_variable2,
       / 'Variable 3:', gv_variable3,
       / 'Variable 4:', gv_variable4.

FORM change_values USING p_var1 CHANGING p_var2 p_var3 p_var4.
 WRITE: / 'At the beginning of the routine:',
        / 'Variable 1:', p_var1,
        / 'Variable 2:', p_var2,
        / 'Variable 3:', p_var3,
        / 'Variable 4:', p_var4.

 p_var1 = p_var1 + 5.
 ADD 10 TO p_var2.
 p_var3 = p_var3 + 15.
 ADD 20 TO p_var4.

 WRITE: / 'At the end of the routine:',
        / 'Variable 1:', p_var1,
        / 'Variable 2:', p_var2,
        / 'Variable 3:', p_var3,
        / 'Variable 4:', p_var4.
ENDFORM.
