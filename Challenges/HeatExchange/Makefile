# compilation flags
CXX=g++
CXXFLAGS=-std=c++11

# get all files *.cpp
SRCS=$(wildcard *.cpp)
# get the corresponding object file
OBJS=$(SRCS:.cpp=.o)
# get all headers in the working directory
HEADERS=$(wildcard *.hpp)
# executable
EXEC=main

.PHONY = all clean

.DEFAULT_GOAL = all

all: $(EXEC)

$(EXEC): $(OBJS)
	$(CXX) $(CXXFLAGS) -o $@ $^

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $<
	
clean:
	$(RM) $(EXEC) $(OBJS) *~ *.dat






