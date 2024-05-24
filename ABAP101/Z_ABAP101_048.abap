*Write an executable program that counts how many vowels are in
*the name of the user running the program and print the result.

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

*or

DATA: lv_username TYPE string,
      lv_vowel_count TYPE i VALUE 0,
      lv_char TYPE c LENGTH 1.

CONSTANTS: cv_vowels TYPE string VALUE 'AEIOUaeiou'.

" Get the username of the user running the program
CALL 'SYST_LOGON_USER' ID 'USER' FIELD lv_username.

" Loop through each character of the username
DO STRLEN( lv_username ) TIMES.
  lv_char = lv_username+sy-index(1).

  " Check if the character is a vowel
  IF lv_char CO cv_vowels.
    lv_vowel_count = lv_vowel_count + 1.
  ENDIF.
ENDDO.

" Print the result
WRITE: 'Number of vowels in the username', lv_username, 'is', lv_vowel_count.