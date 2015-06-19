#!/bin/bash

# modify to your environment
TG_PATH="$HOME/tg"
TG_BIN="$TG_PATH/bin/telegram-cli"
TG_PUB="$TG_PATH/server.pub"


if [ "$#" -lt 1 ]
then
	echo "[Usage] $0 <lua script file>"
	exit 1
fi

if [ ! -f "$1" ]
then
	echo "Cannot found $1"
	exit 1
fi

"$TG_BIN" -k "$TG_PUB" -s "$1"
