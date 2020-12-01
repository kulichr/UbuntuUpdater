#!/bin/bash
# Author: Roman Kulich @ 2020
# Version: v0.0.1

sudo apt update && apt list --upgradable
echo " "
echo -e "\e[92mDo you want to upgrade these packages?\e[39m"
read upgrade
if [[ $upgrade =~ "y" ]]; then
   sudo apt upgrade
else echo -e "\e[92mDone\e[39m"
fi
