output: fun1.o fun2.o fun3.o fun4.o main.o
	gcc fun1.o fun2.o fun3.o fun4.o main.o -o output

fun1.o: fun1.s
	gcc -g -Wall -c fun1.s

fun2.o: fun2.s
	gcc -g -Wall -c fun2.s
	
fun3.o: fun3.s
	gcc -g -Wall -c fun3.s

fun4.o: fun4.s
	gcc -g -Wall -c fun4.s
	
main.o: main.c
	gcc -g -Wall -c main.c
	
clean:
	rm -f *.o output
	
run: output
	./output
