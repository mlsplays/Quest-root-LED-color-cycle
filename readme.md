# Quest LED color cycle
### Note this script was made for the Quest 1 *However* it will probably work on a 2, Pro, 3, or 3s as they use the same LED control
 Set 3 colors to cycle through and how quickly they cycle 
## Instructions:

 - Download the script 
 - Push the file to the device (like /sdcard)
 - Run "adb shell chmod +x /your/directory/here/cycle-led.sh"
 - **If on Quest 1** run "adb root"
 - Finally run "adb shell sh /your/directory/here/cycle-led.sh (time in seconds)" 
 **To change colors edit the script and change the values, then save**

 ## Magisk module instructions:
 - Download module
 - **To set custom colors/delay unzip the module, open "cycle_led.sh" and make desired changes. Rezip by CTL+A then right click compress to zip** 
 - Push to headset
 - Install and reboot

 
 You can use a online conversion tool to get your RGB values or you can guess
