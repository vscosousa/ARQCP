output: inc_and_square.o main.o
	gcc inc_and_square.o main.o -o output

inc_and_square.o: inc_and_square.s
	gcc -g -Wall -c inc_and_square.s
    
main.o: main.c
	gcc -g -Wall -c main.c
    
clean:
	rm -f *.0 output
    
run: output
	./output
