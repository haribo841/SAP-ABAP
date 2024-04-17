*Write an executable program that concatenates two words and the
*current month, separating each part by a "-" and write the result.

REPORT Z_ABAP101_045.

TYPES: BEGIN OF ty_months,
 month TYPE string,
 END OF ty_months.

DATA: lt_months TYPE TABLE OF ty_months,
      ls_months TYPE ty_months.

DATA: month_names TYPE STANDARD TABLE OF ty_months WITH EMPTY KEY.

month_names = VALUE # ( ( month = 'January' )
                        ( month = 'February' )
                        ( month = 'March' )
                        ( month = 'April' )
                        ( month = 'May' )
                        ( month = 'June' )
                        ( month = 'July' )
                        ( month = 'August' )
                        ( month = 'September' )
                        ( month = 'October' )
                        ( month = ''November )
                        ( month = 'December' ).

DATA: word1 TYPE string,
      word2 TYPE string,
      lv_word TYPE string,
      lv_month TYPE string,
      lv_index TYPE i.

word1 = 'Current'.
word2 = 'month'.
lv_month = sy-datum+4(2).
lv_word = word1 && '-' && word2 && '-' &&  month_names[ lv_month ]-month.

WRITE lv_word.
