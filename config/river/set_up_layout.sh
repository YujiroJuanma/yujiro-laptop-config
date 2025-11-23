#!/bin/sh

# set layout manager
riverctl default-layout wideriver

# start layout manager
wideriver \
    --layout                       left        \
    --layout-alt                   monocle     \
    --stack                        dwindle     \
    --count-master                 1           \
    --ratio-master                 0.50        \
    --count-wide-left              0           \
    --ratio-wide                   0.35        \
    --no-smart-gaps                            \
    --inner-gaps                   2           \
    --outer-gaps                   2           \
    --border-width                 4           \
    --border-width-monocle         0           \
    --border-width-smart-gaps      0           \
    --border-color-focused         "0x83c092"  \
    --border-color-focused-monocle "0x83c092"  \
    --border-color-unfocused       "0x3b4252"  \
    --log-threshold                info        \
   > "/tmp/wideriver.${XDG_VTNR}.${USER}.log" 2>&1 &
