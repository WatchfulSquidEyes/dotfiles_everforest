#!/bin/bash
config_file="~/.config/polybar/polybar.ini"

echo $config_file

killall -q polybar
while pgrep -x polybar >/dev/null; do sleep 1; done
polybar --config=$config_file --reload main &
polybar --config=$config_file --reload bottom_left &
polybar --config=$config_file --reload bottom_right &
