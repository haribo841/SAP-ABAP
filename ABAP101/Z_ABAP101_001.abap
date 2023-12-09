*Declare a TYPE as a character with 10 positions.

REPORT Z_ABAP101_001.

*We can declare a type as character with 10 positions using the 'CHAR' data.

TYPES lty_char10 TYPE CHAR10.

*This creates a custom data type named 'lty_char10' with a lenght of 10 characters.

TYPES customer_name TYPE c LENGTH 10.

*We can use these types to declare variables or fields within structures or tables.