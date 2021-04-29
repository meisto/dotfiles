#!/bin/sh

bat=$(cat /sys/class/power_supply/BAT0/capacity)

if [ $bat -gt 90 ]; then
    # prefix="<span background='#00b54a' foreground='#333333'>   "
    prefix="<span background='#00b54a' foreground='#333333'>  "
elif [ $bat -gt 20 ]; then
    # prefix="<span background='#E6C20C' foreground='#333333'>   "
    prefix="<span background='#E6C20C' foreground='#333333'>  "
else  
    # prefix="<span background='#A50000' foreground='#333333'>   "
    prefix="<span background='#A50000' foreground='#333333'>  "
fi;

state=$(cat /sys/class/power_supply/BAT0/status);

if [ "$state" = "Charging" ]; then

    # suffix="   </span>"
    suffix=" $bat%  </span>"
else
    # suffix="   </span>"
    suffix=" $bat%  </span>"
fi

# echo "$prefix$bat%$suffix"
echo "$prefix$suffix"
# echo "$bat%"
# echo ""
# echo "#FF00FF"
