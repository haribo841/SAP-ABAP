*Declare two constants which contain the values 'X' (true) and ' ' (false).
*Note: This is a common practice as ABAP does not contain a boolean primitive type.

REPORT Z_ABAP101_032.

*In ABAP, 'X' is commonly used to represent true & ' ' (a single space) is
*often used to represent false, as there's no specific boolean primitive type.

CONSTANTS lc_true TYPE c VALUE 'X',
          lc_false TYPE c VALUE ' ',

*This code defines two constants: 'lc_true' containing 'X' (representing true) &
*'lc_false' containing ' ' (a single space, representing false).
