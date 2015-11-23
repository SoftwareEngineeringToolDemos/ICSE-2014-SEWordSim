sudo apt-get update
sudo apt-get install -y openjdk-7-jdk
git clone https://github.com/SoftwareEngineeringToolDemos/ICSE-2014-SEWordSim.git /home/vagrant/Desktop/ICSE-2014-SEWordSim
chmod +x /home/vagrant/Desktop/ICSE-2014-SEWordSim
mv /home/vagrant/Desktop/ICSE-2014-SEWordSim/build-vm/vm-contents/* /home/vagrant/Desktop/
rm -rf /home/vagrant/Desktop/ICSE-2014-SEWordSim
