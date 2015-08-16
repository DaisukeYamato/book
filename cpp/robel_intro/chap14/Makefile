
all: ShortCircuit1 ShortCircuit2 \
     VoidPtr1 VoidPtr2 IfDirective1 \
     VaArg1 Main1 System1 CommandLine1 \
     Exit1 Alignment1 Alignment1b \
     Alignment1c 


.cpp.o:
	g++ -o $@ -c $<

.PHONY: default debug release clean

MYDFLAGS = -O0
MYRFLAGS = -O3

DFLAGS = $(MYDFLAGS)



########################################################
# compile info (.cpp -> .o dependency)

########################################################
# main
ShortCircuit1: ShortCircuit1.o
	g++ -o $@ $<

ShortCircuit2: ShortCircuit2.o
	g++ -o $@ $<

VoidPtr1b: VoidPtr1b.o
	g++ -o $@ $<

VoidPtr1: VoidPtr1.o
	g++ -o $@ $<

VoidPtr2: VoidPtr2.o
	g++ -o $@ $<

IfDirective1: IfDirective1.o
	g++ -o $@ $<

VaArg1: VaArg1.o
	g++ -o $@ $<

Main1: Main1.o
	g++ -o $@ $<

System1: System1.o
	g++ -o $@ $<

CommandLine1: CommandLine1.o
	g++ -o $@ $<

Exit1: Exit1.o
	g++ -o $@ $<

Alignment1: Alignment1.o
	g++ -o $@ $<

Alignment1b: Alignment1b.o
	g++ -o $@ $<

Alignment1c: Alignment1c.o
	g++ -o $@ $<
