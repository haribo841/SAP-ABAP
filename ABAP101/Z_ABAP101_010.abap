*Declare a structure containing all the fields mentioned in exercises 8 and 9.
*Check it using the ABAP Debugger.

REPORT Z_ABAP101_010.

TYPES: BEGIN OF ls_combined_structure,
f_carrid TYPE SFLIGHT-CARRID,
f_connid TYPE SFLIGHT-CONNID,
f_fldate TYPE SFLIGHT-FLDATE,
f_price TYPE SFLIGHT-PRICE,
f_currency TYPE SFLIGHT-CURRENCY,
f_planetype TYPE SFLIGHT-PLANETYPE,
f_seatsmax TYPE SFLIGHT-SEATSMAX,
f_seatsocc TYPE SFLIGHT-SEATSOCC,
b_carrid TYPE SBOOK-CARRID,
b_connid TYPE SBOOK-CONNID,
b_fldate TYPE SBOOK-FLDATE,
bookid TYPE SBOOK-BOOKID,
customid TYPE SBOOK-CUSTOMID,
END OF ls_combined_structure.
