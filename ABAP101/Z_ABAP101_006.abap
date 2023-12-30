*Declare a structure type with 5 fields, each field with the same types from exercises 1 to 5.

REPORT Z_ABAP101_006.

TYPES: BEGIN OF ls_structure,
 char_field TYPE CHAR10,
 int_field TYPE INT4,
 num_field TYPE NUMC7,
 data_field TYPE DATS,
 time_field TYPE TIMS,
 END OF ls_structure.
 
 *or
 
TYPES customer_name TYPE c LENGTH 10.
DATA number_of_employees TYPE i.
TYPES number_of_unpaid_invoices TYPE n LENGTH 7.
TYPES creation_date TYPE d.
TYPES last_changed_at TYPE t.
TYPES: BEGIN OF customer_structure,
name TYPE customer_name,
n_employees LIKE number_of_employees,
unpaid_invoices TYPE number_of_unpaid_invoices,
creation_date TYPE d,
last_changed_at TYPE t,
END OF customer_structure.