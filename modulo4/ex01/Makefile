output: cube.o main.o
	gcc cube.o main.o -o output

cube.o: cube.s
	gcc -g -Wall -c cube.s
    
main.o: main.c
	gcc -g -Wall -c main.c
    
clean:
	rm -f *.0 output
    
run: output
	./output
