EXTRA_DIST = \
	production \
	COPYING \
	README.md

xsessiondir = $(datadir)/xsessions

themedir = $(datadir)/icons

install-data-hook:
	$(MKDIR_P) $(DESTDIR)/usr/share/icons
	cp -R production $(DESTDIR)/usr/share/icons/umi-mvx

uninstall-hook:
	test -e $(DESTDIR)/usr/share/icons/umi-mvx && rm -rfv $(DESTDIR)/usr/share/icons/umi-mvx
