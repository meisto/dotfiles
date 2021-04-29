#!/bin/zsh
rfkill block all # This seems like a hack?

# ===================================================================
# === Look and Feel =================================================
# ===================================================================
# Set background
feh --bg-scale ~/.config/desktop/josef-barton-among-the-stars-prev.jpg

# The following has to be done for compton to work properly
killall compton         
sleep 0.5
compton -b --config ~/.config/compton/config

# ===================================================================
# === Terminals  ====================================================
# ===================================================================
xrdb -load ~/.config/urxvt/config


# Why do this to us Ubuntu?
tracker daemon -k
