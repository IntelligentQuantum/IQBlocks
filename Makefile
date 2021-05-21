.POSIX:

PREFIX = /usr/local
CC = gcc

IQBlocks: IQBlocks.o
	$(CC) IQBlocks.o -lX11 -o IQBlocks
IQBlocks.o: IQBlocks.c Config.h
	$(CC) -c IQBlocks.c
clean:
	rm -f *.o *.gch IQBlocks
install: IQBlocks
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp -f IQBlocks $(DESTDIR)$(PREFIX)/bin
	chmod 755 $(DESTDIR)$(PREFIX)/bin/IQBlocks
uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/IQBlocks

.PHONY: clean install uninstall
