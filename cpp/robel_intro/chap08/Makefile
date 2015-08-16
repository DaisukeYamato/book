all: String3 String4 StringStream1 StringStream2 \
    File1 File2 File3 File3b File4 File5 \
    File5b File6 Input2 Namespace1 \
    Namespace2 Namespace3 Namespace4
.cpp.o:
	g++ -o $@ -c $<

########################################################
# compile info (.cpp -> .o dependency)

########################################################
# main
String3: String3.o
	g++ -o $@ $<

String4: String4.o
	g++ -o $@ $<

StringStream1: StringStream1.o
	g++ -o $@ $<

StringStream2: StringStream2.o
	g++ -o $@ $<

File1: File1.o
	g++ -o $@ $<

File2: File2.o
	g++ -o $@ $<

File3: File3.o
	g++ -o $@ $<

File3b: File3b.o
	g++ -o $@ $<

File4: File4.o
	g++ -o $@ $<

File5: File5.o
	g++ -o $@ $<

File5b: File5b.o
	g++ -o $@ $<

File6: File6.o
	g++ -o $@ $<

Input2: Input2.o
	g++ -o $@ $<

Namespace1: Namespace1.o
	g++ -o $@ $<

Namespace2: Namespace2.o
	g++ -o $@ $<

Namespace3: Namespace3.o
	g++ -o $@ $<

Namespace4: Namespace4.o
	g++ -o $@ $<
