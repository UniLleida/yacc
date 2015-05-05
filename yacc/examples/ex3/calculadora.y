
%{
#include <stdio.h>
%}

%token ADD SUB MUL DIV EOLN
%token NUMBER

%%

expr_lst : 
    | expr_lst rpexpr
    ;

rpexpr : expr EOLN { printf("res= %d\n", $1 ); }
       ;

expr :
    NUMBER              { $$ = $1; }
    | expr expr ADD { $$ = $1 + $2; }
    | expr expr SUB { $$ = $1 - $2; }
    | expr expr MUL { $$ = $1 * $2; }
    | expr expr DIV { $$ = $1 / $2; }
    ;

%%

int main() {
  return yyparse();
}

