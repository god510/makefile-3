LIBPREFIX=lib
LIBPOSTFIX=.a
DLLPREFIX=lib
DLLPOSTFIX=.sl

DLL_COMPILER_FLAG=+z
DLL_LINKER_FLAG=-AA -mt -b -D_REENTRANT -D_INCLUDE_LONGLONG
ARFLAGS=-rs
CXXFLAGS+=-AA -mt -g -D_REENTRANT -D_INCLUDE_LONGLONG -w
release: CXXFLAGS+=-AA -mt -O -D_REENTRANT -D_INCLUDE_LONGLONG -w
LDFLAGS=-AA -mt -Wl,+s -Wl,+as,exec_magic -Wl,-N -D_REENTRANT -D_INCLUDE_LONGLONG
DEPENDENCYFLAG=0
DFLAGS=-AA +make -E

