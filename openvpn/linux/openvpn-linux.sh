#you need a vpn to install the openvpn
sudo apt update && sudo apt -y install ca-certificates wget net-tools gnupg
sudo apt-key add as-repo-public.gpg
#or get it online: wget -qO - https://as-repository.openvpn.net/as-repo-public.gpg |sudo apt-key add -
#sudo sh -c 'echo "deb http://as-repository.openvpn.net/as/debian focal main"> /etc/apt/sources.list.d/openvpn-as-repo.list'
sudo apt update && sudo apt -y install openvpn-as
sudo cp update-systemd-resolved /etc/openvpn/update-systemd-resolved
sudo chmod +x /etc/openvpn/update-systemd-resolved
sudo  chmod +x log_in.sh
sudo apt install expect
./log_in.sh
