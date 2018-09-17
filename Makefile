LIBS = -lm -ljpeg -pthread -levent
CC = gcc
CFLAGS = -c -O3 -Wall -Wextra
LDFLAGS =
SOURCES = $(shell ls src/*.c)
OBJECTS = $(SOURCES:.c=.o)
PROG = ustreamer


all: $(SOURCES) $(PROG)


$(PROG): $(OBJECTS)
	$(CC) $(LIBS) $(LDFLAGS) $(OBJECTS) -o $@


.c.o:
	$(CC) $(LIBS) $(CFLAGS) $< -o $@


clean:
	rm -f src/*.o $(PROG)
