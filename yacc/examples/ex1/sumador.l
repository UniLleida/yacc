
%{
#include "sumador.tab.h"
%}

%%

\+ { return ADD; }

[0-9]+ { yylval = atoi(yytext); return INT; }

\n { return EOLN; }

[ \t] { /* Ignorem espais en blanc */ }

. { printf("Caracter ilegal: %s\n", yytext); }
