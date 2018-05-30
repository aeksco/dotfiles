echo "\nSetting up GIT, ZSH, VIM, TMUX..."

# Copies .dotfiles
sudo cp -r ~/dotfiles ~/.dotfiles

# ZSH Plugins
sudo git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
mv ./zsh-syntax-highlighting ~/.dotfiles/zsh-syntax-highlighting

# ZSH Autocomplete
sudo git clone https://github.com/zsh-users/zsh-history-substring-search

# TMUX Ressursct
# sudo git clone https://github.com/tmux-plugins/tmux-resurrect ./tmux/

# Copies .zshrc, .zshenv
cp ~/dotfiles/zshrc ~/.zshrc
cp ~/dotfiles/zshenv ~/.zshenv

# Copies .vimrc
cp ~/dotfiles/vimrc ~/.vimrc

# Copies .gitconfig.local, .gitconfig, .gitmessage
cp ~/dotfiles/gitconfig.local ~/.gitconfig.local
cp ~/dotfiles/gitconfig ~/.gitconfig
cp ~/dotfiles/gitmessage ~/.gitmessage

# Copies .tmux.conf
cp ~/dotfiles/tmux.conf ~/.tmux.conf
