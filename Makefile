PREFIX  ?= /usr/local
DESKTOP ?= /usr/share/xsessions
MANDIR  ?= $(PREFIX)/share/man
BIN     ?= nowm

install:
	@echo "Installing $(BIN) to $(PREFIX)/bin"
	@mkdir -p $(PREFIX)/bin
	@cp -p src/$(BIN) $(PREFIX)/bin/
	@chmod 755 $(PREFIX)/bin/$(BIN)
	
	@echo "Installing $(BIN).1 to $(MANDIR)/man1"
	@mkdir -p $(MANDIR)/man1
	@cp -p src/$(BIN).1 $(MANDIR)/man1/
	
	@echo "Installing $(BIN).desktop to $(DESKTOP)"
	@mkdir -p $(DESKTOP)
	@cp -p src/$(BIN).desktop $(DESKTOP)/


uninstall:
	@rm -rf $(PREFIX)/bin/$(BIN)
	@rm -rf $(MANDIR)/man1/$(BIN).1*
	@rm -rf $(DESKTOP)/$(BIN).desktop
	@echo "Uninstalled $(BIN)"
