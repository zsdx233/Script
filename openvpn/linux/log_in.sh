#! /usr/bin/expect
set timeout 30
spawn sudo systemd-resolve -i enp2s0 --set-domain=www.baidu.com   #enp2s0  is your network card
expect "*password*"
send "***\r" # ***是你的sudo密码
spawn sudo openvpn --config /home/jiangyj19/Documents/linux_login_vpn/openvpn_linux.conf  #Your profile path
expect "*password*"
send "***\r"  # ***是你的sudo密码
expect "*Username*"
send "***\r" # ***是你的工场账号
expect "*Password*"
send "***\r" # ***是你的账号密码
interact