# This is a basic Makefile.
# Adjust all parameters to suit.
#
#
#
#
# Firstly define which compiler is to be used:
# gcc for C, or g++ for C++
#

CC=gcc


# Now enter any required compiler flags such as:
# -g		adds debugging information to the executable file
# -Wall		turns on compiler warnings

CFLAGS=-g -Wall


# Now define any additional directories that contain header files
# other than those dound in /usr/include

INCLUDES=-I/opt/vc/include -I/opt/vc/include/interface/vmcs_host/linux\
				 -I/opt/vc/include/interface/vcos/pthreads


# Now define library paths in addition to the standard /usr/lib

LFLAGS=


# Now define any additional libraries to link to the executable, for example: -
# -lm -lasound

LIBS=-lshapes


# Now name the target executable. That is, the name of the output file.
# This needs to be the same as the input file but without the ".c".

TARGET=hello-world-OpenVG

# The following processes the above information and should NOT be altered: -

all: $(TARGET)

$(TARGET): $(TARGET).c
	$(CC) $(FLAGS) $(INCLUDES) $(TARGET).c -o $(TARGET) $(LIBS)

clean:
	$(RM) $(TARGET)
