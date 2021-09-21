#!/bin/sh

laptop="eDP1"
external="DP1"
hdmi="HDMI1"

xrandr --output $laptop --primary --mode 1920x1080 --pos 0x0 --rotate normal \
    --output $external --mode 1920x1080 --pos 1920x0 --rotate normal \
    --output $DP2 --off --output $hdmi1 --off --output VIRTUAL1 --off 

xrandr --dpi 90
