*Declare a variable of the same type of field carrid from table SPFLI.

REPORT Z_ABAP101_022.

*To declare a variable of the same type as the field 'CARRID' from the table 'SPFLI',
*If 'CARRID' is based on a specific data element or type,
*we can use that information to declare a variable of the same type.

DATA lv_carrid TYPE S_CARR_ID.

*This line declares a variable named 'lv_carrid'
*of type specified by the element or type that 'CARRID'
*from table 'SPFLI' uses (double click on it).
