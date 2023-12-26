*Declare a table type with the following components of the table SBOOK:
*CARRID, CONNID, FLDATE, BOOKID, CUSTOMID but using CUSTOMID as part of the table key.

REPORT Z_ABAP101_014.

TYPES: BEGIN OF ls_book,
 carrid TYPE SBOOK-CARRID,
 connid TYPE SBOOK-CONNID,
 fldate TYPE SBOOK-FLDATE,
 customid TYPE SBOOK-CUSTOMID,
 END OF ls_book.

TYPES: ltt_sbook_with_key TYPE HASHED TABLE OF ls_book WITH UNIQUE KEY customid.

*This code defines a table named 'ltt_sbook_with_key' based on the structure 'ls_book',
*using 'CUSTOMID' as the unique key for hashed table.