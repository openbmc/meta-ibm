#!/bin/sh

## Enable to parse /231-0050/eeprom if it exists.
if [ -f "/sys/bus/i2c/devices/231-0050/eeprom" ]; then
    ibm-read-vpd --file /sys/bus/i2c/devices/231-0050/eeprom
else
     echo " Can't find /231-0050/bittware-soc eeprom!"
fi

## Enable to parse /232-0050/eeprom if it exists.
if [ -f "/sys/bus/i2c/devices/232-0050/eeprom" ]; then
    ibm-read-vpd --file /sys/bus/i2c/devices/232-0050/eeprom
else
     echo " Can't find /232-0050/bittware-soc eeprom!"
fi

## Enable to parse /235-0050/eeprom if it exists.
if [ -f "/sys/bus/i2c/devices/235-0050/eeprom" ]; then
    ibm-read-vpd --file /sys/bus/i2c/devices/235-0050/eeprom
else
     echo " Can't find /235-0050/bittware-soc eeprom!"
fi

## Enable to parse /236-0050/eeprom if it exists.
if [ -f "/sys/bus/i2c/devices/236-0050/eeprom" ]; then
    ibm-read-vpd --file /sys/bus/i2c/devices/236-0050/eeprom
else
     echo " Can't find /236-0050/bittware-soc eeprom!"
fi

## Enable to parse /239-0050/eeprom if it exists.
if [ -f "/sys/bus/i2c/devices/239-0050/eeprom" ]; then
    ibm-read-vpd --file /sys/bus/i2c/devices/239-0050/eeprom
else
     echo " Can't find /239-0050/bittware-soc eeprom!"
fi

## Enable to parse /240-0050/eeprom if it exists.
if [ -f "/sys/bus/i2c/devices/240-0050/eeprom" ]; then
    ibm-read-vpd --file /sys/bus/i2c/devices/240-0050/eeprom
else
     echo " Can't find /240-0050/bittware-soc eeprom!"
fi

## Enable to parse /243-0050/eeprom if it exists.
if [ -f "/sys/bus/i2c/devices/243-0050/eeprom" ]; then
    ibm-read-vpd --file /sys/bus/i2c/devices/243-0050/eeprom
else
     echo " Can't find /243-0050/bittware-soc eeprom!"
fi

## Enable to parse /244-0050/eeprom if it exists.
if [ -f "/sys/bus/i2c/devices/244-0050/eeprom" ]; then
    ibm-read-vpd --file /sys/bus/i2c/devices/244-0050/eeprom
else
     echo " Can't find /244-0050/bittware-soc eeprom!"
fi
