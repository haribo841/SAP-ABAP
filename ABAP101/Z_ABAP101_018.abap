*Declare a variable of type integer with initial value 12.72.

REPORT Z_ABAP101_018.

*In ABAP. if we want to assign a decimal value to a variable of type integer,
*we'll need to use a different data type to accommodate decimal numbers.
*For instance, we cam use the 'F' data type to handle floating-point numbers.

DATA lv_float TYPE F VALUE '12.72'.

*This line declares a variable named 'lv_float' of type 'F' &
*initializes it with the value 12.72.