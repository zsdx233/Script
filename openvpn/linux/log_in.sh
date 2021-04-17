#!/usr/bin/expect 
set timeout 30
#enp2s0  is your network card
spawn sudo systemd-resolve -i enp0s25 --set-domain=www.baidu.com
expect "*password*"
# *** is your sudo passwd
send "tinkerdell\r"
#Your conf profile path
spawn sudo openvpn --config openvpn_linux.conf 
expect "*password*"
# *** is your sudo passwd
send "tinkerdell\r"  
expect "*Username*"
# jqz19 is your skyworks account
send "jzq19\r" 
expect "*Password*"
# *** is your passwd of skyworks
send "Skyworks002\r" 
interact
