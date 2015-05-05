
%{
#include <stdio.h>
%}

/* Terminals */
%token SEMI LPAREN RPAREN
%token NUMBER

/* Precedencia i associativitat */
%left MINUS PLUS   // Baixa
%left TIMES  
%right UNITMINUS // Alta

%%

expr_list : expr_list expr_part | expr_part;
expr_part : expr SEMI { printf(" = %d;\n",$1); } ;
expr      : NUMBER  
            | expr PLUS expr { $$=$1+$3; }
            | expr MINUS expr { $$ = $1 - $3; }
	    | expr TIMES expr { $$=$1*$3; }
	    | LPAREN expr RPAREN { $$=$2; }
            | MINUS expr %prec TIMES { $$ = - $2; } 
	    ;

%%

int main() {
  return yyparse();
}
