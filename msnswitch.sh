#!/bin/bash

SWITCH_IP=$1
SWITCH=$2
CONTROL=$3
ACCOUNT=adm
PASSWORD=test

if (( $# < 3 )); then
	echo "Usage: $0 switch-ip-address switch-target 0|1"
	exit
fi

echo "Control switch $SWITCH_IP, target $SWITCH, control $CONTROL"

curl "http://$SWITCH_IP/cgi-bin/control.cgi?user=$ACCOUNT&passwd=$PASSWORD&target=1&control=1" --http1.1  --verbose --header "Accept-Encoding: gzip, deflate" --header "Accept: */*"
