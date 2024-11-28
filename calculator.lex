%{
#include <stdio.h>
#include <stdlib.h>
%}

%option noyywrap

DIGIT   [0-9]
NUMBER  {DIGIT}+(\.{DIGIT}+)?
WS      [ \t\n]

%%

{NUMBER}    { printf("Number: %s\n", yytext); }
"+"         { printf("Operator: ADD\n"); }
"-"         { printf("Operator: SUBTRACT\n"); }
"*"         { printf("Operator: MULTIPLY\n"); }
"/"         { printf("Operator: DIVIDE\n"); }
{WS}        ; /* Skip whitespace */

.           { printf("Invalid character: %s\n", yytext); }

%%

int main() {
    printf("Enter an expression (e.g., 2 + 3):\n");

    yylex();

    return 0;
}
