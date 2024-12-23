*Create a program with one parameter representing an executable program name
*(also known as report).
*The program should execute the program entered in the parameter.

REPORT Z_ABAP101_099.

*Create a Variant for the Program:
*Go to transaction SE38 or SA38 and execute your program, e.g., ZSELECTION_VARIANT.
*Fill in the desired selection screen values.
*Save the variant:

*Goto > Variants > Save as Variant
*Give the variant a name, e.g., PREDEFINED_VARIANT.
*Go to Transaction Code SE93 (Transaction Maintenance):

*Enter SE93 in the command field and press Enter.
*Create a New Transaction Code:

*In the "Transaction Code" field, enter your desired transaction name, e.g., ZMYVARIANT.
*Click on the Create button.
*Define Transaction Attributes:

*Enter a description, e.g., Run Program with Predefined Variant.
*Under "Start Object" select Program and Selection Screen (Report Transaction).
*Click Continue.
*Link the Program and Variant to the Transaction:

*In the next screen, provide the following details:
*Program: Enter the name of your program, e.g., ZSELECTION_VARIANT.
*Variant: Enter the name of the predefined variant, e.g., PREDEFINED_VARIANT.
*Skip Initial Screen: Check this box to directly execute the program using the variant without showing the selection screen.
*Save the Transaction:

*Click on the Save button.
*Assign the transaction to a development class or set it as a local object ($TMP) for temporary purposes.
*Test the Transaction:

*Enter the transaction code (e.g., ZMYVARIANT) in the command field and press Enter.
*The program will execute automatically with the predefined Variant values.