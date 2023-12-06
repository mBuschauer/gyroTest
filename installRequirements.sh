#!/bin/bash
# Exit if we encounter an error
set -e
# Set permissions for us to access GPIO and I2C from user space
sudo ./setPermissions.sh $USER
# Then install servokit
sudo apt-get install python3.8 -y
sudo apt-get install python-pip -y
sudo apt-get install adafruit-circuitpython-bno055
sudo update-alternatives --install /usr/bin/python python3 /usr/bin/python3.8 1
sudo update-alternatives --config python
sudo update-alternatives  --set python /usr/bin/python3.8

echo ""
echo "Adafruit CircuitPython BNO055 Installed"
echo "Please logoff/logon or reboot in order for I2C permissions to take effect."
echo ""


