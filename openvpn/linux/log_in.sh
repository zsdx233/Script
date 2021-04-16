#!/usr/bin/expect 
set timeout 30
#enp2s0  is your network card
spawn sudo systemd-resolve -i enp2s0 --set-domain=www.baidu.com
expect "*password*"
# *** is your sudo passwd
send "***\r"
#Your conf profile path
spawn sudo openvpn --config /home/jiangyj19/Documents/openvpn/linux/openvpn_linux.conf 
expect "*password*"
# *** is your sudo passwd
send "***\r"  
expect "*Username*"
# jqz19 is your skyworks account
send "jqz19\r" 
expect "*Password*"
# *** is your passwd of skyworks
send "***\r" 
interact
