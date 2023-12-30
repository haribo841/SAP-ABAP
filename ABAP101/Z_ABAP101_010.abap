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

*or

TYPES: BEGIN OF some_components_sflight_2,
carrid TYPE sflight-carrid,
connid TYPE sflight-connid,
fldate TYPE sflight-fldate,
price TYPE sflight-price,
currency TYPE sflight-currency,
planetype TYPE sflight-planetype,
seatsmax TYPE sflight-seatsmax,
seatsocc TYPE sflight-seatsocc,
END OF some_components_sflight_2.
TYPES: BEGIN OF flight_booking,
carrid TYPE sbook-carrid ,
connid TYPE sbook-connid ,
fldate TYPE sbook-fldate ,
bookid TYPE sbook-bookid ,
customid TYPE sbook-customid ,
END OF flight_booking.
* Note that some_components_sflight_2 and flight_booking have components with
the same name
* 'carrid', 'connid' and 'fldate'. 2 components cannot have the same name so
* in the structure below we add a suffix for each component originated in the
local
* structure flight_booking
TYPES: BEGIN OF sflight_sbook.
INCLUDE TYPE some_components_sflight_2.
INCLUDE TYPE flight_booking AS book RENAMING WITH SUFFIX _book.
TYPES END OF sflight_sbook.
START-OF-SELECTION. " F8 To Execute
DATA one_record TYPE sflight_sbook.