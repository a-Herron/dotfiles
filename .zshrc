source ./antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle command-not-found
antigen theme jenssegers/palenight.zsh-theme palenight
export NVM_DIR="$HOME/.custom-nvm-dir"
antigen bundle lukechilds/zsh-nvm

antigen apply

BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"

export PATH=/home/$USER/.local/bin:$PATH

set -o vi
