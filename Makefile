#Makerfile for compiling color.java and Main.java

#Define the Java compiler
JAVAC = javac

#Specify the source files and the default target
SRCS = Color.java Main.java
OBJS = $(SRCS:.java=.class)

#Default target
default: $(OBJS)

#Rule to compile .java files to .class files
%.class: %.java
	$(JAVAC) $<

#Clean target to removed compiled .class files
clean:
	rm -f $(OBJS)
	
