#!/usr/bin/zsh

dir="$HOME/.config/rofi/"
theme='powermenu'

poweroff="⏻"
reboot=""
lock=""
logout=""

run_rofi() {
    echo -e "$poweroff\n$reboot\n$lock\n$logout" |
        rofi \
        -dmenu \
        -theme ${dir}/${theme}.rasi
    }

chosen="$(run_rofi)"
case $chosen in
    $poweroff)
        systemctl poweroff
        ;;
    $reboot)
        systemctl reboot
        ;;
    $logout)
        i3-msg exit
        hyprctl dispatch exit
        ;;
    $lock)
        xset s activate
        waylock
        # gtklock -m playerctl-module -S -s ~/.config/gtklock/theme.css -d
        ;;
esac
