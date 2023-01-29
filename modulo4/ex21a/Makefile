output: distance.o main.o
	gcc distance.o main.o -o output

distance.o: distance.c
	gcc -g -Wall -c distance.c
    
main.o: main.c
	gcc -g -Wall -c main.c
    
clean:
	rm -f *.0 output
    
run: output
	./output
