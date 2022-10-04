#This tells you what you can do
info: 
	@echo "The only thing you can do here: "
	@echo "make mainfunc"
	@echo "make clean"

OBJS=mainfunc.o functions.o
CXX=icpc
FLAGS=-g -O2

#This is the link line
mainfunc : ${OBJS}
	${CXX} -o $@ ${OBJS}

#template for compilation rule stage
%.o : %.cpp
	${CXX} ${FLAGS} -c $<

#The .o files depend on the header file
${OBJS} : func.h

#clean the file directory
clean : 
	rm -f *~ mainfunc *.o

# the previous line starts wiht a TAB

# C-x 2 vertical 2 panes
# C-x O go to other pane
# ESC % : query replace 
# ESC x replace-string : unconditional replace
# ESC x repl<SPACE>st<SPACE>
