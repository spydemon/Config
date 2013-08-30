#! /bin/bash

conky -c ~/depots/Config/wmfs2/scripts/conkyrc_top | while true; read line; do wmfs -c status "testbar $line"; done &
#conky -c ~/depots/Config/wmfs/scripts/conkyrc_bottom | while true; read line; do wmfs -c status "bottom $line"; done &
exec `/usr/bin/wmfs`
