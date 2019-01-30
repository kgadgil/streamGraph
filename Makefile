## BASIC MAKEFILE ##
# General syntax of a Makefile
# target [target ...] : [dependent ...]
#<tab>[command...]


CC = g++
CPPFLAGS = -std=c++11 -ggdb -pg
#LDFLAGS

SOURCES = freq.cpp

all: freq

ebr: $(SOURCES)
	$(CC) $(CPPFLAGS) $(SOURCES) $(LDFLAGS) -o $@

run: freq
	./freq

clean:
	rm -f *.o freq