output: vec_search.o main.o
	gcc vec_search.o main.o -o output

vec_search.o: vec_search.s
	gcc -g -Wall -c vec_search.s

main.o: main.c
	gcc -g -Wall -c main.c
	
clean:
	rm -f *.0 output
	
run: output
	./output
