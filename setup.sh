echo "\nSetting up GIT, ZSH, VIM, TMUX..."

# ZSH Plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ./zsh/plugins

# ZSH Autocomplete
git clone https://github.com/zsh-users/zsh-history-substring-search ./zsh/plugins

# TMUX Ressursct
git clone https://github.com/tmux-plugins/tmux-resurrect ./tmux/plugins/tmux-resurrect

# PGP Setup
# https://gist.github.com/troyfontaine/18c9146295168ee9ca2b30c00bd1b41e
# brew install gpg2 gnupg pinentry-mac
# git config --global commit.gpgsign true
# git config --global user.singingkey KEY_GOES_HERE