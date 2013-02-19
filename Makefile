PREFIX=/usr
BINDIR=$(PREFIX)/bin
SBINDIR=$(PREFIX)/sbin

CC=gcc
INSTALL=ginstall

PROGNAME=calamaris
LIBS=


all:	$(PROGNAME)
distclean:	clean

clean:

install: all
	$(INSTALL) -D $(PROGNAME) $(DESTDIR)$(BINDIR)/$(PROGNAME)

$(PROGNAME):
	$(CC) $(PROGNAME).c -o $(PROGNAME) $(LIBS)
