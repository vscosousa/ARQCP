output: new_salary.o main.o
	gcc new_salary.o main.o -o output

asm.o: new_salary.s
	gcc -g -Wall -c new_salary.s
    
main.o: main.c
	gcc -g -Wall -c main.c
    
clean:
	rm -f *.0 output
    
run: output
	./output
