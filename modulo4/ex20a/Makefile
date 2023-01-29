output: sum_multiples_x.o main.o
	gcc sum_multiples_x.o main.o -o output

sum_multiples_x.o: sum_multiples_x.c
	gcc -g -Wall -c sum_multiples_x.c
	
main.o: main.c
	gcc -g -Wall -c main.c
	
clean:
	rm -f *.0 output
	
run: output
	./output
