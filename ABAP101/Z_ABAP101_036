*Is it possible to declare an internal table of constants?

REPORT Z_ABAP101_036.

*In ABAP you can't directly declare an internal table with constant
*values in the way you might declare constants. We can only simulate
*table of constants by declaring variables & assign constant values to it

TYPES: BEGIN OF lty_constants,
value TYPE i,
END OF lty_constants.

CONSTANTS: lc_value1 TYPE i VALUE 1,
           lc_value2 TYPE i VALUE 2,
           lc_value3 TYPE i VALUE 3.

DATA: lt_constants TYPE STANDARD TABLE OF lty_constants WITH EMPTY KEY.
      lt_constants = VALUE # ( ( VALUE = lc_value1 ) ( VALUE = lc_value2 ) ( VALUE = lc_value3 ) ).

*In this code we create table 'lt_constants' of type 'lty_constants' &
*we assigned three constant values to it ('lc_value1', 'lc_value2' & 'lc_value3').
*Although, it's not strict constant, these variables contains constant values.
