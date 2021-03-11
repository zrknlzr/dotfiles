#!/bin/bash
if xrandr | grep -q 'HDMI-2 connected'; then
    xrandr --output eDP-1 --auto --pos 0x1080 --output HDMI-2 --auto --pos 0x0
else
    xrandr --output eDP-1 --auto --pos 0x0
fi