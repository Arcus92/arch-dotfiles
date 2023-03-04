#!/bin/bash

# This looks for a Corsair headset
sinkCurrent=`pactl get-default-sink`
sinkHeadset=`pactl list short sinks | awk '/Corsair/ {print $2}' | head -n 1`
sinkDesktop=`pactl list short sinks | awk '!/Corsair/ {print $2}' | head -n 1`

if [ "$sinkCurrent" == "$sinkDesktop" ]; 
then
    sinkNext=$sinkHeadset
else
    sinkNext=$sinkDesktop
fi

pactl set-default-sink $sinkNext