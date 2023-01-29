output: encrypt.o main.o
	gcc encrypt.o main.o -o output

encrypt.o: encrypt.s
	gcc -g -Wall -c encrypt.s

main.o: main.c
	gcc -g -Wall -c main.c
	
clean:
	rm -f *.0 output
	
run: output
	./output
