*Declare four parameters. The first two should have a character type
*and the last two a numeric type. Separate each pair in the selection
*screen using selection screen blocks. Both blocks should contain a frame
*so it's possible to see the separation between them. Each frame should have
*a title. Also, define a text for each parameter label using text elements.

REPORT Z_ABAP101_084.

SELECTION-SCREEN BEGIN OF BLOCK block1 WITH GRAME TITLE char.
PARAMETERS: p_char1 TYPE c LENGTH 20 MODIF ID ch1,
            p_char2 TYPE c LENGTH 20 MODIF ID ch2.
SELECTION-SCREEN END OF BLOCK block1.

SELECTION-SCREEN BEGIN OF BLOCK block2 WITH FRAME TITLE numeric.
PARAMETERS: p_num1 TYPE i MODIF ID nu1,
            p_num2 TYPE i MODIF ID nu2.
SELECTION-SCREEN END OF BLOCK block2.

char = 'Title1'.
numeric = 'Title2'.
