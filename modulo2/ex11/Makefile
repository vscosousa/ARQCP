output: test_flags.o main.o
	gcc test_flags.o main.o -o output

asm.o: test_flags.s
	gcc -g -Wall -c test_flags.s
    
main.o: main.c
	gcc -g -Wall -c main.c
    
clean:
	rm -f *.0 output
    
run: output
	./output
