#! /bin/bash

ARTIST=`mpc | head -1 | sed -E 's/(.*)-(.*)/\1/'`
TRACK=`mpc | head -1 | sed -E 's/(.*)-(.*)/\2/'`

echo $ARTIST >> /tmp/play_artist.txt
echo $TRACK >> /tmp/play_track.txt
