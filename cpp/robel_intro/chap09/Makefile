all: Template1 Template1b Template2 \
    Template3 ClassTemplate1 Template5 \
    Vector1 Vector2

.cpp.o:
	g++ -o $@ -c $<

########################################################
# compile info (.cpp -> .o dependency)

########################################################
# main
Template1: Template1.o
	g++ -o $@ $<

Template1b: Template1b.o
	g++ -o $@ $<

Template2: Template2.o
	g++ -o $@ $<

Template3: Template3.o
	g++ -o $@ $<

ClassTemplate1: ClassTemplate1.o
	g++ -o $@ $<

Template5: Template5.o
	g++ -o $@ $<

Vector1: Vector1.o
	g++ -o $@ $<

Vector2: Vector2.o
	g++ -o $@ $<


