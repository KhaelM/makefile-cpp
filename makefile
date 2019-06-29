main.o: main.cpp functions.h
	$(CXX) -c $< 

#equivalent to first command
factorial.o: factorial.cpp functions.h
	$(CXX) -c factorial.cpp

hello.o: hello.cpp functions.h
	$(CXX) -c hello.cpp

Application: main.o factorial.o hello.o
	$(CXX) main.o factorial.o hello.o -o $@

all: Application

clean:
	-rm *o

install:
	@echo Should be instruction to install files in correct locations