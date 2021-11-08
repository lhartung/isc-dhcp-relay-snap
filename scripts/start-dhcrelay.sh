#!/bin/sh

if ! snapctl is-connected network-control; then
    snapctl set-health blocked "Interface required: snap connect $SNAP_NAME:network-control"
    exit 1
fi

server="$(snapctl get server)"

if [ -z "$server" ]; then
    snapctl set-health blocked "Address required: snap set $SNAP_NAME server=<address>"
    exit 1
fi

snapctl set-health okay

dhcrelay -d $server
