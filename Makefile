SCRIPT = skeletor

PREFIX = /usr/local
DESTDIR =
INSTDIR = $(DESTDIR)$(PREFIX)
INSTBIN = $(INSTDIR)/bin

all:
	@echo run \'make install\' to install skeletor
.PHONY: all

install:
	mkdir -p $(INSTDIR)
	mkdir -p $(INSTBIN)
	mkdir -p $(INSTBIN)/skeletor.sh

	install -m 0755 $(SCRIPT) $(INSTBIN)
.PHONY: install

uninstall:
	$(RM) $(INSTBIN)/$(SCRIPT)
.PHONY: uninstall
