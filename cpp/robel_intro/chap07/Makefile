all: Constructor3 New3 New4
    # Override2 Override3 Pure1
    #Average1 Average2 Average3 Upcast1 Upcast2 \
    #Override1 Override2

.cpp.o:
	g++ -o $@ -c $<

########################################################
ArrayStream.o: ArrayStream.h ArrayStream.cpp Stream.o
InputStream.o: InputStream.h InputStream.cpp Stream.o
########################################################

Average1: Average1.o
	g++ -o $@ $<

# Average2: Average2.o InputStream.o Stream.o
# 	g++ -o $@ Stream.o InputStream.o  Average2.o

Average2.o: Average2.cpp InputStream.o Stream.o

Average3: Average3.o ArrayStream.o Stream.o
	g++ -o $@ Average3.o ArrayStream.o Stream.o

Average3.o: Average3.cpp ArrayStream.o Stream.o

Stream.o: Stream.cpp Stream.h

Upcast1: Upcast1.o Stream.o InputStream.o
	g++ -o $@ Upcast1.o Stream.o InputStream.o

Upcast2: Upcast2.o Stream.o InputStream.o ArrayStream.o
	g++ -o $@ Upcast2.o Stream.o InputStream.o ArrayStream.o

Override1: Override1.o InputStream.o Stream.o
	g++ -o $@ Override1.o InputStream.o Stream.o

Override2: Override2.o InputStream.o ArrayStream.o Stream.o
	g++ -o $@ Override2.o InputStream.o ArrayStream.o Stream.o

Override3: Override3.o InputStream.o Stream.o
	g++ -o $@ Override3.o InputStream.o Stream.o

Pure1: Pure1.o InputStream.o Stream.o
	g++ -o $@ Pure1.o InputStream.o Stream.o

Constructor3: Constructor3.o InputStream.o Stream.o
	g++ -o $@ Constructor3.o InputStream.o Stream.o

New3: New3.o ArrayStream.o Stream.o
	g++ -o $@ New3.o ArrayStream.o Stream.o

New4: New4.o Stream.o InputStream.o ArrayStream.o
	g++ -o $@ New4.o ArrayStream.o InputStream.o Stream.o

New4.o: New4.cpp InputStream.o ArrayStream.o Stream.o
