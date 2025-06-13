ifndef EXE
	EXE = $(CURDIR)/lc0
endif

all:
	chmod +x ../build.sh
ifdef EVALFILE
	rm /tmp/cutlass -rf; git clone -b 2.11 https://github.com/NVIDIA/cutlass.git /tmp/cutlass && bash ../build.sh -Dcutlass=true -Dcutlass_include=/tmp/cutlass/include -Dembed=true && mv ../build/release/lc0 $(EXE)
	cat $(EVALFILE) >> $(EXE)
	perl -e "printf '%sLc0!', pack('V', -s '$(EVALFILE)')" >> $(EXE)
else
	../build.sh && mv ../build/release/lc0 $(EXE)
endif
	