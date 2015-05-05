
%{
#include "parentesis.tab.h"
%}

%%

"+" { return ADD; }

"(" { return LPAR; }

")" { return RPAR; }

[0-9]+ { yylval = atoi( yytext ); return INT; }

[\n] { return EOLN; }

[ \t] /* ignorar espais en blanc space. */

. { printf("Illegal character %c: ", *yytext); }
