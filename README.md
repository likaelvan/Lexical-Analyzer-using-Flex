## Running the Lexical Analyzer
```
flex [name].lex
gcc lex.yy.c -o [name]
[name].exe < [inputfile].easy
```

## Notes on the Lexical Analyzer

- No comment handling is implemented.
- Tokens that were not identified in the PS 1 submission are ignored (i.e. `.` `{ }`).
- The assignment operator (`=`) is classified as a miscellaneous operator token.
- The equality symbol (`==`) is classified as a relational operator token.
- Printing of tokens follows the format `<Token Class, Token>` (i.e. `<KEYWORD, while>`, `<IDENTIFIER, x>`).
- Integers preceded by a plus or minus sign without a space are considered INTEGER tokens (i.e. `<INTEGER, +1>`, `<INTEGER, -1>`). As such, arithmetic operations (i.e. `1 + 1`, `2 - 2`) should have space between them.
- String literals should always be enclosed in single quotes. Inputs like `'noeclosingquote` where there is no closing single quote will make the program wait until it finds the closing quote in the file.
- Boolean tokens (`true`/`false`) were added in the code (not in PS 1).
- The order of precedence in PS 1 was also modified accordingly to get the correct output.
