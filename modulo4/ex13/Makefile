output: rotate.o main.o
	gcc rotate.o main.o -o output

rotate.o: rotate.c
	gcc -g -Wall -c rotate.c
    
main.o: main.c
	gcc -g -Wall -c main.c
    
clean:
	rm -f *.0 output
    
run: output
	./output
