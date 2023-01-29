output: seven_count.o main.o
	gcc seven_count.o main.o -o output

asm.o: seven_count.s
	gcc -g -Wall -c seven_count.s
	
main.o: main.c
	gcc -g -Wall -c main.c
	
clean:
	rm -f *.0 output
	
run: output
	./output
