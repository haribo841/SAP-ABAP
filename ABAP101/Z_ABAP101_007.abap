*Declare a type using the global structure SFLIGHT

REPORT Z_ABAP101_007.

*We can create a type that corresponds to the global structure 'SFLIGHT'
*using the 'TYPE' statemant & referencing the structure 'SFLIGHT'.

TYPES lty_sflight TYPE SFLIGHT.

*This creates a custom data type named 'lty_sflight'
*that matches the structure 'SFLIGHT'.
*or

TYPES same_type_of_sflight TYPE SFLIGHT.