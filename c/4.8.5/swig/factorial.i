/* File: factorial.i */
%module factorial
%{
     #define SWIG_FILE_WITH_INIT
     #include "factorial.h"
%}
%include "factorial.h"
