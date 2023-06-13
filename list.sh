#!/usr/bin/env bash

dir="$HOME/.config/rofi/"
theme='list'

## Run

rofi \
    -dmenu \
    -theme ${dir}/${theme}.rasi
