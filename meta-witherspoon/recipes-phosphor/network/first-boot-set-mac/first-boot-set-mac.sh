#!/bin/sh 

ethaddr="$(fw_printenv | grep eth)"
echo "$ethaddr"
if [ ! $ethaddr ]; then

data1="$(hexdump -e '16/1 "%02x " "\n"' /sys/bus/i2c/devices/8-0050/eeprom -s 16 -n 6)"
data2="$(hexdump -e '16/1 "%02x " "\n"' /sys/bus/i2c/devices/8-0050/eeprom -s 32 -n 6)"
MAC_ADDR="$(echo $data1 | sed 's/ /:/g')"
MAC_ADDR1="$(echo $data2 | sed 's/ /:/g')"

busctl set-property xyz.openbmc_project.Network \
                    /xyz/openbmc_project/network/eth1 \
                    xyz.openbmc_project.Network.MACAddress \
                    MACAddress s ${MAC_ADDR1} || true
fw_setenv eth1addr "$MAC_ADDR1"

busctl set-property xyz.openbmc_project.Network \
                    /xyz/openbmc_project/network/eth0 \
                    xyz.openbmc_project.Network.MACAddress \
                    MACAddress s ${MAC_ADDR} || true
fw_setenv ethaddr "$MAC_ADDR"

systemctl disable first-boot-set-mac@eth.service

fi
