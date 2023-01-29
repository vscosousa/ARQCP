output: count_max.o main.o
	gcc count_max.o main.o -o output

count_max.o: count_max.s
	gcc -g -Wall -c count_max.s

main.o: main.c
	gcc -g -Wall -c main.c
	
clean:
	rm -f *.0 output
	
run: output
	./output
