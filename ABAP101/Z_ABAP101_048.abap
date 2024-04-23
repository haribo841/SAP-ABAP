*Write an executable program that counts how many vowels are in
* the name of the user running the program and print the result.

REPORT Z_ABAP101_048.

DATA: name   TYPE string,
      vowels TYPE i VALUE 0,
      len    TYPE i,
      idx    TYPE i VALUE 0,
      char   TYPE string.

PARAMETERS p_name DEFAULT 'Enter your name: ' TYPE string.

name = p_name.

len = STRLEN( name ).

DO len TIMES.
char = name+idx(1).
CASE char.
 WHEN 'a' or 'e' or 'i' or 'o' or 'u' or 'y' or 'A' or 'E' or 'I' or 'O' or 'U' or 'Y'.
  vowels = vowels + 1.
 WHEN OTHERS.
ENDCASE.
idx = idx + 1.
ENDDO.

WRITE:/ 'Number of vowels in your name:', vowels.
