CODENAME = $(shell lsb_release -sc)

all: dsl.list devel_beli_sk.gpg

dsl.list: dsl.list.in
	sed -e s/%codename%/$(CODENAME)/g dsl.list.in > dsl.list

install:
	install -m 644 -D devel_beli_sk.gpg $(DESTDIR)/etc/apt/trusted.gpg.d/devel_beli_sk.gpg
	install -m 644 -D dsl.list $(DESTDIR)/etc/apt/sources.list.d/dsl.list

clean:
	[ -f dsl.list ] && rm dsl.list || true
