#!/usr/bin/env bash


### Check if python-pywal is installed
### Check if dir exists and copy the template in its proper place
if [ -x "$(command -v wal)" ]; then
  if [ ! -d $HOME/.config/wal/templates ] ; then
    mkdir $HOME/.config/wal/templates &&
    cp $HOME/.config/leftwm/themes/current/template-wal/color.leftwm-theme.toml  $HOME/.config/wal/templates
  elif
    [ ! -f $HOME/.config/wal/templates/color.leftwm-theme.toml ] ; then
        cp -f $HOME/.config/leftwm/themes/current/template-wal/color.leftwm-theme.toml  $HOME/.config/wal/templates
  fi
    my_array=(/mnt/M\&H/Pics/Wallpapers/*)
        ####my_array=(/usr/share/backgrounds/*)

    wal -s -i  ${my_array[$(( $RANDOM % ${#my_array[@]}))]} -n
    # set wallpaper
    feh --no-fehbg --bg-fill "$(< "${HOME}/.cache/wal/wal")"
    # transparent bar
    trans-bar (){
      . "${HOME}/.cache/wal/colors.sh"
      bg="${background//#}"
      echo "#A6$bg" > /home/mabrouk/.config/leftwm/themes/neon-i/scripts/color.txt
    }
    trans-bar
    cat ~/.cache/wal/color.leftwm-theme.toml &&
    ####bat ~/.cache/wal/color.leftwm-theme.toml &&               
    cp -f ~/.cache/wal/color.leftwm-theme.toml $HOME/.config/leftwm/themes/current/theme.toml &&
    
    leftwm command "LoadTheme $HOME/.config/leftwm/themes/current/theme.toml"

else

  # Set background
  if [ -x "$(command -v feh)" ]; then
    feh --randomize --no-fehbg --bg-fill /mnt/M\&H/Pics/Wallpapers/*
  fi
fi