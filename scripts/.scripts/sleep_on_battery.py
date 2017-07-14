#!/usr/bin/python

import os

running = True
battery = "/sys/class/power_supply/BAT0"

while running:
    with open(os.path.join(battery, "energy_full_design"), "r") as full:
        total = float(full.read().rstrip("\n"))
    # --
    with open(os.path.join(battery, "energy_now"), "r") as energy:
        current = float(energy.read().rstrip("\n"))

    # --
    status = 100 - ((total - current) / total * 100)
    print("Current Status: ", status)
    if status < 10:
        running = False
        os.system("systemctl suspend")

