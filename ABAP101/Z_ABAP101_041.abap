*Write an executable program that performs the following calculation:
*2 + 3 * 5

REPORT Z_ABAP101_041.

DATA result TYPE i.
result = 2 + 3 * 5.
WRITE: / 'The result of 2 + 3 * 5 is', result.
