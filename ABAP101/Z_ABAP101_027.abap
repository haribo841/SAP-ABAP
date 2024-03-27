*Declare an internal table with fields of the table
*SBOOK CARRID, CONNID, FLDATE, BOOKID, CUSTOMID.

REPORT Z_ABAP101_025.

*To declare an internal table with fields corresponding to specific
*fields from the 'SBOOK' table, we can create a structure that mirrors
*those fields & then define an internal table based on that structure.

*First, define a structure including the desired fields from the 'SBOOK' table:

TYPES: BEGIN OF ls_sbook_fields,
 carrid TYPE SBOOK-CARRID,
 connid TYPE SBOOK-CONNID,
 fldate TYPE SBOOK-FLDATE,
 bookid TYPE SBOOK-BOOKID,
 customid TYPE SBOOK-CUSTOMID,
 END OF ls_sbook_fields.

*Then, create an internal table using this structure

DATA lt_sbook TYPE TABLE OF ls_sbook_fields.

*This code defines an internal table named 'lt_sbook' with
*fields 'CARRID', 'CONNID', 'FLDATE', 'BOOKID', 'CUSTOMID'.
