*Declare a variable of the same type of field FLDATE table SFLIGHT.

REPORT Z_ABAP101_023.

*If we want to declare a variable with the same type as the field 'FLDATE' from the 'SFLIGHT' table,
*we should use the reference directly to the structure & field name:

DATA lv_fldate TYPE SFLIGHT-FLDATE.

*This line declares a variable named 'lv_fldate' with the
*same type as the 'FLDATE' field in the 'SFLIGHT' table.
