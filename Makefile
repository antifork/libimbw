PLUGINS  =  recvicmp recvtcp recvudp sendicmp sendtcp sendudp
LIBNAME  = imbw
VERSION  = 2.9

all: imbw


imbw:
	make -C src
	./mkinstalldirs libimbw

	cp src/imbw.a include/imbw.h ./libimbw-config libimbw
	@echo
	@echo "  [1mlibimbw/ contains everything you'll need:[0;10m"
	@echo
	@ls -1 libimbw/
	@echo
	@echo '  [1mhave fun![0;10m'
	@echo

distro: distclean
	./shtool fixperm ./
	cd .. && tar cvfz lib$(LIBNAME)-$(VERSION).tar.gz \
	./lib$(LIBNAME)-$(VERSION) --exclude CVS && \
	mv lib$(LIBNAME)-$(VERSION).tar.gz ./lib$(LIBNAME)-$(VERSION)/ && \
	cd lib$(LIBNAME)-$(VERSION)


distclean: clean
	make distclean -C src

	rm -f config.cache config.status libimbw-checkv libimbw-config include/config.h 
	rm -f lib$(LIBNAME)-*.tar.gz Makefile
	rm -f *.log

clean:
	make clean -C src
	make clean -C itools
	rm -rf libimbw

