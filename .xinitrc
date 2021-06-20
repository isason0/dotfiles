## Read Xresources dotfile
xrdb -merge  ~/.Xresources &

## Read xprofile dotfile
[ -f ~/.xprofile ] && . ~/.xprofile  

## Start picom
picom &

## Set autocutsel
autocutsel -fork &
autocutsel -selection PRIMARY -fork &

## Set screen timeout off
xset -dpms s off &

## Read wallpaper (nordic WP from wallpaperflare / wallpaperaccess)
nitrogen --restore &

## Use finnish keymap
setxkbmap fi &

## Change default X cursor
#xsetroot -cursor_name left_ptr &

## Start slstatus
slstatus &

## Read .Xmodmap (via a script)
~/.scripts/xmodmapstartup.sh &

## Start WM
#xmonad
#exec i3
exec dwm
