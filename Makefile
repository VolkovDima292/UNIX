all:
	sudo cp ./dbg_lib.h  /usr/include/dbg_lib.h
	gcc -c -Wall -Werror -fpic dbg_thing.c
	gcc -shared -o libdbg.so dbg_thing.o
	sudo cp ./libdbg.so /usr/lib/libdbg.so
build:
	gcc dbg_work.c -L. -ldbg -o test

