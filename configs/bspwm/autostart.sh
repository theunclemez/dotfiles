#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

#Find out your monitor name with xrandr or arandr (save and you get this line)
#xrandr --output VGA-1 --primary --mode 1360x768 --pos 0x0 --rotate normal
#xrandr --output DP2 --primary --mode 1920x1080 --rate 60.00 --output LVDS1 --off &
#xrandr --output LVDS1 --mode 1366x768 --output DP3 --mode 1920x1080 --right-of LVDS1
#xrandr --output HDMI2 --mode 1920x1080 --pos 1920x0 --rotate normal --output HDMI1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output VIRTUAL1 --off

$HOME/.config/polybar/launch.sh &

#Set correct mode for DisplayPort-0 (uncomment if using Philips Brilliance 225B as external monitor)
#cvt 1680 1050
#xrandr --newmode 1680x1050_60.00 146.25  1680 1784 1960 2240  1050 1053 1059 1089 -hsync +vsync
#xrandr --addmode DisplayPort-0 1680x1050_60.00
#xrandr --output DisplayPort-0 --mode 1680x1050_60.00

#xrandr --output eDP --mode 1366x768 --pos 0x0 --rotate normal --output DisplayPort-0 --primary --mode 1680x1050_60.00 --pos 1366x0 --rotate normal --output VGA-0 --off


#change your keyboard if you need it
#setxkbmap -layout be

#Some ways to set your wallpaper besides variety or nitrogen
#feh --bg-scale ~/.config/bspwm/wall.png &
#feh --bg-fill /usr/share/backgrounds/hefftorlinux/Hefftor_4k.png &
feh --bg-fill /usr/share/backgrounds/hefftorlinux/36_oldies.png &

#feh --randomize --bg-fill ~/Képek/*
#feh --randomize --bg-fill ~/Dropbox/Apps/Desktoppr/*
wal -nRa 90 &

xsetroot -cursor_name left_ptr &
run sxhkd -c ~/.config/bspwm/sxhkd/sxhkdrc &
dex $HOME/.config/autostart/arcolinux-welcome-app.desktop

#run conky &
#run glava &
#run mpd &
#run variety &
run nm-applet &
run pamac-tray &
run xfce4-power-manager &
#numlockx on &
blueberry-tray &
/usr/lib/xfce4/notifyd/xfce4-notifyd &
#run dunst &
run urxvt -name 'Scratchpad' -e ~/.local/bin/scratch &
picom --config $HOME/.config/bspwm/picom.conf &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
#nitrogen --restore &
#run caffeine &
#run vivaldi-stable &
#run firefox &
#run thunar &
#run dropbox &
#run insync start &
#run discord &
#run spotify &
#run atom &
