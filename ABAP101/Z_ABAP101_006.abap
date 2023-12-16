*Declare a structure type with 5 fields, each field with the same types from exercises 1 to 5.

REPORT Z_ABAP101_006.

TYPES: BEGIN OF ls_structure,
 char_field TYPE CHAR10,
 int_field TYPE INT4,
 num_field TYPE NUMC7,
 data_field TYPE DATS,
 time_field TYPE TIMS,
 END OF ls_structure.