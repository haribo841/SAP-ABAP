*Write an executable program with a routine that receives a work area
*with at least 4 components. All components can only be declared using
*numeric and different primitive types. Yourroutine should sum the
*values from all components and print the result.

REPORT Z_ABAP101_058.

TYPES: BEGIN OF lty_work_area,
 component1 TYPE i,
 component2 TYPE p LENGTH 8 DECIMALS 2,
 component3 TYPE f,
 component4 TYPE string,
END OF lty_work_area.

DATA: lwa_work_area TYPE TABLE OF lty_work_area,
 result TYPE i.

DATA: lwa_input TYPE lty_work_area.

lwa_input-component1 = 10.
lwa_input-component2 = '13.37'.
lwa_input-component3 = '21.37'.
lwa_input-component4 = '40'.

APPEND lwa_input TO lty_work_area.

PERFORM calculate_sum.

WRITE: / 'Sum of all components:', result.

FORM calculate_sum.

 DATA: lwa_input TYPE lty_work_area.

 LOOP AT lty_work_area INTO lwa_input.
  result = result lwa_input-component1 + lwa_input-component2 + lwa_input-component3 + lwa_input-component4.
 ENDLOOP.
ENDFORM.
