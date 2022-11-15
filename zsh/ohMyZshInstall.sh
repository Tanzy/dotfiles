

if [ -d ~/.oh-my-zsh ]; then
	echo "oh-my-zsh is installed"
 else

 	echo "oh-my-zsh is not installed so installing it"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended --keep-zshrc

fi

# Install zsh-nvm plugin
if [ -d ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-nvm/ ]; then
    echo "zsh-nvm installed"
 else
    echo "zsh-nvm not installed@"
    git clone https://github.com/lukechilds/zsh-nvm ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-nvm
fi

# Install zsh-autosuggestion plugin
if [ -d ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions/ ]; then
    echo "zsh-autosuggestion installed"
 else
    echo "zsh-autosuggestion not installed@"
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
fi

# Install zsh-syntax-highlighting plugin
if [ -d ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting/ ]; then
    echo "zsh-syntax-highlighting installed"
 else
    echo "zsh-syntax-highlighting not installed@"
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
fi


