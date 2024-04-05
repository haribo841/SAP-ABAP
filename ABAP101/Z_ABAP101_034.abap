*Declare a work area of constants.
*All components must be integers.

REPORT Z_ABAP101_034.

*In ABAP, we can't create structure with constant values within structure definition.
*Although, we can declare work area with constant integer components.

TYPES: BEGIN OF s_constants,
 int1 TYPE t,
 int2 TYPE t,
 int3 TYPE t,
 int4 TYPE t,
 int5 TYPE t,
END of s_constants.

DATA lw_constants TYPE s_constants.

CONSTANTS: lc_int1 TYPE i VALUE 1,
           lc_int1 TYPE i VALUE 2,
           lc_int1 TYPE i VALUE 3,
           lc_int1 TYPE i VALUE 4,
           lc_int1 TYPE i VALUE 5.

lw_constants-int1 = lc_int1.
lw_constants-int2 = lc_int2.
lw_constants-int3 = lc_int3.
lw_constants-int4 = lc_int4.
lw_constants-int5 = lc_int5.

*This defines a type 's_constants' with integer components & then creates a work area
*'lw_constants' based on this type. Additionally, constants 'lc_int1', 'lc_int2', 'lc_int3'
*'lc_int4' & 'lc_int5' are declared & used to assign values to the work area's components.
