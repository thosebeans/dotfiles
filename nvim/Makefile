CONFDIR = $(HOME)/.config/nvim
PLUGURL = "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
SUMMERFRUITURL = "https://www.vim.org/scripts/download_script.php?src_id=10153"

install: install-init.vim \
		 install-UltiSnips \
		 install-ftplugin \
		 install-plug \
		 install-summerfruit256

install-init.vim:
	mkdir -p $(CONFDIR)
	ln -sfv $(PWD)/init.vim $(CONFDIR)/init.vim

install-UltiSnips:
	mkdir -p $(CONFDIR)
	ln -sfv $(PWD)/UltiSnips $(CONFDIR)/UltiSnips

install-ftplugin:
	mkdir -p $(CONFDIR)/after
	ln -sfv $(PWD)/ftplugin $(CONFDIR)/after/ftplugin

install-plug:
	mkdir -p $(CONFDIR)/autoload
	./download.sh "$(PLUGURL)" $(CONFDIR)/autoload/plug.vim

install-summerfruit256:
	mkdir -p $(CONFDIR)/colors
	./download.sh "$(SUMMERFRUITURL)" $(CONFDIR)/colors/summerfruit256.vim
