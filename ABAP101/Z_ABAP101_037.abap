*Declare all types and constants from type-pools ABAP and ICON.

REPORT Z_ABAP101_037.

*In ABAP, the 'ABAP' & 'ICON' type pools provide various predefined types & constants.

*For 'ABAP' type pool:

TYPES:
BEGIN OF lty_message,
 msgid TYPE sy-msgid, "Type for message class.
 msgty TYPE sy-msgty, "Type for message type.
 msgno TYPE sy-msgno, "Type for message number.
 msgv1 TYPE sy-msgv1, "Type for message variable 1.
 msgv2 TYPE sy-msgv1, "Type for message variable 2.
 msgv3 TYPE sy-msgv1, "Type for message variable 3.
 msgv4 TYPE sy-msgv1, "Type for message variable 4.
 subrc TYPE sy-subrc, "Type for return code.
 END OF lty_message.

*'SY-SUBRC' is constant with a default value of 0, representing the return code for success,
*Various other constants related to messages, such as message types ('E', 'W', 'I', 'S').

*For 'ICON' type pool there is no defined type for individual icons.
*In this type pool there are defined symbols representing various icons,
*but they are not defined as individual data types.

*Instead, those symbols are used to represent specific icons in user interface:

DATA lv_icon TYPE icon-id VALUE icon_abap.

IF lv_icon = icon_abap.
 " ... code executed, if icon is type 'icon_abap'
 ENDIF.

*Variable 'lv_icon' is type 'icon-id' & is initialized with value 'icon_abap',
*which allows to compare defined icon with its actual use in user interface.
