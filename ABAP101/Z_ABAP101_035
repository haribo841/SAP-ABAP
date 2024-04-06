*Declare a work area of 5 constant components.
*All of them should have different primitive types.

REPORT Z_ABAP101_035.

*In ABAP we cannot directly declare a work area with constant components
*of different primitive types within the work area itself. However, we can
*declare a separate variables for every type and assign to them constant values.

DATA: string_constant TYPE string VALUE 'Hello',
      numeric_constant TYPE i VALUE 1234,
      date_constant TYPE d VALUE '2031231',
      character_constant TYPE c LENGTH 1 VALUE 'X',
      another_string_constant TYPE string VALUE 'AB'.

*this code define five variables with different data type
*('string', 'i'-integer, 'd'-data, 'c'-char, 'string').
*Every variable is initialized with constant value corresponding to its data type.
*Although, it's not strict constant, these variables contains constant values.
