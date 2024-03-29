*Declare an internal table with all table fields SPFLI.

REPORT Z_ABAP101_029.

*We can use the predefined structure of the table by including all its fields.

TYPES: BEGIN OF ls_spfli,
 INCLUDE TYPE SPFLI,
 END OF ls_spfli.

*This code defines an internal table named 'ls_spfli'
*that includes all fields from the SPFLI table.

DATA lt_spfli TYPE STANDARD TABLE OF ls_spfli.
