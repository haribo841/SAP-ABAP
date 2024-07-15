*Write an executable program which has a routine that receives a standard
*internal table. The line type used in the internal table declaration must
*contain at least three components any text type. The routine should replace
*all occurrences of "space" by a "_" (underscore) using field symbols
*(and not work areas). Print the table contents before and after calling
*the routine. The internal table must be populated with at least 10
*records and contemplating some fields that have "space" in all field values,
*other records containing spaces in just a few fields and other records without spaces at all.

REPORT Z_ABAP101_064.

TYPES: BEGIN OF lty_line,
 field1 TYPE string, "Assuming text type fields
 field2 TYPE string,
 field3 TYPE string,
 field4 TYPE string,
END OF lty_line.

TYPES: lty_table TYPE TABLE OF lty_line.

DATA: lt_internal TYPE lty_table,
      lwa_table   TYPE lty_line.

START-OF-SELECTION.

*Populating the table with data
DO 9 TIMES.
CLEAR lwa_table.
lwa_table-field1 = 'Text'.
lwa_table-field2 = 'Sample Text with Spaces'.
lwa_table-field3 = 'NoSpacesHere'.
lwa_table-field4 = 'Text with Spaces'.
APPEND lwa_table TO lt_internal.
ENDDO.

CLEAR lwa_table.
lwa_table-field1 = ''.
lwa_table-field2 = ' '.
lwa_table-field3 = '   '.
lwa_table-field4 = '    '.
APPEND lwa_table TO lt_internal.

*Printing table content before routine
WRITE: / 'Content before replacement:'.
LOOP AT lt_internal INTO lwa_table.
 WRITE: / lwa_table-field1, lwa_table-field2, lwa_table-field3, lwa_table-field4.
ENDLOOP.

*Routine to manituplate table content
PERFORM replace CHANGING lt_internal.

*Printing table content after routine
WRITE: / 'Content after replacement:'.
LOOP AT lt_internal INTO lwa_table.
 WRITE: / lwa_table-field1, lwa_table-field2, lwa_table-field3, lwa_table-field4.
ENDLOOP.

*Routine to replace spaces with underscores
PERFORM replace CHANGING tab TYPE lty_table.

FIELD-SYMBOLS: <wa_table> TYPE lty_line.

LOOP AT tab INTO wa_table.
 REPLACE ALL OCCURENCES OF REGEX '()+' IN wa_table-field1 WITH '_' IN CHARACTER MODE.
 REPLACE ALL OCCURENCES OF REGEX '\s' IN wa_table-field2 WITH '_' IN CHARACTER MODE.
 REPLACE ALL OCCURENCES OF REGEX '[[:space:]]' IN wa_table-field3 WITH '_' IN CHARACTER MODE.
 REPLACE ALL OCCURENCES OF REGEX '()+' IN wa_table-field4 WITH '_' IN CHARACTER MODE.
MODIFY tab INDEX sy-tabix FROM lwa_table.
ENDLOOP.
ENDFORM.

*Works in debugger but can't display result.
