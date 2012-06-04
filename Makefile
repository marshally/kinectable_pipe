all: kinectpipe

kinectpipe:
	g++ src/KinectPipe.cpp -O3 -Wno-write-strings -Iliblo-0.26-modified -I/usr/include/ni -lOpenNI -lstdc++ -o kinectpipe

clean:
	rm -f kinectpipe; make
