#!/bin/bash -
#
# init script
#
# author: hzsunshx 2014-09-16
#
daemon(){
	"$@" &>/dev/null &
}

daemon /usr/sbin/sshd -D
daemon python rpc_service.py
echo "Hello sshd"
