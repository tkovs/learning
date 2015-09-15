CC = g++
FLAGS = -Wall -c
OUTPUT = objects

all: main	

principal.o: src/principal.cpp include/principal.hpp
	$(CC) $(FLAGS) src/principal.cpp -o $(OUTPUT)/principal.o

placar.o: src/placar.cpp include/placar.hpp
	$(CC) $(FLAGS) src/placar.cpp -o $(OUTPUT)/placar.o

menormaior.o: src/menormaior.cpp include/menormaior.hpp
	$(CC) $(FLAGS) src/menormaior.cpp -o $(OUTPUT)/menormaior.o

main.o: main.cpp
	$(CC) $(FLAGS) main.cpp -o $(OUTPUT)/main.o

main: principal.o placar.o menormaior.o main.o
	$(CC) $(OUTPUT)/*.o -o main.out

clean:
	-rm -f $(OUTPUT)/*.o main.out
