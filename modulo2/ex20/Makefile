output: check_num.o main.o
	gcc check_num.o main.o -o output

asm.o: check_num.s
	gcc -g -Wall -c check_num.s
    
main.o: main.c
	gcc -g -Wall -c main.c
    
clean:
	rm -f *.0 output
    
run: output
	./output
