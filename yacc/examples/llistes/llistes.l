
%{
#include "llistes.tab.h"
%}

%%

[0-9]+ 	return NUM;
;	return ';';
[ \t]	;
.	printf("Wrong\n");

%%

