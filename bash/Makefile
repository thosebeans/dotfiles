install: install-profile install-bashrc

install-profile:
	-./backup.sh $(HOME)/.profile
	ln -sfv $(PWD)/profile $(HOME)/.profile
	ln -sfv $(PWD)/profile $(HOME)/.bash_profile

install-bashrc:
	-./backup.sh $(HOME)/.bashrc
	ln -sfv $(PWD)/bashrc $(HOME)/.bashrc
	-./backup.sh $(HOME)/.bash_aliases
	ln -sfv $(PWD)/bash_aliases $(HOME)/.bash_aliases
