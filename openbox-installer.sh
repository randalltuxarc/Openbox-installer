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
apt-get install openbox lxappearance thunar obmenu nitrogen tint2 xcompmgr xfce4-power-manager git git-core geany
echo 'Install success with no errors =)'

## Installing compton
echo 'Adding compton repository'
add-apt-repository ppa:richardgv/compton && apt-get update && apt-get install compton
echo 'Copying compton configuration'
cp misc/compton.conf /home/$USER/.compton.conf
cp misc/cb-compositor /usr/bin
cp misc/cb-include.cfg /usr/bin
echo 'Installing compton success'

## Configuring openbox , autostart , menu
echo 'Create Openbox directory'
mkdir -p /home/$USER/.config/openbox/
echo 'Copying autostart file'
cp misc/openbox-autostart ~/.config/openbox/autostart
echo 'Copying rc.xml'
cp misc/rc.xml ~/.config/openbox/rc.xml
echo 'Copying menu.xml'
cp misc/menu.xml ~/.config/openbox/menu.xml
echo 'Copying file success'

## done
echo 'Install Openbox success'
