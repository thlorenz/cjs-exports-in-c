CC=gcc
CFLAGS=-c -Wall
LDFLAGS=
SOURCES=main.c $(wildcard lib/*.c)
OBJECTS=$(SOURCES:.c=.o)
EXECUTABLE=main

.phony: all clean

start: all
	./main
all: clean $(SOURCES) $(EXECUTABLE)
clean: 
	rm -rf $(EXECUTABLE)
	rm -rf $(OBJECTS)
	
$(EXECUTABLE): $(OBJECTS) 
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.c.o:
	$(CC) $(CFLAGS) $< -o $@
