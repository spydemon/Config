#!/bin/bash
### BEGIN INIT INFO
# Provides:		up-network
# Required-Start:	rsyslog
# Required-Stop:
# Default-Start:	2
# Default-Stop:
# Short-Description:	Check if the network is up.
### END INIT INFO

echo "Activation of the network interface with ip: 192.168.1.52"
#`sudo ifconfig eth0 192.168.1.52 netmask 255.255.255.0 up`
`sudo ifconfig eth0 up`
exit $?

