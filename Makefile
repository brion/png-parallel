CXXFLAGS =	-O3 -g -Wall -fmessage-length=0 -fopenmp -I/usr/include/ImageMagick-6

OBJS =		pngencoder.o PNGParallel.o

LIBS =	 -lboost_program_options -lMagick++-6.Q16 -lpng -lz -lgomp

TARGET =	pngencoder

$(TARGET):	$(OBJS)
	$(CXX) -o $(TARGET) $(OBJS) $(LIBS)

all:	$(TARGET)

clean:
	rm -f $(OBJS) $(TARGET)
