*Declare a table type using the structure type created in exercise 8.

REPORT Z_ABAP101_013.

TYPES: BEGIN OF ls_custom_sflight,
 carrid TYPE SFLIGHT-CARRID,
 connid TYPE SFLIGHT-CONNID,
 fldate TYPE SFLIGHT-FLDATE,
 price TYPE SFLIGHT-PRICE,
 currency TYPE SFLIGHT-CURRENCY,
 planetype TYPE SFLIGHT-PLANETYPE,
 seatsmax TYPE SFLIGHT-SEATSMAX,
 seatsocc TYPE SFLIGHT-SEATSOCC,
 END OF ls_custom_sflight.

TYPES: ltt_sflight TYPE STANDARD TABLE OF ls_custom_sflight.

*This line ceclares a table type named 'ltt_sflight'
*that uses the structure type 'ls_custom_sflight'.