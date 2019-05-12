#This a makefile file
main.o : main.c include/standard.h include/maxsubsequence.h
	gcc -c main.c
maxsubsequence.o : src/maxsubsequence.c include/standard.h include/maxsubsequence.h
	gcc -c src/maxsubsequence.c
edit : main.o maxsubsequence.o
	gcc -o main main.o maxsubsequence.o
clean :
	rm -f *.o