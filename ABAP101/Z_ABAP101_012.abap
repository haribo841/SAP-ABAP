*Declare a table type with all components of the global structure SFLIGHT.

REPORT Z_ABAP101_012.

*To create a table type that encompasses all components of the global structure 'SFLIGHT',
*we'll need to define a structure type that mirrors the 'SFLIGHT' structure &
*then create a table type based on that structure.

*First, define a structure that replicates the 'SFLIGHT' structure:

TYPES: BEGIN OF ls_sflight,
 carrid TYPE SFLIGHT-CARRID,
 connid TYPE SFLIGHT-CONNID,
 fldate TYPE SFLIGHT-FLDATE,
 price TYPE SFLIGHT-PRICE,
 currency TYPE SFLIGHT-CURRENCY,
 planetype TYPE SFLIGHT-PLANETYPE,
 seatsmax TYPE SFLIGHT-SEATSMAX,
 seatsocc TYPE SFLIGHT-SEATSOCC,
 END OF ls_sflight.

*Then, create a table type based on this structure:

TYPES: ltt_sflight TYPE STANDARD TABLE OF ls_sflight.

*This defines a table 'ltt_sflight' that contains elements
**with the same structure as 'SFLIGHT'.