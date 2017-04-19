# ControlRelay-RPI

This is a very simple script that detects a paired bluetooth device/phone with your Raspberry Pi3 and controls a relay module connected via GPIO. Other Raspberry Pi versions will not work unless you attache a bluetooth dongle via USB.

Please refer to my other project https://github.com/adelorenzo/Simple-PHP-GPIO for the connection settings and hardware I use for this project.

This script will only control one channel of the relay module.

_Pairing your mobile phone with a Raspberry Pi is not covered here. There are plenty of tutorials on the Internet that explain how to do that._

## Usage
Once you download the script and have your mobile phone paired with your RPi you can start the script with the command:
```
nohup ./controlrelay.sh &
```
