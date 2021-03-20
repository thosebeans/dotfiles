install: install-profile install-bashrc

install-profile:
	-./backup.sh $(HOME)/.profile
	-./backup.sh $(HOME)/.bashrc
	ln -sfv $(PWD)/profile $(HOME)/.profile
	ln -sfv $(PWD)/profile $(HOME)/.bash_profile

install-bashrc:
	-./backup.sh $(HOME)/.bashrc
	ln -sfv $(PWD)/bashrc $(HOME)/.bashrc
	ln -sfv $(PWD)/bash_aliases $(HOME)/.bash_aliases
	ln -sfv $(PWD)/bash_functions $(HOME)/.bash_functions
