*Write an executable program with two parameters which represents a
*base and exponent. Print the result of exponentiation. As both
*parameters are required for the operation they should be mandatory.

REPORT Z_ABAP101_067.

PARAMETERS: p_base2 OBLIGATORY TYPE decfloat34,
            p_exp2 OBLIGATORY TYPE decfloat34.

DATA result TYPE decfloat34.

START-OF-SELECTION.
result = p_base2 ** p_exp2.
WRITE: / 'The result of ', p_base2, 'raised to the power of ', p_exp2, ' is: ', result.
