all: MultipleInherit1 MultipleInherit2 \
    MultipleInherit3 VirtualInherit1b \
    VirtualInherit1 VirtualInherit2 \
    VirtualInherit3 Interface1 \
    Typeinfo1 Typeinfo2 DynamicCast1 \
    Friend1 Friend1b Using1 Using2 \
    Template6 Specialization1 \
    Specialization2 FuncPtr1 \
    MemFuncPtr1 MemFuncPtr2 MemFuncPtr3 \
    DataMemPtr1

.cpp.o:
	g++ -o $@ -c $<

########################################################
# compile info (.cpp -> .o dependency)

########################################################
# main
MultipleInherit1: MultipleInherit1.o
	g++ -o $@ $<

MultipleInherit2: MultipleInherit2.o
	g++ -o $@ $<

MultipleInherit3: MultipleInherit3.o
	g++ -o $@ $<

VirtualInherit1b: VirtualInherit1b.o
	g++ -o $@ $<

VirtualInherit1: VirtualInherit1.o
	g++ -o $@ $<

VirtualInherit2: VirtualInherit2.o
	g++ -o $@ $<

VirtualInherit3: VirtualInherit3.o
	g++ -o $@ $<

Interface1: Interface1.o
	g++ -o $@ $<

Typeinfo1: Typeinfo1.o
	g++ -o $@ $<

Typeinfo2: Typeinfo2.o
	g++ -o $@ $<

DynamicCast1: DynamicCast1.o
	g++ -o $@ $<

Friend1: Friend1.o
	g++ -o $@ $<

Friend1b: Friend1b.o Value.o ValueFactory.o
	g++ -o $@ Friend1b.o Value.o ValueFactory.o

Using1: Using1.o
	g++ -o $@ $<

Using2: Using2.o
	g++ -o $@ $<

Template6: Template6.o
	g++ -o $@ $<

Specialization1: Specialization1.o
	g++ -o $@ $<

Specialization2: Specialization2.o
	g++ -o $@ $<

FuncPtr1: FuncPtr1.o
	g++ -o $@ $<

MemFuncPtr1: MemFuncPtr1.o
	g++ -o $@ $<

MemFuncPtr2: MemFuncPtr2.o
	g++ -o $@ $<

MemFuncPtr3: MemFuncPtr3.o
	g++ -o $@ $<

DataMemPtr1: DataMemPtr1.o
	g++ -o $@ $<
