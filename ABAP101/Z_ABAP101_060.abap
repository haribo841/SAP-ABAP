*Write an executable program which contains three internal tables
*(their type must contain at least three components of different data types).
*Each table will have a different type (standard, sorted and hashed).
*Add 3 identical values in each table and view the contents of each table in the debugger.

REPORT Z_ABAP101_060.

TYPES: BEGIN OF lty_standard,
 col1 TYPE i,
 col2 TYPE c LENGTH 10,
 col3 TYPE dats,
END OF lty_standard.

TYPES: BEGIN OF lty_sorted,
 col1 TYPE i,
 col2 TYPE c LENGTH 10,
 col3 TYPE dats,
END OF lty_sorted.

TYPES: BEGIN OF lty_hashed,
 col1 TYPE i,
 col2 TYPE c LENGTH 10,
 col3 TYPE dats,
END OF lty_hashed.

DATA: lty_standard TYPE STANDARD TABLE OF lty_standard,
      lty_sorted TYPE STANDARD TABLE OF lty_sorted WITH UNIQUE KEY col1,
      lty_hashed TYPE STANDARD TABLE OF lty_hashed WITH UNIQUE KEY col2,

DATA: lwa_standard TYPE lty_standard,
      lwa_sorted TYPE lty_sorted,
      lwa_hashed TYPE lty_hashed.

lwa_standard-col1 = 1.
lwa_standard-col2 = 'ABC'.
lwa_standard-col3 = sy-datum.
APPEND lwa_standard TO lt_standard.

lwa_sorted-col1 = 1.
lwa_sorted-col2 = 'ABC'.
lwa_sorted-col3 = sy-datum.
APPEND lwa_sorted TO lt_sorted.

lwa_hashed-col1 = 1.
lwa_hashed-col2 = 'ABC'.
lwa_hashed-col3 = sy-datum.
APPEND lwa_hashed TO lt_hashed.

LOOP AT lt_sorted INTO lwa_sorted.
WRITE: / lwa_sorted-col1, lwa_sorted-col2, lwa_sorted-col3.
ENDLOOP.

LOOP AT lt_standard INTO lwa_standard.
WRITE: / lwa_standard-col1, lwa_standard-col2, lwa_standard-col3.
ENDLOOP.

LOOP AT lt_hashed INTO lwa_hashed.
WRITE: / lwa_hashed-col1, lwa_hashed-col2, lwa_hashed-col3.
ENDLOOP.
