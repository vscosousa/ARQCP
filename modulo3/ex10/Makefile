output: str_cat.o main.o
	gcc str_cat.o main.o -o output

str_cat.o: str_cat.s
	gcc -g -Wall -c str_cat.s

main.o: main.c
	gcc -g -Wall -c main.c
	
clean:
	rm -f *.0 output
	
run: output
	./output
