#!/bin/bash -
#
# init script
#
# author: hzsunshx 2014-09-16
#
daemon(){
	"$@" &>/dev/null &
}

daemon /usr/sbin/ssdh -D
daemon python rpc_service.py
echo "Hello sshd"
