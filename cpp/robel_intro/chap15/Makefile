all: List1

.cpp.o:
	g++ -o $@ -c $<

#.PHONY: default debug release clean

MYDFLAGS = -O0
MYRFLAGS = -O3

DFLAGS = $(MYDFLAGS)


########################################################
# compile info (.cpp -> .o dependency)

########################################################
# main
List1: List1.o TaskManager.o
	g++ -o $@ $< TaskManager.o
