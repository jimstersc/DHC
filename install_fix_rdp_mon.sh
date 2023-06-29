#!/bin/bash

if [ $# -ne 1 ]
then
	echo "Please provide tar file as argument. Ex: bash $0 RDP_MultiMonitor.tgz"
	exit 1
fi

tar_file=$1

tar -xvf tar_file -C .
mkdir -p /opt/apply_config_backup

#Take backup of dhc-apply config files
mv /usr/bin/dhc-apply-config.pyc /opt/apply_config_backup
mv /usr/bin/dhc_apply_config.so /opt/apply_config_backup

#Copy files to /usr/bin
cd RDP_MultiMonitor
cp dhc-apply-config.pyc /usr/bin
cp dhc_apply_config.so /usr/bin
