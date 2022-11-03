#########################################################################
# File Name: install.sh
# Author: mkDlufop
# mail: mkdlufop@qq.com
#########################################################################
#!/bin/bash

# print successful message
echoSuccessMsg() {
	if [[ $? -eq 0 ]]; then 
		echo ""
		echo -e "$1's configurations is installed \e[32msuccessfully!\e[0m"
		echo ""
	fi
}

# install vim's configurations
sudo ln -sf ~/.dotfiles/vim/vimrc /usr/share/vim/vimrc
echoSuccessMsg Vim

# install tmux's configurations
sudo ln -sf ~/.dotfiles/tmux/.tmux.conf ~/.tmux.conf
echoSuccessMsg Tmux

# install tpm
sudo apt install git
mkdir -p ~/.tmux/plugins && cd ~/.tmux/plugins && git clone https://github.com/tmux-plugins/tpm
echoSuccessMsg tpm

# install oh-my-zsh's configurations
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
sed -i '/plugins=(git/s/)/ zsh-syntax-highlighting)/' ~/.zshrc
echoSuccessMsg zsh-syntax-highlighting

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
sed -i '/plugins=(git/s/)/ zsh-autosuggestions)/' ~/.zshrc
echoSuccessMsg zsh-autosuggestions

source ~/.zshrc
