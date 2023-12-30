*Declare a structure type with the following components of the global structure SFLIGHT:
*CARRID, CONNID, FLDATE, PRICE, CURRENCY, PLANETYPE, SEATSMAX and SEATSOCC.

REPORT z_abap101_008.

* 1st Option - Declaring several TYPES

TYPES BEGIN OF some_components_sflight.
TYPES carrid TYPE sflight-carrid.
TYPES connid TYPE sflight-connid.
TYPES fldate TYPE sflight-fldate.
TYPES price TYPE sflight-price .
TYPES currency TYPE sflight-currency .
TYPES planetype TYPE sflight-planetype.
TYPES seatsmax TYPE sflight-seatsmax .
TYPES seatsoccupied TYPE sflight-seatsocc . " Different name for a component
TYPES END OF some_components_sflight.

* 2nd Option - Reusing TYPES keyword

TYPES: BEGIN OF some_components_sflight_2, " Semicolon ( : ) after TYPES
carrid TYPE sflight-carrid, " Comma after each component
connid TYPE sflight-connid,
fldate TYPE sflight-fldate,
price TYPE sflight-price,
currency TYPE sflight-currency,
planetype TYPE sflight-planetype,
seatsmax TYPE sflight-seatsmax,
seatsocc TYPE sflight-seatsocc,
END OF some_components_sflight_2.