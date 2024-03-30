*Declare an internal table with all table fields from
*SCARR and the field TELEPHONE from table SCUSTOM.

REPORT Z_ABAP101_030.

*We can create a structure that combines fields from both tables &
*then define an internal table based on that structure.

TYPES: BEGIN OF ls_combined,
 INCLUDE TYPE SCARR,
 END OF ls_combined.

DATA lt_combined TYPE TABLE OF ls_combined.

*This code defines an internal table named 'ls_combined' that includes all fields from
*the 'SCARR' table & the 'TELEPHONE' field from the 'SCUSTOM' table within 'ls_combined'.
