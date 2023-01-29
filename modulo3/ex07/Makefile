output: encrypt.o decrypt.o main.o
	gcc encrypt.o decrypt.o main.o -o output

encrypt.o: encrypt.s
	gcc -g -Wall -c encrypt.s

decrypt.o: decrypt.s
	gcc -g -Wall -c decrypt.s

main.o: main.c
	gcc -g -Wall -c main.c
	
clean:
	rm -f *.0 output
	
run: output
	./output
