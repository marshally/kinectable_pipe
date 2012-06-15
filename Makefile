all: kinectable_pipe

kinectable_pipe:
	g++ src/kinectable_pipe.cpp -O3 -Wno-write-strings -Iliblo-0.26-modified -I/usr/include/ni -lOpenNI -lstdc++ -o kinectable_pipe

clean:
	rm -f kinectable_pipe; make
