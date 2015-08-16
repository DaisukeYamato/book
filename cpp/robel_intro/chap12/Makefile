all: BitFlag1 Typedef1 Macro1 Macro1b \
    Macro2 Macro3


.cpp.o:
	g++ -o $@ -c $<

########################################################
# compile info (.cpp -> .o dependency)

########################################################
# main
BitFlag1: BitFlag1.o
	g++ -o $@ $<

Typedef1: Typedef1.o
	g++ -o $@ $<

Macro1: Macro1.o
	g++ -o $@ $<

Macro1b: Macro1b.o
	g++ -o $@ $<

Macro2: Macro2.o
	g++ -o $@ $<

Macro3: Macro3.o
	g++ -o $@ $<
