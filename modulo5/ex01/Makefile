output: call_func.o main.o
	gcc call_func.o main.o -o output

call_func.o: call_func.c
	gcc -g -Wall -c call_func.c
	
main.o: main.c
	gcc -g -Wall -c main.c
	
clean:
	rm -f *.o output
	
run: output
	./output
