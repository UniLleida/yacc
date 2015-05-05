
%{
#include "precedencia.tab.h"
%}

%%

";" { return SEMI; }

"+" { return PLUS; }

"*" { return TIMES; }

"(" { return LPAREN; }

")" { return RPAREN; }

"-" { return MINUS; }

[0-9]+ { yylval = atoi( yytext ); return NUMBER; }

[ \t\r\n\f] { /* ignore white space. */ }

. { printf("Illegal character: %c\n", *yytext); }
