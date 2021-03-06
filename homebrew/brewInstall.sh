#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew); then
  echo "Installing Homebrew...";
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
else
  echo "Homebrew is already installed...";
fi


echo "Installing brews from Homebrew..."; echo;
# Install the essential brews
brew install gh
brew install git
brew install zsh
brew install zsh-completions
brew install gpg
brew install azure-cli


echo "Installing apps via Homebrew..."; echo;
# Install essential casks
brew install --cask iterm2
brew install --cask charles
brew install --cask gitkraken
brew install --cask visual-studio-code
brew install --cask jetbrains-toolbox
brew install --cask paw

# Update and Upgrade
echo "Updating and upgrading Homebrew..."; echo;
yes | brew update
yes | brew upgrade

# Remove outdated versions from the cellar
brew cleanup

exit 0
