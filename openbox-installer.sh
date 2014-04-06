#!/bin/bash
###########################################################
## 			Openbox Installer by Randalltux              ##
##			 email: randalltux@yahoo.co.id               ##
##               twitter: @randalltux                    ##
###########################################################
# Reference http://forum.ubuntu-fr.org/viewtopic.php?id=399144
# run this script with sudo
# ex: sudo sh openbox-installer.sh
# This scripts it's just for Ubuntu based distro
# Please fork this scripts
# 
## Updating repository
echo 'Updating Repositories'
apt-get update && apt-get upgrade
echo 'Update success'

## Installing openbox and supporting applications
echo 'Installing openbox and supporting applications'
apt-get install openbox lxappearance thunar obmenu nitrogen tint2 xcompmgr xfce4-power-manager git git-core geany ttf-droid
echo 'Install success with no errors =)'

## Installing compton and configuring cb-compositor
echo 'Adding compton repository'
add-apt-repository ppa:richardgv/compton && apt-get update && apt-get install compton
echo 'Copying compton configuration'
wget https://raw.githubusercontent.com/randalltuxarc/Openbox-installer/master/misc/compton.conf -O .compton.conf
wget https://raw.githubusercontent.com/randalltuxarc/Openbox-installer/master/misc/cb-compositor && sudo mv cb-compositor /usr/bin
wget https://raw.githubusercontent.com/randalltuxarc/Openbox-installer/master/misc/cb-include.cfg && sudo mv cb-include.cfg /usr/bin
echo 'Installing & Configuring compton success'

## Configuring openbox , autostart , menu
echo 'Create Openbox directory'
mkdir -p /home/$USER/.config/openbox/ && cd ~/.config/openbox
echo 'Copying autostart file'
wget https://raw.githubusercontent.com/randalltuxarc/Openbox-installer/master/misc/openbox-autostart -O autostart
echo 'Copying rc.xml'
wget https://raw.githubusercontent.com/randalltuxarc/Openbox-installer/master/misc/openbox-rc.xml -O rc.xml
echo 'Copying menu.xml'
wget https://raw.githubusercontent.com/randalltuxarc/Openbox-installer/master/misc/menu.xml -O menu.xml
echo 'Copying file success'

## done
echo 'Install Openbox success'
