all: Exception1 Exception1b Exception1e \
    Exception1f Exception1g Exception3 \
    Exception4 Exception4b Exception1h \
    Exception1i Exception5

.cpp.o:
	g++ -o $@ -c $<

########################################################
# compile info (.cpp -> .o dependency)

########################################################
# main
Exception1: Exception1.o
	g++ -o $@ $<

Exception1b: Exception1b.o
	g++ -o $@ $<

Exception1e: Exception1e.o
	g++ -o $@ $<

Exception1f: Exception1f.o
	g++ -o $@ $<

Exception1g: Exception1g.o
	g++ -o $@ $<

Exception3: Exception3.o
	g++ -o $@ $<

Exception4: Exception4.o
	g++ -o $@ $<

Exception4b: Exception4b.o
	g++ -o $@ $<

Exception1h: Exception1h.o Exception.o FileException.o
	g++ -o $@ Exception1h.o Exception.o FileException.o

Exception1i: Exception1i.o Exception.o FileException.o
	g++ -o $@ Exception1i.o Exception.o FileException.o

Exception5: Exception5.o
	g++ -o $@ $<
