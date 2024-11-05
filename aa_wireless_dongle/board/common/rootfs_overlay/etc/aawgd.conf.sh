#!/bin/sh

######## Configuration options for Android Auto Wireless Dongle ########

## Country code (ISO/IEC 3166-1)
## Set the regulatory domain for the wifi network. This will help configure the wifi correctly for the country you're in.
AAWG_COUNTRY_CODE=IN


## Set the connection strategy to use
## 0 - Dongle mode. Waits for both dongle and headunit bluetooth connections and then starts the wifi and usb connections.
## 1 - Phone first (default). Waits for the phone bluetooth and wifi to connect first, and then starts the usb connection.
## 2 - Usb first. Waits for the usb to connect first, and then starts the bluetooth and wifi connection with phone.
AAWG_CONNECTION_STRATEGY=1


## Override bluetooth name suffix
## Set a custom suffix to replace unique id used in "WirelessAADongle-<suffix>" or "AndroidAuto-Dongle-<suffix>"
#AAWG_UNIQUE_NAME_SUFFIX=



######## Advanced Configuration ########

## Override Wifi Password
## Set a custom password for the wifi network. This is usually only required when you're debugging the dongle.
## Not recommended for normal use.
#AAWG_WIFI_PASSWORD=ConnectAAWirelessDongle
