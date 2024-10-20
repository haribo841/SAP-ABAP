*Have a routine that receives an internal table (with at least three columns)
*and a string with the name of a column. Sort the table by the specified column accordingly.

REPORT Z_ABAP101_071.

TYPES: BEGIN OF lty_data,
        col1 TYPE string,
        col2 TYPE string,
        col3 TYPE string,
         END OF lty_data.

DATA: lt_internal  TYPE TABLE OF lty_data,
      ls_wa        TYPE          lty_data.

START-OF-SELECTION.
*Populating internal table
 APPEND VALUE #( col1 = 'B' col2 = 'DataB' col3 = 'AnotherB' ) TO lt_internal.
 APPEND VALUE #( col1 = 'C' col2 = 'DataC' col3 = 'AnotherC' ) TO lt_internal.
 APPEND VALUE #( col1 = 'A' col2 = 'DataA' col3 = 'AnotherA' ) TO lt_internal.

*Before sort
LOOP AT lt_internal INTO ls_wa.
 WRITE: / 'Column1:', ls_wa-col1, Column2:', ls_wa-col2, Column3:', ls_wa-col3.
ENDLOOP.

*Sorting internal table by first column
PERFORM sort USING lt_internal.

*After sort
LOOP AT lt_internal INTO ls_wa.
 WRITE: / 'Column1:', ls_wa-col1, Column2:', ls_wa-col2, Column3:', ls_wa-col3.
ENDLOOP.

FORM sort USING col TYPE string CHANGING ct_table TYPE table.
 FIELD-SYMBOLS: <fs_column>.
 ASSIGN COMPONENT col OF STRUCTURE ct_table TO <fs_column>.
 IF sy_subrc <> 0.
  SORT lt_internal BY col1 ASCENDING.
 ELSE.
  WRITE: / 'Column name not found in the internal table structure!'.
 ENDIF.
ENDFORM.
