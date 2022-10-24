all:
	nvcc -O3 matrix_cuda.cu -o ./matrix-cuda

clean:
	rm -f ./matrix-cuda
