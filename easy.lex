%{
#include <stdio.h>
%}

%%
("array"|"by"|"call"|"case"|"do"|"else"|"else if"|"endcase"|"endfor"|"endwhile"|"end"|"exit"|"forever"|"for"|"go to"|"if"|"input"|"loop"|"node"|"output"|"procedure"|"repeat"|"return"|"stop"|"then"|"to"|"until"|"while")      { printf("<KEYWORD, %s>\n", yytext); }
("and"|"or"|"not")      { printf("<LOGICAL OPERATOR, %s>\n", yytext); }
("log"|"mod")           { printf("<MATHEMATICAL NOTATION, %s>\n", yytext); }
("true"|"false")        { printf("<BOOLEAN, %s>\n", yytext); }
[_a-zA-Z][a-zA-Z0-9_]*  { printf("<IDENTIFIER, %s>\n", yytext); }
(\+|\-|\/|\*|\^)        { printf("<ARITHMETIC OPERATOR, %s>\n", yytext); }
(<=|<|>=|>|==|!=)       { printf("<RELATIONAL OPERATOR, %s>\n", yytext); }
'[^']*'                 { printf("<STRING, %s>\n", yytext); }
[+-]?[1-9][0-9]*|0      { printf("<INTEGER, %s>\n", yytext); }
(=|,|\(|\)|:|;|\[|\])   { printf("<MISCELLANEOUS OPERATOR, %s>\n", yytext); }
[ \t\n]+                { /* ignore whitespace */ }
.                       { printf("<UNRECOGNIZED TOKEN, %s>\n", yytext); }
%%

int main() {
    yylex();
    return 0;
}
int yywrap() {
    return 1;
}