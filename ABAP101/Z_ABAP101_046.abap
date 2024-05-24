*Write an executable program that reads the current system date and write it in your language in text format.
*Ex: 20140727 should be written as July the Twenty-Seventh, 2014

REPORT Z_ABAP101_046.

DATA: lv_year          TYPE string,
      lv_month         TYPE string,
      lv_day           TYPE string,
      lv_month_text    TYPE string,
      lv_day_text      TYPE string,
      lv_prefinal_text TYPE string,
      lv_final_text    TYPE string.

lv_year  = sy-datum+0(4).
lv_month = sy-datum+4(2).
lv_day   = sy-datum+6(2).

CASE lv_month.
 WHEN 1. lv_month_text = 'January'.
 WHEN 2. lv_month_text = 'February'.
 WHEN 3. lv_month_text = 'March'.
 WHEN 4. lv_month_text = 'April'.
 WHEN 5. lv_month_text = 'May'.
 WHEN 6. lv_month_text = 'June'.
 WHEN 7. lv_month_text = 'July'.
 WHEN 8. lv_month_text = 'August'.
 WHEN 9. lv_month_text = 'September'.
 WHEN 10. lv_month_text = 'October'.
 WHEN 11. lv_month_text = 'November'.
 WHEN 12. lv_month_text = 'December'.
 WHEN OTHERS.
ENDCASE.

CASE lv_day.
    WHEN 1. lv_day_text = 'First'.
    WHEN 2. lv_day_text = 'Second'.
    WHEN 3. lv_day_text = 'Third'.
    WHEN 4. lv_day_text = 'Fourth'.
    WHEN 5. lv_day_text = 'Fifth'.
    WHEN 6. lv_day_text = 'Sixth'.
    WHEN 7. lv_day_text = 'Seventh'.
    WHEN 8. lv_day_text = 'Eighth'.
    WHEN 9. lv_day_text = 'Ninth'.
    WHEN 10. lv_day_text = 'Tenth'.
    WHEN 11. lv_day_text = 'Eleventh'.
    WHEN 12. lv_day_text = 'Twelfth'.
    WHEN 13. lv_day_text = 'Thirteenth'.
    WHEN 14. lv_day_text = 'Fourteenth'.
    WHEN 15. lv_day_text = 'Fifteenth'.
    WHEN 16. lv_day_text = 'Sixteenth'.
    WHEN 17. lv_day_text = 'Seventeenth'.
    WHEN 18. lv_day_text = 'Eighteenth'.
    WHEN 19. lv_day_text = 'Nineteenth'.
    WHEN 20. lv_day_text = 'Twentieth'.
    WHEN 21. lv_day_text = 'Twenty-First'.
    WHEN 22. lv_day_text = 'Twenty-Second'.
    WHEN 23. lv_day_text = 'Twenty-Third'.
    WHEN 24. lv_day_text = 'Twenty-Fourth'.
    WHEN 25. lv_day_text = 'Twenty-Fifth'.
    WHEN 26. lv_day_text = 'Twenty-Sixth'.
    WHEN 27. lv_day_text = 'Twenty-Seventh'.
    WHEN 28. lv_day_text = 'Twenty-Eighth'.
    WHEN 29. lv_day_text = 'Twenty-Ninth'.
    WHEN 30. lv_day_text = 'Thirtieth'.
    WHEN 31. lv_day_text = 'Thirty-First'.
    WHEN OTHERS.
ENDCASE.

lv_prefinal_text = lv_day_text && ','.
CONCATENATE lv_month_text 'the' lv_prefinal_text INTO lv_final_text SEPARATED BY space.
