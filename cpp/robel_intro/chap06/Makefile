all: Class1b Constructor1 Constructor2 \
    Destructor1 Class2 Copy1 \
    Operator1

.cpp.o:
	g++ -o $@ -c $<

Class1b: Class1b.o
	g++ -o $@ $<

Constructor1: Constructor1.o
	g++ -o $@ $<

Constructor2: Constructor2.o
	g++ -o $@ $<

Destructor1: Destructor1.o
	g++ -o $@ $<

Class2: Class2.o test.o
	g++ -o $@ Class2.o test.o

Copy1: Copy1.o IntArray.o
	g++ -o $@ Copy1.o IntArray.o

Operator1: Operator1.o IntArray.o
	g++ -o $@ Operator1.o IntArray.o
