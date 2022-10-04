#This tells you what you can do
info: 
	@echo "The only thing you can do here: "
	@echo "make fooprog"
	@echo "make clean"

OBJS=foo.o bar.o
CXX=icpc
FLAGS=-g -O2

#This is the link line
fooprog : ${OBJS}
	${CXX} -o $@ ${OBJS}

#template for compilation rule stage
%.o : %.cpp
	${CXX} ${FLAGS} -c $<

#The .o files depend on the header file
${OBJS} : bar.h

#clean the file directory
clean : 
	rm -f *~ fooprog *.o

# the previous line starts wiht a TAB

# C-x 2 vertical 2 panes
# C-x O go to other pane
# ESC % : query replace 
# ESC x replace-string : unconditional replace
# ESC x repl<SPACE>st<SPACE>
