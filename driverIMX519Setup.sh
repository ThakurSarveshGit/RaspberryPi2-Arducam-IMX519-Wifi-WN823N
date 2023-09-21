# Get install script
wget -o install_pivariety_pkgs.sh https://github.com/ArduCAM/Arducam-Pivariety-V4L2-Driver/releases/download/install_script/install_pivariety_pkgs.sh

# Make executable
rm install_pivariety_pkgs.sh
mv install_pivariety_pkgs.sh.1 install_pivariety_pkgs.sh # Some bug which installs content in ...sh.1 file instead of ...sh
chmod +rwx install_pivariety_pkgs.sh

# Update Raspberry Pi
sudo apt update

# Install libcamera and IMX519 drivers
./install_pivariety_pkgs.sh -p libcamera_dev
./install_pivariety_pkgs.sh -p libcamera_apps
./install_pivariety_pkgs.sh -p imx519_kernel_driver # don't install imx519_kernel_slow_...

# Clone Autofocus Code Repo
git clone https://github.com/ArduCAM/Arducam-Pivariety-V4L2-Driver.git

# Update /boot/config.txt # To avoid buffer memory issues
sudo echo "dtoverlay=vc4-kms-v3d,cma-128" >> /boot/config.txt

# NOTE: LEGACY CAMERA SUPPORT needs to updated from raspi-config > Interface Options > Legacy Camera > Enable
