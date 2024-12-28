ifndef EXE
	EXE = lc0
endif

all:
	rm /tmp/cutlass -rf; git clone -b 2.11 https://github.com/NVIDIA/cutlass.git /tmp/cutlass && bash build.sh -Dcutlass=true -Dcutlass_include=/tmp/cutlass/include && mv build/release/lc0 $(EXE)