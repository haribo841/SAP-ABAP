*Create a transaction for any of your programs already created.

REPORT Z_ABAP101_098.

*Go to Transaction Code SE93 (Transaction Maintenance):

*Enter SE93 in the command field and press Enter.
*Create a New Transaction Code:

*In the "Transaction Code" field, enter your desired transaction name, e.g., ZMYTRANSACTION.
*Click on the Create button.
*Define Transaction Attributes:

*Enter a meaningful description, e.g., Execute Selection Variant Program.
*Under "Start Object" select Program and Selection Screen (Report Transaction).
*Click Continue.
*Link the Program to the Transaction:

*In the next screen, provide the following details:
*Program: Enter the name of your program, e.g., ZSELECTION_VARIANT.
*Screen Number: Leave it as 1000 (default for the selection screen).
*Save the Transaction:

*Click on the Save button.
*Assign the transaction to a development class or set it as a local object ($TMP) for temporary purposes.
*Active and Test the Transaction:

*After saving, test the transaction code by entering it in the command field and pressing Enter.
*The associated program should execute and display its selection screen or output.