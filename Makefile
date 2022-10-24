.PHONY: all build push

SUDO := ""

ifeq ($(shell uname -s),Linux)
	SUDO := "sudo"
endif

all: matrix_cuda.cu
	nvcc -O3 matrix_cuda.cu -o ./matrix-cuda

build:
	$(SUDO) docker build -t justin0u0/matrix-cuda:latest .

push:
	$(SUDO) docker push justin0u0/matrix-cuda:latest

clean:
	rm -f ./matrix-cuda
