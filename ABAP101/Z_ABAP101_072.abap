
*Have a routine that receives an internal table (with at least three fields)
*and another internal table with the name of the columns to be ordered and order accordingly.

REPORT Z_ABAP101_072.

TYPES: BEGIN OF lty_data,
        col1 TYPE i,
        col2 TYPE string,
        col3 TYPE string,
         END OF lty_data.

TYPES: BEGIN OF lty_field_names,
        name TYPE string,
       END OF lty_field_names.

DATA: lt_internal       TYPE TABLE OF lty_data,
      lt_internal_names TYPE  table_of_strings,
      ls_wa             TYPE          lty_data.
DATA  lt_sort_columns   TYPE  table_of_strings.

START-OF-SELECTION.
*Populating internal table
 APPEND VALUE #( col1 = 'B' col2 = 'DataB' col3 = 'AnotherB' ) TO lt_internal.
 APPEND VALUE #( col1 = 'C' col2 = 'DataC' col3 = 'AnotherC' ) TO lt_internal.
 APPEND VALUE #( col1 = 'A' col2 = 'DataA' col3 = 'AnotherA' ) TO lt_internal.

START-OF-SELECTION.
*Populating internal table
 APPEND 'col1' TO lt_internal_names.

*Before sort
LOOP AT lt_internal INTO ls_wa.
 WRITE: / 'Column1:', ls_wa-col1, Column2:', ls_wa-col2, Column3:', ls_wa-col3.
ENDLOOP.

*Sorting internal table by first column
PERFORM sort USING lt_internal_names CHANGING lt_internal.

*After sort
LOOP AT lt_internal INTO ls_wa.
 WRITE: / 'Column1:', ls_wa-col1, Column2:', ls_wa-col2, Column3:', ls_wa-col3.
ENDLOOP.

FORM sort USING col TYPE table_of_strings CHANGING ct_table TYPE table.

 FIELD-SYMBOLS: <fs_column> TYPE lty_field_names.
 DATA data1 TYPE TABLE OF lty_data.
 data1 = ct_table.
 DESCRIBE TABLE col LINES DATA(lv_quantity).

 CASE lv_quantity.
  WHEN 1,
   READ TABLE col INDEX 1 ASSIGNING FIELD-SYMBOLS <fs_col>.

   SORT data1 BY (<fs_col>) ASCENDING.

   ct_table = data1.
  WHEN 2.
 ENDCASE.
ENDFORM.
