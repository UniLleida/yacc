
%{
#include <stdio.h>
%}

%token ADD EOLN INT

%%

llistae : 
        | llistae expr
	;

expr : expr EOLN  { printf("Resultat = %d\n", $1); }
     | expr ADD term { $$ = $1 + $3; }
     | term { $$ = $1; }
;

term : INT { $$ = $1; }
;

%%

int main() {
  return yyparse();
}
