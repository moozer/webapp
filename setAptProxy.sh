#!/bin/sh

APTCONF="/etc/apt/apt.conf"
APTPROXY="configserver01"

if ping -c 1 $APTPROXY > /dev/null; then
  echo Acquire::http::Proxy \"http:/$APTPROXY:9999\"\; > $APTCONF
else
  rm -f $APTCONF
fi

