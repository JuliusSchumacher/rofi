#!/bin/bash

dir="$HOME/.config/rofi/"
theme='clipboard'

run_rofi() {
    cliphist list | rofi \
        -dmenu \
        -theme ${dir}/${theme}.rasi
}

run_rofi | cliphist decode | wl-copy
