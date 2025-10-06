.PHONY: all clean build

all: build

build:
	./build.sh

sqush:
	./enroot.sh -n gpucomm -f ${PWD}/Dockerfile

clean:
	rm -rf build/
