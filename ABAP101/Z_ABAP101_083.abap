*Declare four parameters. The first two should have a character type and the last two a
*numeric type. Separate each pair in the selection screen using selection screen blocks.
*Both blocks should contain a frame so it's possible to see the separation between them.

REPORT Z_ABAP101_083.

SELECTION-SCREEN BEGIN OF BLOCK block1 WITH GRAME TITLE char.
PARAMETERS: p_char1 TYPE c LENGTH 20,
            p_char2 TYPE c LENGTH 20.
SELECTION-SCREEN END OF BLOCK block1.

SELECTION-SCREEN BEGIN OF BLOCK block2 WITH GRAME TITLE numeric.
PARAMETERS: p_num1 TYPE i,
            p_num2 TYPE i.
SELECTION-SCREEN END OF BLOCK block2.
