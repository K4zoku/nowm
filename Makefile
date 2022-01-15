PREFIX ?= /usr/local
MANDIR ?= $(PREFIX)/share/man

BIN1   ?= nowm
BIN2   ?= nowmc


install:
	@mkdir -p $(PREFIX)/bin
	@mkdir -p $(MANDIR)/man1

	@cp -p bin/$(BIN1)   $(PREFIX)/bin/
	@cp -p bin/$(BIN2)   $(PREFIX)/bin/
	@cp -p man/$(BIN1).1 $(MANDIR)/man1/
	@cp -p man/$(BIN2).1 $(MANDIR)/man1/

	@chmod 755 $(PREFIX)/bin/$(BIN1)
	@chmod 755 $(PREFIX)/bin/$(BIN2)


uninstall:
	@rm -rf $(PREFIX)/bin/$(BIN1)
	@rm -rf $(PREFIX)/bin/$(BIN2)
	@rm -rf $(MANDIR)/man1/$(BIN1).1*
	@rm -rf $(MANDIR)/man1/$(BIN2).1*
