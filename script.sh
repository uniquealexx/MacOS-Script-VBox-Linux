#!/bin/bash

# the usual location of Virtualbox on Linux (the distribution used for testing the script: Ubuntu 24.04 LTS, Virtualbox downloaded using the deb package)
cd "/usr/lib/virtualbox"

# instead of "MacOS", we write the name of your virtual machine, or its UUID (for example: {03200af3-ac8b-4829-8d2a-1dcf8d2178e3})
VBoxManage modifyvm MacOS --cpuidset 00000001 000106e5 00100800 0098e3fd bfebfbff
VBoxManage modifyvm MacOS --cpu-profile "Intel Core i7-6700K"
VBoxManage setextradata MacOS "VBoxInternal/Devices/efi/0/Config/DmiSystemProduct" "iMac11,3"
VBoxManage setextradata MacOS "VBoxInternal/Devices/efi/0/Config/DmiSystemVersion" "1.0"
VBoxManage setextradata MacOS "VBoxInternal/Devices/efi/0/Config/DmiBoardProduct" "Hackboard"
VBoxManage setextradata MacOS "VBoxInternal/Devices/smc/0/Config/DeviceKey" "ourhardworkbythesewordsguardedpleasedontsteal(c)AppleComputerInc"
VBoxManage setextradata MacOS "VBoxInternal/Devices/smc/0/Config/GetKeyFromRealSMC" 1

# here, instead of "1920x1080", we specify your screen resolution (if it corresponds, then you do not need to change it)
VBoxManage setextradata "MacOS" VBoxInternal2/EfiGraphicsResolution 1920x1080
