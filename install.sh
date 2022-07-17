#########################################################################
# File Name: install.sh
# Author: mkDlufop
# mail: mkDlufopqq.com
#########################################################################
#!/bin/bash

# install vim's configurations
sudo ln -sf ~/.dotfiles/vim/vimrc /usr/share/vim/vimrc
if [[ $? -eq 0 ]]; then 
	echo ""
	echo -e "Vim's configurations is installed \e[32msuccessfully!\e[0m"
	echo ""
