*Declare a variable which is used in another
*variable, type, work area, internal table and constant.

REPORT Z_ABAP101_040.

CONSTANTS: lv_parent_variable TYPE string VALUE 'Hello, world!',
           lc_variable TYPE string VALUE lv_parent_variable. "Variable used in a constant

DATA: lv_variable TYPE string VALUE lv_parent_variable, "Variable used in another variable
      lty_variable TYPE string VALUE lv_parent_variable, "Variable used in a type
      lw_variable LIKE lv_parent_variable, "Variable used in work area
      lt_variable TYPE TABLE oF string. "Variable used in internal table
APPEND lv_parent_variable TO lt_variable. "Variable used in internal table
