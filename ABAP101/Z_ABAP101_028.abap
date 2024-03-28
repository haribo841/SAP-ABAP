*Declare an internal table with all table fields from table SCARR.

REPORT Z_ABAP101_028.

*We can utilize the predefined structure of the table by using the 'INCLUDE TYPE' statement/.

TYPES: BEGIN OF ls_scarr,
 INCLUDE TYPE SCARR,
 END OF ls_scarr.

*This code defines an internal table named 'ls_scarr' that includes all fields from the 'ls_scarr' table.

DATA it_scarr TYPE STANDARD TABLE OF ls_scarr.
