output: fill_s1.o main.o
	gcc fill_s1.o main.o -o output

fill_s1.o: fill_s1.s
	gcc -g -Wall -c fill_s1.s

main.o: main.c
	gcc -g -Wall -c main.c
	
clean:
	rm -f *.o output
	
run: output
	./output
