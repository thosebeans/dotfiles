CONFDIR = $(HOME)/.config/i3

install: install-i3 install-i3status

install-i3:
	mkdir -p $(CONFDIR)
	ln -sfv $(PWD)/i3config $(CONFDIR)/config

install-i3status:
	mkdir -p $(CONFDIR)status
	ln -sfv $(PWD)/i3statusconfig $(CONFDIR)status/config
