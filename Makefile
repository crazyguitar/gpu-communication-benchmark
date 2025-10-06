.PHONY: all

all:

sqush:
	./enroot.sh -n gpucomm -f ${PWD}/Dockerfile
