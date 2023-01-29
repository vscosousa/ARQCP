output: sum_n2.o main.o
	gcc sum_n2.o main.o -o output

cube.o: sum_n2.s
	gcc -g -Wall -c sum_n2.s
    
main.o: main.c
	gcc -g -Wall -c main.c
    
clean:
	rm -f *.0 output
    
run: output
	./output
