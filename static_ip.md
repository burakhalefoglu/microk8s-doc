# This doc how to set static ip in ubuntu server

### This is location of netplan in Ubuntu Server: /etc/netplan/00-installer-config.yaml

cd /etc/netplan
sudo nano 00-installer-config.yaml

### Paste this all text inside of the .yaml
# This written syntax must be totally same

# This is the network config written by 'alparslan'
network:
  version: 2
  renderer: networkd
  ethernets:
    eno1: <----(This is your ethernet chip given name)
      dhcp4: no
      addresses:
        - ["This is  your want to set local ip"] <----(ex: 192.168.1.100)
        gateway4: "Your gateway ip " <---- (ex: 192.168.1.1)
      nameservers:
        addresses: ["This is you want to set DNS"] <----(ex: [8.8.8.8, 1.1.1.1] )

# Then

sudo netplan apply

