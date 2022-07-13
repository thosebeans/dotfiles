CONFDIR = $(HOME)/.config/nvim
PLUGURL = "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"

install: install-nvim \
	install-plug

install-nvim:
	mkdir -p "$(CONFDIR)"
	find "$$(pwd)/nvim" -mindepth 1 -maxdepth 1 -exec 'ln' '-sfv' '{}' '$(CONFDIR)/' ';'

install-plug:
	mkdir -p $(CONFDIR)/autoload
	./download.sh "$(PLUGURL)" $(CONFDIR)/autoload/plug.vim
