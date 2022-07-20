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

# install tmux's configurations
sudo ln -sf ~/.dotfiles/tmux/.tmux.conf ~/.tmux.conf
if [[ $? -eq 0 ]]; then 
	echo ""
	echo -e "Tmux's configurations is installed \e[32msuccessfully!\e[0m"
	echo ""

# install tpm
sudo apt install git
mkdir -p ~/.tmux/plugins && cd ~/.tmux/plugins && git clone https://github.com/tmux-plugins/tpm
if [[ $? -eq 0 ]]; then 
	echo ""
	echo -e "tpm is installed \e[32msuccessfully!\e[0m"
	echo ""
