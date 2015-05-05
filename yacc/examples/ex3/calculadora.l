
%{
#include "calculadora.tab.h"
%}

%%

"+" { return ADD; }

"-" { return SUB; }

"*" { return MUL; }

"/" { return DIV; }

[0-9]+ { yylval = atoi( yytext ); return NUMBER; }

[\n] { return EOLN; }

[ \t] { /* ignorar espais en blanc. */ }

. { printf("Illegal character: %s", yytext); }
