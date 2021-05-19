.POSIX:

PREFIX = /usr/local
CC = gcc

IQ-BLOCKS: IQ-BLOCKS.o
	$(CC) IQ-BLOCKS.o -lX11 -o IQ-BLOCKS
IQ-BLOCKS.o: IQ-BLOCKS.c Config.h
	$(CC) -c IQ-BLOCKS.c
clean:
	rm -f *.o *.gch IQ-BLOCKS
install: IQ-BLOCKS
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp -f IQ-BLOCKS $(DESTDIR)$(PREFIX)/bin
	chmod 755 $(DESTDIR)$(PREFIX)/bin/IQ-BLOCKS
uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/IQ-BLOCKS

.PHONY: clean install uninstall
