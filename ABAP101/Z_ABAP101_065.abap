*Write an executable program which has a routine that receives an internal
*table of strings and concatenates their values in four different ways:
*1. Way 1: concatenate internal table texts by the line order
*2. Way 2: concatenate internal table texts by the text ascending order
*3. Way 3: concatenate internal table texts by the text descending order
*4. Way 4: concatenate internal table texts by the line reverse order

REPORT Z_ABAP101_065.

TYPES: BEGIN OF lty_strings,
 text TYPE string,
END OF lty_strings.

DATA: lt_strings TYPE TYPE TABLE OF lty_strings,
      lv_concatenated_text1 TYPE string,
      lv_concatenated_text2 TYPE string,
      lv_concatenated_text3 TYPE string,
      lv_concatenated_text4 TYPE string,
      lv_lines TYPE i.

START-OF-SELECTION.

*Populating internal table
APPEND VALUE #( text = 'A' ) TO lt_strings.
APPEND VALUE #( text = 'B' ) TO lt_strings.
APPEND VALUE #( text = 'C' ) TO lt_strings.

*Getting the number of lines in table
DESCRIBE TABLE lt_strings LINES lv_lines.

PERFORM concatenate.

WRITE: / 'Concatenated by line order:', lv_concatenated_text1.
WRITE: / 'Concatenated by text ascending order:', lv_concatenated_text2.
WRITE: / 'Concatenated by text descending order:', lv_concatenated_text3.
WRITE: / 'Concatenated by line reverse order:', lv_concatenated_text4.

FORM concatenate.
*Way 1: concatenate by line order:
LOOP AT lt_strings INTO DATA(ls_string1).
 CONCATENATE lv_concatenated_text1 ls_string1-text INTO lv_concatenated_text1.
ENDLOOP.

*Way 1: concatenate by text ascending order:
LOOP AT lt_strings INTO DATA(ls_string2).
 CONCATENATE lv_concatenated_text2 ls_string1-text INTO lv_concatenated_text2.
ENDLOOP.

*Way 1: concatenate by  text descending order:
LOOP AT lt_strings INTO DATA(ls_string3).
 CONCATENATE lv_concatenated_text3 ls_string1-text INTO lv_concatenated_text3.
ENDLOOP.

*Way 1: concatenate by line reverse order:
LOOP AT lt_strings INTO DATA(ls_string4).
 CONCATENATE lv_concatenated_text4 ls_string1-text INTO lv_concatenated_text4.
ENDLOOP.

ENDFORM.
