#!/bin/bash

echo "🔄 Updating Homebrew..."
brew update
brew upgrade

echo "🔧 Installing developer essentials..."
brew install git zsh wget curl openssl

echo "📦 Installing runtimes & version managers..."
brew install pyenv pipx nvm go jenv

echo "🐳 Installing Docker CLI and App..."
brew install --cask docker

echo "🧠 Installing AI/ML Python tooling..."
pipx ensurepath
pipx install jupyterlab
pipx install ipython
pipx install black
pipx install pandas
pipx install matplotlib
pipx install scikit-learn
pipx install transformers
pipx install huggingface_hub

echo "🧰 Installing CLI productivity tools..."
brew install fzf ripgrep bat exa lsd thefuck zoxide lazygit tldr jq yq tree

echo "🎨 Installing Zsh plugins & themes..."
brew install romkatv/powerlevel10k/powerlevel10k

echo "🧠 Installing dev-focused apps..."
brew install --cask warp
brew install --cask visual-studio-code

echo "✅ Cleaning up..."
brew cleanup

echo "✅ Done! Reload your terminal or run 'source ~/.zshrc'"
