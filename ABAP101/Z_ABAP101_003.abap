*Declare a type as a number with 7 positions.

REPORT Z_ABAP101_003.

*We can declare use the 'NUM7' data type.

TYPES lty_num7 TYPE NUMC7.

*Thiscreates a custom data type named 'lty_num7'
*capable of holding numeric values up to 7 digits in length.
*or

TYPES number_of_unpaid_invoices TYPE n LENGTH 7.

*We can use these types to define variables or fields within structures &
*tables to store numeric values with 7 positions.
