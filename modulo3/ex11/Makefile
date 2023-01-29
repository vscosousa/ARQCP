output: vec_greater10.o main.o
	gcc vec_greater10.o main.o -o output

vec_greater10.o: vec_greater10.s
	gcc -g -Wall -c vec_greater10.s

main.o: main.c
	gcc -g -Wall -c main.c
	
clean:
	rm -f *.0 output
	
run: output
	./output
