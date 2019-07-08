EXTRA_DIST = \
	production \
	COPYING \
	README.md

xsessiondir = $(datadir)/xsessions

themedir = $(datadir)/icons

install-data-hook:
	$(MKDIR_P) $(DESTDIR)/usr/share/icons
	cp -R production $(DESTDIR)/usr/share/icons/umi-mx

uninstall-hook:
	test -e $(DESTDIR)/usr/share/icons/umi-mx && rm -rfv $(DESTDIR)/usr/share/icons/umi-mx

clean-local:
	rm -rf autom4te.cache
	rm aclocal.m4 configure config.log config.status install-sh Makefile Makefile.in missing 

