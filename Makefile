vimrc:
	@cp vimrc ~/.vimrc
	@echo "Applied vimrc settings"

bashrc: 
	@cp bashrc ~/.bashrc_dev
	@grep -iq "source ~/.bashrc_dev" ~/.bashrc || echo 'source ~/.bashrc_dev' >> ~/.bashrc
	@echo "Applied bashrc settings"

apply: vimrc bashrc
