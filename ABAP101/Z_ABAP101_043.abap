*Write an executable program that get two integers inside parameters and perform
*the addition, subtraction, multiplication, division and power between them.

REPORT Z_ABAP101_043.

DATA: num1 TYPE i,
      num2 TYPE i,
      addition TYPE i,
      subtraction TYPE i,
      multiplication TYPE i,
      division TYPE i,
      power TYPE i.

PARAMETERS: p_num1 TYPE i,
            p_num2 TYPE i.
num1 = p_num1.
num2 = p_num2.

addition = num1 + num2.
subtraction = num1 - num2.
multiplication = num1 * num2.
division = num1 / num2.
power = num1 / num2.

WRITE: / 'Addition:', addition,
       / 'Subtraction:', subtraction,
       / 'Multiplication:', multiplication,
       / 'Division:', division,
       / 'Power:', power.

*This program will propmpt you to enter two integers,
*then it wil perform addition, subtraction, multiplication,
*division & power operations on those numbers & display the results.
