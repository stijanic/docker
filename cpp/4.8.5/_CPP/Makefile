#
# 'make depend' uses makedepend to automatically generate dependencies 
#               (dependencies are added to end of Makefile)
# 'make'        build executable file 'mycc'
# 'make clean'  removes all .o and executable files
#

# define the C++ compiler to use
CXX = g++

# define any compile-time flags
CXXFLAGS = -Wall -g -pg -fprofile-arcs -ftest-coverage

# define any directories containing header files other than /usr/include
#
INCLUDE = #-I/home/newhall/include  -I../include

# define library paths in addition to /usr/lib
#   if I wanted to include libraries not in /usr/lib I'd specify
#   their path using -Lpath, something like:
LFLAGS = #-L/home/newhall/lib  -L../lib -static

# define any libraries to link into executable:
#   if I want to link in libraries (libx.so or libx.a) I use the -llibname 
#   option, something like (this will link in libmylib.so and libm.so:
LIB = #-lmylib -lm

# define the C++ source files
CXXSRC = $(wildcard *.cc)

# define the C++ object files 
#
# This uses Suffix Replacement within a macro:
#   $(name:string1=string2)
#         For each word in 'name' replace 'string1' with 'string2'
# Below we are replacing the suffix .c of all words in the macro CXXSRC
# with the .o suffix
#
CXXOBJ = $(CXXSRC:.cc=.o)

# define the executable files
CXXMAIN = $(subst .cc,,$(wildcard *.cc))

#
# The following part of the makefile is generic; it can be used to 
# build any executable just by changing the definitions above and by
# deleting dependencies appended to the file from 'make depend'
#

.PHONY: depend clean lint cppcheck version

all:	$(CXXMAIN)
	@echo  Programs named: $(CXXMAIN), have been compiled.

.o:	$(CXXOBJ)
	$(CXX) $< -o $@ $(CXXFLAGS) $(LFLAGS) $(LIBS)

# this is a suffix replacement rule for building .o's from .cc's
# it uses automatic variables $<: the name of the prerequisite of
# the rule(a .c file) and $@: the name of the target of the rule (a .o file) 
# (see the gnu make manual section about automatic variables)

.cc:	$(CXXSRC)
	$(CXX) $(CXXFLAGS) $(INCLUDES) -c $< -o $@

clean:
	$(RM) $(CXXOBJ) $(CXXMAIN) *.out *.gcno *.gcda *~

cppcheck:
	cppcheck $(CXXSRC)

# Can't handle multiple mains
lint:
	splint $(CXXSRC)

version:
	$(CXX) --version

depend: $(CXXSRC)
	makedepend $(INCLUDES) $^

# DO NOT DELETE THIS LINE -- make depend needs it
