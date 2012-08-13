all: kinectable_pipe

kinectable_pipe:
	g++ src/kinectable_pipe.cpp -O3 -Wno-write-strings -Iliblo-0.26-modified -I/usr/include/ni -I/usr/X11/include/libpng15 -L/usr/X11/lib -lpng15 -lOpenNI -lstdc++ -o kinectable_pipe

clean:
	rm -f kinectable_pipe; make
