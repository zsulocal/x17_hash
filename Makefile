CC=gcc
CFLAGS=-I. -fPIC
OBJ=obj
SRC=sha3
TARGET=libx17_hash.so

SOURCES := $(wildcard $(SRC)/*.c)
SOURCES := $(filter-out sha3/md_helper.c, $(SOURCES))
OBJS :=  $(patsubst $(SRC)/%.c, $(OBJ)/%.o, $(SOURCES)) $(OBJ)/x17.o


$(TARGET): $(OBJS) 
	$(CC) -o $@ $^ $(CFLAGS) -shared 
	cp $@ /usr/lib

$(OBJ)/%.o: $(SRC)/%.c | $(OBJ)
	$(CC) -c -o $@ $< $(CFLAGS)

$(OBJ):
	mkdir obj

$(OBJ)/x17.o: x17.c
	$(CC) -c -o $@ $< $(CFLAGS)

.PHONY: clean
clean:
	rm -Rf $(OBJ) *.so 

