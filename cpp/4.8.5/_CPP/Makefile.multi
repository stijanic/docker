#
# 'make depend' uses makedepend to automatically generate dependencies
#               (dependencies are added to end of Makefile)
# 'make'        build executable file 'mycpp'
# 'make clean'  removes all .o and executable files
#

# define the C++ compiler to use
CXX = g++

# define any directories containing header files other than /usr/include
#
INCDIRS = ./include #/home/newhall/include ../include

INCS = $(foreach DIR,$(INCDIRS),$(wildcard $(DIR)/*.h))

# define any compile-time flags
CXXFLAGS = -Wall -g -pg -fprofile-arcs -ftest-coverage $(foreach DIR,$(INCDIRS),-I$(DIR))

# define library paths in addition to /usr/lib
#   if I wanted to include libraries not in /usr/lib I'd specify
#   their path using -Lpath, something like:
LDFLAGS = -g -pg -fprofile-arcs -ftest-coverage #-L/home/newhall/lib -L../lib -static

# define any libraries to link into executable:
#   if I want to link in libraries (libx.so or libx.a) I use the -llibname
#   option, something like (this will link in libmylib.so and libm.so:
LDLIBS = #-lmylib -lm

# define the C++ source files
SRCS = $(wildcard *.cpp)

# define the C++ object files
OBJS = $(subst .cpp,.o,$(wildcard *.cpp))

# define the executable files
MAINS = $(subst .cpp,,$(wildcard *.cpp))

#
# The following part of the makefile is generic; it can be used to
# build any executable just by changing the definitions above and by
# deleting dependencies appended to the file from 'make depend'
#

.PHONY: depend clean cppcheck version

all: $(MAINS) $(OBJS)
	@echo  Programs named: $(MAINS), have been compiled.

%: %.o
	$(CXX) $(LDFLAGS) $< -o $@ $(LDLIBS)

# this is a pattern replacement rule for building .o's from .cpp's
# it uses automatic variables $<: the name of the prerequisite of
# the rule(a .cpp file) and $@: the name of the target of the rule (a .o file)
# (see the gnu make manual section about automatic variables)
%.o: %.cpp $(INCS)
	$(CXX) $(CXXFLAGS) -c $< -o $@
	
clean:
	$(RM) $(MAINS) $(OBJS) *.out *.gcda *.gcno gmon.out perf.data *~

cppcheck:
	cppcheck $(SRCS)

version:
	$(CXX) --version

depend: $(SRCS)
	makedepend $(foreach DIR,$(INCDIRS),-I$(DIR)) $^

# DO NOT DELETE THIS LINE -- make depend needs it
