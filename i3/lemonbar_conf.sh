#!/usr/bin/bash

# Define the clock
Clock() {
    DATETIME=$(date "+%a %b %d, %T")
    echo -n "$DATETIME"
}

while true; do
        echo "%{c}%{B#588C7E}%{F#FFD767} $(Clock) %{F-}%{B-}"
        sleep 1
done
