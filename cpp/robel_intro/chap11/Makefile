all: StaticMember1 StaticMember2 \
     StaticMember2c StaticMember2d \
     Const2 Temporary1 Temporary2

.cpp.o:
	g++ -o $@ -c $<

########################################################
# compile info (.cpp -> .o dependency)

########################################################
# main
StaticMember1: StaticMember1.o Integer.o
	g++ -o $@ StaticMember1.o Integer.o

StaticMember2: StaticMember2.o
	g++ -o $@ $<

StaticMember2c: StaticMember2c.o
	g++ -o $@ $<

StaticMember2d: StaticMember2d.o
	g++ -o $@ $<

Const2: Const2.o
	g++ -o $@ $<

Temporary1: Temporary1.o
	g++ -o $@ $<

Temporary2: Temporary2.o
	g++ -o $@ $<
