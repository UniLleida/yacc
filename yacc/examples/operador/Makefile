
operador : operador.tab.c lex.yy.c
	gcc operador.tab.c lex.yy.c -o operador

operador.tab.c : operador.y
	bison -d -v operador.y

lex.yy.c : operador.l
	flex operador.l 

clean :
	$(RM) operador operador.tab.c lex.yy.c
