#enable auto login
sudo mkdir /etc/lightdm/lightdm.conf.d
sudo bash -c 'printf "[SeatDefaults]\nautologin-user=Vagrant" > /etc/lightdm/lightdm.conf.d/50-myconfig.conf'

#system update
sudo apt-get update

#install git and java
sudo apt-get install -y openjdk-7-jdk git

#clone items to desktop
git clone https://github.com/SoftwareEngineeringToolDemos/ICSE-2014-SEWordSim.git /home/vagrant/Desktop/ICSE-2014-SEWordSim
chmod +x /home/vagrant/Desktop/ICSE-2014-SEWordSim
sudo mv /home/vagrant/Desktop/ICSE-2014-SEWordSim/build-vm/vm-contents/* /home/vagrant/Desktop/

#download database
sudo wget -nv "https://googledrive.com/host/0B8cuz9Ureg2bQ05MZFVJeUt1R0k" -O SEWordSim-r1.db 
sudo cp /home/vagrant/SEWordSim-r1.db /home/vagrant/Desktop/Executable
#mv /home/SEWor.* /home/vagrant/Desktop/Executable
sudo mkdir /home/vagrant/.config/autostart
sudo cp /home/vagrant/Desktop/launch_SE_WordSim.desktop /home/vagrant/.config/autostart
sudo rm -rf /home/vagrant/Desktop/ICSE-2014-SEWordSim
sudo rm /home/vagrant/Desktop/launch_SE_WordSim.sh
sudo chown vagrant -R /home/vagrant
sudo chown vagrant -R /home/vagrant/Desktop
sudo chmod +x /home/vagrant/Desktop/Executable/*

#set up sidebar
sudo rm -f "/usr/share/applications/libreoffice-writer.desktop" 2 > /dev/null
sudo rm -f "/usr/share/applications/libreoffice-calc.desktop" 2 > /dev/null
sudo rm -f "/usr/share/applications/libreoffice-impress.desktop" 2 > /dev/null
sudo rm -f "/usr/share/applications/amazon-default.desktop" 2 > /dev/null
sudo rm -f "/usr/share/applications/ubuntu-software-center.desktop" 2 > /dev/null

#system reboot
sudo reboot
