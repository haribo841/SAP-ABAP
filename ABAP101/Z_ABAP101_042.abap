*Write an executable program that get two integers inside variables and perform
*the addition, subtraction, multiplication, division and power between them.

REPORT Z_ABAP101_042.

DATA: num1 TYPE i,
      num2 TYPE i,
      addition TYPE i,
      subtraction TYPE i,
      multiplication TYPE i,
      division TYPE i,
      power TYPE i.

num1 = 5.
num2 = 2.

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

*This program will perform addition, subtraction, multiplication,
*division & power operations on those numbers & display the results.
