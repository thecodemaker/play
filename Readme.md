# Development Guide
Sharing this with hope that it helps someone. I used it for some personal development. Main idea is to create a 
development environment from scripts.

For questions or concerns contact me: bogdanapetrei85@gmail.com   

## Notes
 - don't press anything when box is created, just enjoy
 - gradually  scripts are moved from vagrant folder to packer folder   
 
## Windows 

### Install VirtualBox 
https://www.virtualbox.org/

### Install Packer
https://www.packer.io/intro/getting-started/install.html

### Install git 
https://git-scm.com/download/win 

### Install Vagrant
https://www.vagrantup.com/downloads.html

### Set Vagrant Home (default is on C:) *change path* - if required
REG ADD HKCU\Environment /v VAGRANT_HOME /t REG_SZ /d "E:\VMs\vagrant.d"

### Install Vagrant VBGuest
vagrant plugin install vagrant-vbguest

### Check out repository *change URL*
git clone ssh://thecodemaker@192.168.0.195:2200/volume1/git/play

### In packer.json file update accordingly the ubuntu version
"iso_url": "http://releases.ubuntu.com/16.04/ubuntu-16.04.3-server-amd64.iso",
"iso_checksum": "10fcd20619dce11fe094e960c85ba4a9",

### Create Vagrant Box 
run ./1.create_vagrant_box.sh

### Start Vagrant Machine 
run ./2.create_vagrant_machine.sh
