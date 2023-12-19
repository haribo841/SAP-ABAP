*Declare a structure type with the following components of the global structure SBOOK: 
*CARRID, CONNID, FLDATE, BOOKID, CUSTOMID.

REPORT Z_ABAP101_009.

TYPES: BEGIN OF ls_custom_sbook,
carrid TYPE SBOOK-CARRID,
connid TYPE SBOOK-CONNID,
fldate TYPE SBOOK-FLDATE,
bookid TYPE SBOOK-BOOKID,
custom TYPE SBOOK-CUSTOMID,
END OF ls_custom_sbook.
