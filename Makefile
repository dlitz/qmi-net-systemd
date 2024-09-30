DESTDIR ?= tmp/output
INSTALL ?= install

all:

clean:

mrproper: clean
	rm -rf tmp/output
	-rmdir --ignore-fail-on-non-empty --parents tmp

install:
	umask 022
	mkdir -p $(DESTDIR)/usr/lib/udev/rules.d
	cp -t $(DESTDIR)/usr/lib/udev/rules.d \
		77-qmi-net-systemd-modems.rules \
		80-qmi-net-systemd.rules

	mkdir -p $(DESTDIR)/usr/lib/systemd/system
	cp -t $(DESTDIR)/usr/lib/systemd/system \
		qmi-proxy.service \
		qmi-net-systemd@.service

.PHONY: all install clean
