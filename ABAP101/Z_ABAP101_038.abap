*Declare a constant which type is the same of another constant.

REPORT Z_ABAP101_038.

*In ABAP we cannot directly declare constant, which type is the same of another constant.
*Constants must be declared with directly specified type &
*they cannot have changed type after declaration.

*However, we can create new constant, which will have same type of another constant,
*by assigning this constant value to the newly created.

CONSTANTS lc_a TYPE c VALUE 'A'.
DATA lc_b TYPE c VALUE lc_a.

*This code declare 'lc_b' of type 'c', but its value is assigned to 'lc_a'.
*This allows to have new constant ('lc_b'), which type is same as constant 'lc_a'.
*However, 'lc_b' itself isn't declared as constant, but as variable,
*so its value can be changed during program runtime.
