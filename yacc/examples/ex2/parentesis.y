
%{
#include <stdio.h>
#include <stdlib.h>
%}

%token ADD LPAR RPAR EOLN
%token INT

%%

llistae : 
        | llistae xexpr
        ;

xexpr : expr EOLN { printf("Resultat = %d\n", $1); }
    ;

expr : INT
     | LPAR expr RPAR { $$ = $2; }
     | expr ADD INT  { $$ = $1 + $3; }
     ;

%%

int main() {
  return yyparse();
}
