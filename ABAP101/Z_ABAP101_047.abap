*Write an executable program that reads the current system time and write the time in 6
* different zones (3 of them should be compulsorily Greenwich, Delhi and Brasilia).

REPORT Z_ABAP101_047.

DATA: lv_kiribati      TYPE tzntstmps,
      lv_kiribati_text TYPE string, "GMT+14
      lv_japan         TYPE tzntstmps,
      lv_japan_text    TYPE string, "GMT+9
      lv_delhi         TYPE tzntstmps,
      lv_delhi_text    TYPE string, "GMT+4:30
      lv_local         TYPE sy-uzeit, "GMT+1
      lv_utc           TYPE string, "GMT
      lv_brasilia      TYPE tzntstmps,
      lv_brasilia_text TYPE string, "GMT-3
      lv_new_york      TYPE tzntstmps,
      lv_new_text      TYPE string, "GMT-5
      lv_time          TYPE tzntstmps,
      lv_string        TYPE string.

*CET/GMT+1/Local time
WRITE: / 'Current time is:', |{ sy-uzeit TIME = ENVIRONMENT }|.
NEW-LINE.

*UTC/GMT
GET TIME STAMP FIELD lv_time.
lv_string = lv_time.

CONCATENATE lv_string+8(2) ':' lv_string+10(2) ':' lv_string+12(2) INTO lv_utc.

WRITE: / 'Greenwich time is:', lv_utc.
NEW-LINE.

*IST/GMT+4:30
GET TIME STAMP FIELD lv_time.
lv_delhi = lv_time.
lv_delhi_text = lv_delhi + 53000.

CONCATENATE lv_delhi_text+8(2) ':' lv_delhi_text+10(2) ':' lv_delhi_text+12(2) INTO lv_utc.

WRITE: / 'Delhi time is:', lv_utc.
NEW-LINE.

*BRT/GMT-3
GET TIME STAMP FIELD lv_time.
lv_brasilia = lv_time.
lv_brasilia_text = lv_brasilia - 30000.

CONCATENATE lv_brasilia_text+8(2) ':' lv_brasilia_text+10(2) ':' lv_brasilia_text+12(2) INTO lv_utc.

WRITE: / 'Brasilia time is:', lv_utc.
NEW-LINE.

*GILT/GMT+14
GET TIME STAMP FIELD lv_time.
lv_kiribati = lv_time.
lv_kiribati_text = lv_kiribati + 140000.

CONCATENATE lv_kiribati_text+8(2) ':' lv_kiribati_text+10(2) ':' lv_kiribati_text+12(2) INTO lv_utc.

WRITE: / 'Christmas Island time is:', lv_utc.
NEW-LINE.

*JST/GMT+9
GET TIME STAMP FIELD lv_time.
lv_japan = lv_time.
lv_japan_text = lv_japan + 90000.

CONCATENATE lv_japan_text+8(2) ':' lv_japan_text+10(2) ':' lv_japan_text+12(2) INTO lv_utc.

WRITE: / 'Tokio time is:', lv_utc.
NEW-LINE.

*JST/GMT-5
GET TIME STAMP FIELD lv_time.
lv_new_york = lv_time.
lv_new_text = lv_new_york - 50000.

CONCATENATE lv_new_text+8(2) ':' lv_new_text+10(2) ':' lv_new_text+12(2) INTO lv_utc.

WRITE: / 'New York time is:', lv_utc.
NEW-LINE.
