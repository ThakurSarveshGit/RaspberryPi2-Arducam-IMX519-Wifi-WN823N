sudo apt-get install dkms

git clone --branch realtek-4.4.x https://github.com/Mange/rtl8192eu-linux-driver.git

# Manually make changes to make file
# Turn off : CONFIG_PLATFORM_I386_PC = n
# Turn on : CONFIG_PLATFORM_ARM_RPI = y

cd rtl8192eu-linux-driver/
sudo dkms add .
sudo dkms install rtl8192eu/1.0
sudo reboot # required