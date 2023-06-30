#!/bin/bash
#Make Directory and Extract Files
mkdir rdp_fix
tar -xvf RDP_MultiMonitor.tgz -C rdp_fix

#Copy files to /usr/bin
cd rdp_fix
cp dhc-apply-config.pyc /usr/bin
cp dhc_apply_config.so /usr/bin
cd DHC-main
bash rdp_fox.sh
This will copy files to fix RDP in multi monitor sessions.
exit and reboot
