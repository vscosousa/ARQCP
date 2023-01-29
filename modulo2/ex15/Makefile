output: compute.o main.o
	gcc compute.o main.o -o output

asm.o: compute.s
	gcc -g -Wall -c compute.s
    
main.o: main.c
	gcc -g -Wall -c main.c
    
clean:
	rm -f *.0 output
    
run: output
	./output
