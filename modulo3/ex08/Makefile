output: test_even.o main.o
	gcc test_even.o main.o -o output

test_even.o: test_even.s
	gcc -g -Wall -c test_even.s

main.o: main.c
	gcc -g -Wall -c main.c
	
clean:
	rm -f *.0 output
	
run: output
	./output
