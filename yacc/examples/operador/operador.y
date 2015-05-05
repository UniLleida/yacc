
%token NUM 
%left '+' 
%left '*'

%%

expressio : expressio operador expressio
          | NUM 
          ;

operador : '+' 
         | '*'
         ;

%%

int yywrap() { return 0; }

int yyerror() { return 0; }

int main() {
   return yyparse();
}

