*Declare three parameters. There should be a horizontal line
*separating the first two ones and  a blank line separating the last two.

REPORT Z_ABAP101_089.

PARAMETERS: p_first TYPE c LENGTH 10. "First parameter
SELECTION-SCREEN: ULINE. "Horizontal line
PARAMETERS: p_second TYPE c LENGTH 10. "Second parameter
SELECTION-SCREEN SKIP. "Blank line
PARAMETERS: p_third TYPE c LENGTH 10. "Third parameter