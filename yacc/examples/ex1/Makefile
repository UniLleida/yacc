
TARGET=sumador

$(TARGET): $(TARGET).tab.c lex.yy.c
	gcc $(TARGET).tab.c lex.yy.c -o $(TARGET) -ll -ly

$(TARGET).tab.c: $(TARGET).y
	bison -d $(TARGET).y

lex.yy.c: $(TARGET).l
	flex $(TARGET).l

clean:
	rm -f $(TARGET).tab.c lex.yy.c $(TARGET).tab.h $(TARGET) *~
