output: greatest.o main.o
	gcc greatest.o main.o -o output

greatest.o: greatest.s
	gcc -g -Wall -c greatest.s
    
main.o: main.c
	gcc -g -Wall -c main.c
    
clean:
	rm -f *.0 output
    
run: output
	./output
