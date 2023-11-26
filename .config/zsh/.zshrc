# My config

# add directory to the path if exists
if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.config/zhistory/.zhistory

# some useful options (man zshoptions)
setopt autocd extendedglob nomatch menucomplete
setopt interactive_comments
stty stop undef		# Disable ctrl-s to freeze terminal.
zle_highlight=('paste:none')

# beeping is annoying
unsetopt BEEP

# completions
autoload -Uz compinit  && compinit
# case insensetive
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' menu select
# zstyle ':completion::complete:lsof:*' menu yes select
zmodload zsh/complist
# compinit
_comp_options+=(globdots)		# Include hidden files.

# Start neofetch
# neofetch | lolcat

# adding z.lua
eval "$(lua ~/.config/z.lua/z.lua  --init zsh enhanced once)"

# Start oh my posh prompt
eval "$(oh-my-posh --init --shell zsh --config ~/.config/poshthemes/mytheme.omp.json)"

# Start Starship
# eval "$(starship init zsh)"

# sourcing functions
source "$ZDOTDIR/zsh-functions"

#vim mode
zsh_add_file "zsh-vim-mode"

# adding files
zsh_add_file "zsh-aliases"

# Plugins
zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"
zsh_add_plugin "hlissner/zsh-autopair"
# zsh_add_completion "esc/conda-zsh-completion"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/mabrouk/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/mabrouk/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/mabrouk/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/mabrouk/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# fix duplicate command line if any
export  LC_ALL=en_US.UTF-8

# bind ` key to move forward one word
bindkey '\140' forward-word
bindkey "^[[3~" delete-char

# coloured man pages
zsh_add_file "coloured-man"

# source fzf
source "/usr/share/fzf/key-bindings.zsh"
source "/usr/share/fzf/completion.zsh"
