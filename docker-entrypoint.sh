#!/bin/sh

IP=$(/sbin/ip route|awk '/src/ { print $9 }')
/etc/init.d/postfix start
/assets/wrapper
