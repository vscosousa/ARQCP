# ex10 Makefile
executavel: average.o ex10.o
	gcc -Wall average.o ex10.o -o executavel

average.o: average.c average.h
	gcc -g -Wall -c average.c

ex10.o: ex10.c average.h
	gcc -g -Wall -c ex10.c
	
clean:
	rm -f *.o executavel

run: executavel
	./executavel
