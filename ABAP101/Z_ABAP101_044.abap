*Write an executable program that concatenates two words and write the result.

REPORT Z_ABAP101_044.

DATA: word1 TYPE string VALUE 'Hello',
      word2 TYPE string VALUE 'World',
      lv_word TYPE string.

lv_word = word1 && word2.

WRITE: / 'The concatenated word is:', lv_word.

*This program will concatenate the words "Hello" & "World"
*together & display the result: "HelloWorld".
