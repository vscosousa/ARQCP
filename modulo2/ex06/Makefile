output: concatBytes.o main.o
	gcc concatBytes.o main.o -o output

asm.o: concatBytes.s
	gcc -g -Wall -c concatBytes.s
    
main.o: main.c
	gcc -g -Wall -c main.c
    
clean:
	rm -f *.0 output
    
run: output
	./output
