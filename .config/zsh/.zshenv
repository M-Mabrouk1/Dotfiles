# Other CDG paths
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}
export XDG_STATE_HOME=${XDG_STATE_HOME:="$HOME/.local/state"}

# cleaning home directory
# export ZDOTDIR=$HOME/.config/zsh
export SSB_HOME="$XDG_DATA_HOME"/zoom
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export IPYTHONDIR="$XDG_CONFIG_HOME"/ipython
export JUPYTER_CONFIG_DIR="$XDG_CONFIG_HOME"/jupyter
export CONDARC="$XDG_CONFIG_HOME/conda/condarc"
export SCREENRC="$XDG_CONFIG_HOME"/screen/screenrc
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
# export nvidia-settings --config="$XDG_CONFIG_HOME"/nvidia/settings
export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv
export NUGET_PACKAGES="$XDG_CACHE_HOME"/NuGetPackages
export _ZL_DATA="$XDG_DATA_HOME/zlua/.zlua"
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java

# GTK4 app theme
# export GTK_THEME=Dracula
export GTK_THEME="$(grep 'gtk-theme-name' "${XDG_CONFIG_HOME:-$HOME/.config}/gtk-3.0/settings.ini" | sed 's/.*\s*=\s*//')"

# systemctl --user import-environment PATH

# Disable file
# export LESSHISTFILE=-
# #input method
# export GTK_IM_MODULE=fcitx
# export QT_IM_MODULE=fcitx
# export XMODIFIERS=@im=fcitx
# export QT_QPA_PLATFORMTHEME=qt5ct
