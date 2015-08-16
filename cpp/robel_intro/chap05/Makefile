all: Array4 Struct1 Struct1b Enum1 CondOp1\
    Default1 Static1 Redef1 Internal \
    Enum1b Escape1 New1 New1b New2

.cpp.o:
	g++ -o $@ -c $<

Array4: Array4.cpp
	g++ -o $@ $<

Struct1: Struct1.cpp
	g++ -o $@ $<

Struct1b: Struct1b.cpp
	g++ -o $@ $<

Enum1: Enum1.cpp
	g++ -o $@ $<

CondOp1: CondOp1.cpp
	g++ -o $@ $<

Default1: Default1.cpp
	g++ -o $@ $<

Static1: Static1.cpp
	g++ -o $@ $<

Redef1: Redef1.cpp Redef1.h
	g++ -o $@ $<

Internal: Internal1.o Internal2.o
	g++ -o $@ Internal1.o Internal2.o

#Internal1.o: Internal1.cpp
#	g++ -c $<

#Internal2.o: Internal2.cpp
#	g++ -c $<

Enum1b: Enum1b.o
	g++ -o $@ $<

Escape1: Escape1.o
	g++ -o $@ $<

New1: New1.o
	g++ -o $@ $<

New1b: New1b.o
	g++ -o $@ $<

New2: New2.o
	g++ -o $@ $<
