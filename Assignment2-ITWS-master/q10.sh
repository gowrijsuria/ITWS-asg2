#!/bin/bash
y=`cut -d: -f1 /etc/passwd |wc -l`
x=`who | wc -l`
echo "$x OUT OF $y USERS ARE ONLINE RIGHT NOW"

