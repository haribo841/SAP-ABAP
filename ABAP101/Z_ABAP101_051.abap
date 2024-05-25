*Write an executable program that contains a routine which prints all usernames in the system. 
*(Check table USR04 and its content in transaction SE11, SE16 or SE16N).

REPORT Z_ABAP101_051.

*In ABAP, accessing usernames typically requires specific authorization due to security concerns.

DATA: lt_usernames TYPE TABLE OF usr04-bname..

START-OF-SELECTION.
PERFORM get_usernames.
PERFORM print_usernames.

FORM get_usernames.
 SELECT bname FROM usr04 INTO TABLE lt_usernames.
ENDFORM.

FORM print_usernames.
 LOOP AT lt_usernames INTO DATA(lt_usernames).
  WRITE: / lt_usernames.
 ENDLOOP.
ENDFORM.
