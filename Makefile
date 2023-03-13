#Makefile - Operating Systems Unix Shell
#Targets and what they do:
#UnixShell creates the executable
#*.o targets compile .cpp and .h files into an o file
#clean removes all files and executables

CXXSOURCE = main.o shelpers.o
HEADERS = shelpers.hpp
CXXFLAGS = --std=c++14
COMPILER = c++
COMPILEOPTS = -c
LINKINGOPTS = -o

UnixShell: $(CXXSOURCE)
	$(COMPILER) $(CXXFLAGS) $(LINKINGOPTS) UnixShell $(CXXSOURCE) -lreadline

.PHONY: clean

run: UnixShell
	./UnixShell

main.o: main.cpp $(HEADERS)
	$(COMPILER) $(CXXFLAGS) $(COMPILEOPTS) main.cpp

shelpers.o: shelpers.cpp $(HEADERS)
	$(COMPILER) $(CXXFLAGS) $(COMPILEOPTS) shelpers.cpp

clean:
	rm -rf *.o UnixShell
