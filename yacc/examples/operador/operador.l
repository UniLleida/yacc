
%{
#include "operador.tab.h"
%}

%%

[0-9]+ 	return NUM;
\*	return '*';
\+	return '+';
.	printf("Wrong\n");

%%

