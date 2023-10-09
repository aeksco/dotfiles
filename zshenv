# ~/.zshenv
#
# Global Order: zshenv > [zprofile] > zshrc > [zlogin]

# Use Vim as VISUAL and EDITOR
export PAGER='less -m'
export EDITOR='code'
export VISUAL=$EDITOR

# ensure dotfiles bin directory is loaded first
export PATH="$HOME/bin:$PATH"
export PATH="/Users/alschwa/.local/share/solana/install/active_release/bin:$PATH"

# Local config
[[ -f ~/.zshenv.local ]] && source ~/.zshenv.local
. "$HOME/.cargo/env"
