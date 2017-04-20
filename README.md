# ControlRelay-RPI

This is a very simple Linux shell script that detects when a paired device/phone with your Raspberry Pi3/Zero W is within range of the bluetooth antenna or connected to your wifi network and executes a command to control a relay module connected via GPIO. Other Raspberry Pi versions will not work unless you attached a bluetooth dongle via USB.

If you prefer the wifi option what is likely to happen is that the script will execute the command to control the gpio pin as soon as your mobile device connects to your router. This could be interesting if over bluetooth if depending on what you want to achieve with this script.

Please refer to my other project https://wp.me/p8kvCs-4m for the connection settings and hardware I use for this project. This script will only control one channel of the relay module.

_Pairing your mobile phone with a Raspberry Pi or how to set an fixed IP for your mobile phone is not covered here. There are plenty of tutorials on the Internet that explain how to do that._


Once you download the script, don’t forget to set the executable bit to the file:
```
chmod +x ./controlrelay.sh
```

## Usage
Once you download the script and have your mobile phone paired with your RPi you can start the script with the command:
```
nohup ./controlrelay.sh &
```

This will run the script on background.
