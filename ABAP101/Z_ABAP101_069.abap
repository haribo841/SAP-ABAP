*Write an executable program which has two internal tables, with a
*header line and the other without. Add five records in each table.
*In the case of the one with header line, use it embed work area.
*For the other one, use a work area declared explicitly.
*Print the contents of both internal tables.

REPORT Z_ABAP101_069.

TYPES: BEGIN OF lty_data,
 field1 TYPE string,
 field2 TYPE i,
END OF lty_data.

DATA: lt_header  TYPE TABLE OF lty_data WITH HEADER LINE,
      lt_without TYPE TABLE OF lty_data,
      lwa_data   TYPE lty_data.

START-OF-SELECTION.
*Adding records to internal table with header line
 DO 5 TIMES.
 lt_header-field1 = sy-index.
 lt_header-field2 = sy-index ** 2.
 APPEND lt_header.
ENDDO.

*Adding records to internal table without header line
 DO 5 TIMES.
 lt_header-field1 = sy-index.
 lt_header-field2 = sy-index ** 2.
 APPEND lwa_data to lt_without.
ENDDO.

*Printing content of internal table with header line
LOOP AT lt_header.
 WRITE: / 'Field 1:', lt_header-field1, Field 2:', lt_header-field2.
ENDLOOP.

*Printing content of internal table without header line
LOOP AT lt_without INTO lwa_data.
 WRITE: / 'Field 1:', lwa_data-field1, Field 2:', lwa_data-field2.
ENDLOOP.
