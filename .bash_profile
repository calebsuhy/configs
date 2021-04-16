source "$HOME/.vim/plugged/gruvbox/gruvbox_256palette.sh"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export BASH_SILENCE_DEPRECATION_WARNING=1
alias tmux="tmux -2"
alias python="python3"

# Added by install_latest_perl_osx.pl
[ -r /Users/calebsuhy/.bashrc ] && source /Users/calebsuhy/.bashrc
export BASH_SILENCE_DEPRECATION_WARNING=1
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export FZF_DEFAULT_COMMAND='rg --files --hidden'
export FZF_DEFAULT_OPTS='--height 50%'
