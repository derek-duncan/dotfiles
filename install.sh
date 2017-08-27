#!/bin/sh

echo "Setting up your Mac..."

# Check for Homebrew and install if we don't have it
echo "Installing Homebrew..."
if [ ! $(which brew) ]; then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew recipies
echo "Updating Homebrew packages..."
brew update

# Install all our dependencies with bundle (See Brewfile)
echo "Installing Homebrew packages..."
brew tap homebrew/bundle
brew bundle

# Make ZSH the default shell environment
echo "Configuring ZSH..."
chsh -s $(which zsh)

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

ln -s $(pwd)/.zshrc $HOME

echo "Configuring yarn..."
echo "workspaces-experimental true" >> ~/.yarnrc

# Create ~/code directory
echo "Creating ~/code directory..."
mkdir $HOME/code

echo "Configuring Neovim..."
# Installing python support for neovim
pip3 install --user neovim

# Check in ~/.config directory exists
if [ ! -d $HOME/.config ]; then
	mkdir $HOME/.config
fi

# Install my nvim config
git clone https://github.com/derek-duncan/nvim.git $HOME/.config/nvim

echo "Configuring tmux..."
ln -s $(pwd)/.tmux.conf $HOME

echo "Configuring karabiner..."
ln -s $(pwd)/karabiner.json $HOME/.config/karabiner

# Install hex
echo "Installing hex..."
mix local.hex

# Install Phoenix
echo "Installing Phoenix..."
mix archive.install https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez

echo "Downloading common fonts..."
(cd $HOME && git clone https://github.com/ryanoasis/nerd-fonts)

echo "Done. Enjoy!"
