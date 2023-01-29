output: needed_time.o main.o
	gcc needed_time.o main.o -o output

asm.o: needed_time.s
	gcc -g -Wall -c needed_time.s
    
main.o: main.c
	gcc -g -Wall -c main.c
    
clean:
	rm -f *.0 output
    
run: output
	./output
