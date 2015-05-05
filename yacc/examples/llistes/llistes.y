
%token NUM ';'

%%

llista : NUM ';' llista
       | NUM ';'
       ;

%%

int yywrap() { return 1; }

int yyerror() { return 0; }

int main() {
   return yyparse();
}

