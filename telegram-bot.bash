#!/bin/bash

if [ $# -lt 1 ]
then
	echo "[Usage] $0 <lua script file>"
	exit 1
fi

if [ ! -f "$1" ]
then
	echo "Cannot found $1"
	exit 1
fi

~/tg/bin/telegram-cli -k ~/tg/server.pub -s "$1"
