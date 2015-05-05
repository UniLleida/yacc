
llistes : llistes.tab.c lex.yy.c
	gcc llistes.tab.c lex.yy.c -o llistes

llistes.tab.c : llistes.y
	bison -d -v llistes.y

lex.yy.c : llistes.l
	flex llistes.l 

test : llistes
	./list-generator.py 10000 | ./llistes

clean :
	$(RM) llistes.tab.c lex.yy.c llistes
