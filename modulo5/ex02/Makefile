output: main.o
	gcc main.o -o output

main.o: main.c
	gcc -g -Wall -c main.c
	
clean:
	rm -f *.o output
	
run: output
	./output
