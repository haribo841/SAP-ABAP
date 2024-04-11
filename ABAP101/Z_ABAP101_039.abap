*Declare a type which is used in another
*type, variable, work area, internal table andconstant.

REPORT Z_ABAP101_039.

*Definition of data type 'lty_info':

TYPES: BEGIN OF lty_info,
 name TYPE string,
 age TYPE i,
 address TYPE string,
 END OF lty_info.

*Applying data type 'lty_info' in other data type 'lty_employee':

TYPES: BEGIN OF lty_employee,
 employee_id TYPE string,
 details TYPE lty_info,
 END OF lty_employee.

*Using data type 'lty_info' in variable 'lv_info':

DATA lv_info TYPE lty_info.

*Creating work area 'wa_info' of type 'lty_info':

DATA lw_info TYPE lty_info.

*Using data type 'lty_info' in inside table ('lt_info') & constant ('lc_info'):

DATA: lt_info TABLE OF lty_info,
      lc_info TYPE lty_info VALUE IS INITIAL.

*This code uses 'lty_info' in various context:
*as element in another data type ('lty_employee'),
*as data type for variables ('lv_info', 'lw_info'),
*in internal table ('lt_info') & in constant ('lc_info').
*This flexibility allows to comfortable defining &
*reusing data types in different parts of ABAP program.
