#!/bin/bash
# Author: Roman Kulich @ 2020
# Version: v0.0.1

sudo apt update
echo ""
echo -e "\e[92mThese packages are upgradable:\e[39m"
apt list --upgradable
echo ""
echo -e "\e[92mDo you want to upgrade these packages? (y/n)\e[39m"
read upgrade
if [[ $upgrade =~ "y" ]]; then
   sudo apt upgrade -y
   echo -e "\e[92mAll packages upgraded!\e[39m"
else echo -e "\e[92mDone\e[39m"
fi
