#!/bin/sh
popname=popbar
message="hai domo! baacha yoochuubah kizuna ai des!"
# Create the popup and make it live for 3 seconds
(echo " %{c}$message"; sleep 5) | lemonbar -d -n "${popname}" -g 300x50+20+40 -F "#C4BFBF" -B "#2C2B2B"
