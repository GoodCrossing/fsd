
CC	= gcc
CXX	= c++
CFLAGS	= -O2 -Wno-write-strings
CPPFLAGS = -Wno-write-strings
CXXFLAGS = -O2 -Wno-write-strings
DEFS	=   
LIBS	= -lnsl -lm  -static

OBJS	= main.o support.o manage.o interface.o servinterface.o clinterface.o \
          sysinterface.o fsd.o cluser.o user.o servuser.o wprofile.o server.o \
          client.o sysuser.o certificate.o mm.o process.o config.o \
	  authenticate.o

all: clean ../unix/fsd

../unix/fsd : $(OBJS)
	$(CXX) $(CFLAGS) $(OBJS) ${LIBS} -o ../unix/fsd

.cpp.o :
	$(CXX) $(CXXFLAGS) ${CPPFLAGS} ${DEFS} -c $<

.c.o:
	$(CC) $(CFLAGS) ${CPPFLAGS} ${DEFS} -c $<

install: all
	${INSTALL} -c -m 555 fsd ${SBINDIR}

clean :
	rm -f ${OBJS}
dev : clean $(OBJS)
	$(CXX) $(CFLAGS) $(OBJS) ${LIBS} -o ../dev/fsd
