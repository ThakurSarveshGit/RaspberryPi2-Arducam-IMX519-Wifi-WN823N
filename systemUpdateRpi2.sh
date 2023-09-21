# This script adds a stable mirror to update the RPi2 on bullseye os

# Edit sources.list
sed -i '1,3 s/^/#/' # Comment out official raspberry pi mirror, it's broken most times.
echo "deb http://raspbian.mirror.uk.sargasso.net/raspbian/ bullseye main contrib non-free rpi" >> /etc/apt/sources.list

sudo apt update
sudo apt full-upgrade