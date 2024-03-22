*Declare a structure of the same type of SBOOK.

REPORT Z_ABAP101_024.

*To declare structure of the same type as the 'SBOOK' table,
*we can use the predefined structure definition of the table 'SBOOK' in ABAP.

TYPES: BEGIN OF ls_sbook,
 INCLUDE TYPE SBOOK,
 END OF ls_sbook.

*This code creates structure 'ls_sbook' that mirrors the structure of the 'SBOOK' table in ABAP.
