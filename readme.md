# ConnectLife kiosk installation and maintainance playbook

Setup kiosk steps:

### Connect RPi to a network via ethernet or WiFi

#### Ethernet

Just plug in the cable.

#### WiFi

Add your wireless network SSID and password to **/etc/wpa\_supplicant/wpa\_supplicant.conf**

> sudo nano /etc/wpa\_supplicant/wpa\_supplicant.conf

Add following section

> network={
> ssid="NETWORKNAME"
> psk="YOURPASSWORD"
> }

Then execute the following command to connect to the specified network.

> wpa\_cli -i wlan0 reconfigure

Test

> ping google.si

### Obtain RPi's IP address

Execute following command to get the IP address

> ip a

#### Ethernet

// TODO add screenshot

#### WiFi

// TODO add screenshot

### Enable and start SSH on Raspberry Pi

> sudo systemctl enable ssh
> sudo systemctl start ssh

This will open up SSH on port 22.
Authentication will be simple password authentication if not specified differently.

**Check your friendly network security specialist for risks of running SSH on p22 with password authentication!**


### Test remote access from a remote machine

To connect to RPi from a remote machine execute following command.

> ssh USERNAME@HOSTNAME -pPORT

Where:

- USERNAME is your Pi's user account name
- HOSTNAME is your Pi's IP
- PORT is the port that SSH is running on

For example:

> ssh pi@192.168.1.107 -p22

When prompted, type yes and press Enter.

// TODO add screenshot

### Modify ''hosts'' file

To add your Pi (one or more) to ansible targets open the hosts file

> nano hosts

Add Pi's IP address(es) under the [kiosks] group.

### Run ansible playbook

When installing kiosk for the first time run

> ansible-playbook -k kiosk.yml

When updating the system 


> ansible-playbook -k update.yml


