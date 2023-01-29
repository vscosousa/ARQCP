output: count_odd.o main.o
	gcc count_odd.o main.o -o output

count_odd.o: count_odd.s
	gcc -g -Wall -c count_odd.s
    
main.o: main.c
	gcc -g -Wall -c main.c
    
clean:
	rm -f *.0 output
    
run: output
	./output
