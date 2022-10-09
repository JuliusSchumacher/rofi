#!/usr/bin/env bash

dir="$HOME/.config/rofi/"
theme='bluetooth'

## Run
$dir/scripts/rofi-bluetooth/rofi-bluetooth \
    -theme ${dir}/${theme}.rasi
