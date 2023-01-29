output: test_equal.o main.o
	gcc test_equal.o main.o -o output

test_equal.o: test_equal.s
	gcc -g -Wall -c test_equal.s
    
main.o: main.c
	gcc -g -Wall -c main.c
    
clean:
	rm -f *.0 output
    
run: output
	./output
