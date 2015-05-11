all:

install:
	install -m 644 -D devel_beli_sk.gpg $(DESTDIR)/etc/apt/trusted.gpg.d/devel_beli_sk.gpg
	install -m 755 -D dsl-repoconfig $(DESTDIR)/usr/sbin/dsl-repoconfig
