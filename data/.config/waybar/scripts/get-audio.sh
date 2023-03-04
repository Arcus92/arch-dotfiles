#!/bin/bash

# Add a little bit of delay, so we detect the switched sink
sleep 0.1

# This looks for a Corsair headset
sinkCurrent=`pactl get-default-sink`
sinkHeadset=`pactl list short sinks | awk '/Corsair/ {print $2}' | head -n 1`
sinkDesktop=`pactl list short sinks | awk '!/Corsair/ {print $2}' | head -n 1`

if [ "$sinkCurrent" == "$sinkDesktop" ]; 
then
    echo '{"text": "Desktop", "tooltip": "Desktop", "class":"desktop"}'
else
    echo '{"text": "Headset", "tooltip": "Headset", "class":"headset"}'
fi