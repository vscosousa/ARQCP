output: vec_add_two.o main.o
	gcc vec_add_two.o main.o -o output

asm.o: vec_add_two.s
	gcc -g -Wall -c vec_add_two.s
	
main.o: main.c
	gcc -g -Wall -c main.c
	
clean:
	rm -f *.0 output
	
run: output
	./output
