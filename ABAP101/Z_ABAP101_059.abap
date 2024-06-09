*Write an executable program which has a routine that receives a work
*area with 3 char components and 3 numeric components. The routine
*should clear some component values according to the following rules:
*1. Clear char components only if the sum of the numeric components is
*odd (ignoring possible decimal places)
*2. Clear numeric components only if the sum of vowels in the three char
*components is even (ignoring lower/upper case)

REPORT Z_ABAP101_059.

TYPES: BEGIN OF lty_work_area,
 char_comp1 TYPE c LENGTH 3,
 char_comp2 TYPE c LENGTH 3,
 char_comp3 TYPE c LENGTH 3,
 num_comp1 TYPE i,
 num_comp2 TYPE i,
 num_comp3 TYPE i,
END OF lty_work_area.

DATA: vowels TYPE i,
     num_sum TYPE i.

DATA: lwa_input TYPE lty_work_area.

START_OF_SELECTION.

lwa_input-char_comp1 = 'abc'.
lwa_input-char_comp2 = 'DEF'.
lwa_input-char_comp3 = 'Ghi'.
lwa_input-num_comp1 = 1.
lwa_input-num_comp2 = 2.
lwa_input-num_comp3 = 3.
APPEND lwa_input TO lty_work_area.

WRITE: / 'Before routine:'.
WRITE: / lwa_input-char_comp1.
WRITE: / lwa_input-char_comp2.
WRITE: / lwa_input-char_comp3.
WRITE: / lwa_input-num_comp1.
WRITE: / lwa_input-num_comp2.
WRITE: / lwa_input-num_comp3.

CONCATENATE lwa_input-char_comp1 lwa_input-char_comp2 lwa_input-char_comp3 INTO DATA(concatenated).
ADD lwa_input-num_comp1 TO num_sum.
ADD lwa_input-num_comp2 TO num_sum.
ADD lwa_input-num_comp3 TO num_sum.

IF num_sum MOD 2 <> 0.
 CLEAR lwa_input-char_comp1.
 CLEAR lwa_input-char_comp2.
 CLEAR lwa_input-char_comp3.
ELSE.
 PERFORM cout_vowels USING concatenated.

 IF vowels MOD 2 = 0.
  CLEAR lwa_input-num_comp1.
  CLEAR lwa_input-num_comp2.
  CLEAR lwa_input-num_comp3.
 ENDIF.
ENDIF.

WRITE: / 'After routine:'.
WRITE: / lwa_input-char_comp1.
WRITE: / lwa_input-char_comp2.
WRITE: / lwa_input-char_comp3.
WRITE: / lwa_input-num_comp1.
WRITE: / lwa_input-num_comp2.
WRITE: / lwa_input-num_comp3.

FORM cout_vowels USING p_name.
 DATA: name TYPE string,
  vowels TYPE i VALUE 0,
  len TYPE i,
  idx TYPE i VALUE 0,
  char TYPE string.

 name = p_name.

 len = STRLEN( name ).

 DO len TIMES.
  char = name+idx(1).
  CASE char.
   WHEN 'a' or 'e' or 'i' or 'o' or 'u' or 'y' or 'A' or 'E' or 'I' or 'O' or 'U' or 'Y'.
    vowels = vowels + 1.
   WHEN OTHERS.
  ENDCASE,
  idx = idx + 1.
 ENDDO.
ENDFORM.
