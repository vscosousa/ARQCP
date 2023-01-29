output: sum_smaller.o main.o
	gcc sum_smaller.o main.o -o output

sum_smaller.o: sum_smaller.s
	gcc -g -Wall -c sum_smaller.s
    
main.o: main.c
	gcc -g -Wall -c main.c
    
clean:
	rm -f *.0 output
    
run: output
	./output
