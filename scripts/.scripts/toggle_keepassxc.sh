#!/bin/bash

keepassProcess=$(pidof keepassxc)

if [[ -z $keepassProcess ]]; then
  #if it was accidentally killed, spawn again
  keepassxc &
  sleep 1
  kpWid=$(pfw)
  echo $kpWid > /tmp/keepasswindow
else
  #process exists, toggle visibility
  mapw -t $(cat /tmp/keepasswindow)
fi ;
