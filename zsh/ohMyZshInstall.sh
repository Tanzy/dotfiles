

if [ -d ~/.oh-my-zsh ]; then
	echo "oh-my-zsh is installed"
 else

 	echo "oh-my-zsh is not installed so installing it"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended --keep-zshrc

    #cd $DOTFILES
fi

# Install Powerlevel 10K
if [ -d ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k/ ]; then
    echo "Powerlevel10K installed"
 else
    echo "Powerlevel10K not installed@"
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
fi

# Install zsh-nvm plugin
if [ -d ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-nvm/ ]; then
    echo "zsh-nvm installed"
 else
    echo "zsh-nvm not installed@"
    git clone https://github.com/lukechilds/zsh-nvm ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-nvm
fi

# Install zsh-nvm plugin
if [ -d ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions/ ]; then
    echo "zsh-nvm installed"
 else
    echo "zsh-nvm not installed@"
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
fi


