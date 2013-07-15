#! /bin/bash

conky -c ~/.config/wmfs/scripts/conkyrc_top | while true; read line; do wmfs -c status "testbar $line"; done &
conky -c ~/.config/wmfs/scripts/conkyrc_bottom | while true; read line; do wmfs -c status "bottom $line"; done &
exec `/usr/bin/wmfs`
