#! /bin/bash

ARTIST=`mpc -f %artist% | head -1`
TRACK=`mpc -f %title% | head -1` 

echo $ARTIST,$TRACK >> /home/$USER/.ncmpcpp/playcounter.txt
