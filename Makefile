CXX = g++
CXXFLAGS = -Wall -Wextra -std=c++11

TARGET = calculator
LIB = libcalculator.a

all: $(LIB) $(TARGET)

$(LIB): calculator.o
	ar rcs $(LIB) calculator.o

calculator.o: calculator.cpp calculator.h
	g++ $(CXXFLAGS) -c calculator.cpp -o calculator.o

$(TARGET): main.o $(LIB)
	g++ $(CXXFLAGS) main.o -L. -lcalculator -o $(TARGET)

main.o: main.cpp calculator.h
	g++ $(CXXFLAGS) -c main.cpp -o main.o

clean:
	rm -f *.o $(LIB) $(TARGET)
