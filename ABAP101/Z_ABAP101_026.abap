*Declare a structure with all fields of the table
*SBOOK and the field TELEPHONE from SCUSTOM table.

REPORT Z_ABAP101_025.

TYPES: BEGIN OF ls_combined_structure,
 INCLUDE TYPE SBOOK,
 telephone TYPE CUSTOM-TELEPHONE,
 END OF ls_custom_sflight_structure.

*This code defines a structure 'ls_combined_structure' that includes all fields
*from the 'SBOOK' table & an additional field 'TELEPHONE' from the 'SCUSTOM' table.
