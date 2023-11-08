CC = gcc
CFLAGS = -Iinclude -Llib -Llib/mysql -lmysql -lws2_32 -lwsock32 -lsecur32

BIN = bin/
SRC = src/
OBJS = $(BIN)main.o  
PROJECT_NAME = pruebamysql

all : $(PROJECT_NAME) clean 

$(PROJECT_NAME) : $(OBJS)
	$(CC) -o $(BIN)$(PROJECT_NAME) $(OBJS) $(CFLAGS) 

$(BIN)main.o : $(SRC)main.c
	$(CC) -c -o $(BIN)main.o $(SRC)main.c $(CFLAGS)



.PHONY : clean
clean : 
	rm -f $(BIN)*.o