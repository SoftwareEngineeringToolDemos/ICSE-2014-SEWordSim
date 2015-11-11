#How to build your own Virtual Machine?
###The following steps shows how you can spin up a Virtual Machine for tool SEWordSim :

1. Install [vagrant] (https://www.vagrantup.com/downloads.html) and [virtualbox] (https://www.virtualbox.org/wiki/Downloads) on your host machine.
2. Download the [Vagrantfile] () from [build-vm] () folder on your machine and save it in a folder where you want to install the VM.
3. From the host, navigate to that folder (via bash on Linux Machine or Powershell or CommandPrompt on Windows Machine) and execute the command :  
      "vagrant up"

###Note :
 -  The Virtual Machine will boot up quickly and can be viewed from the Virtual Box but has to wait for the "vagrant up" command for nearly half an hour to complete as it provisions the VM for use.
 -  Deploys Base Vagrant Box : [Ubuntu 14.04 Desktop] (https://vagrantcloud.com/box-cutter/boxes/ubuntu1404-desktop)
 -  Default VM Login Credentials:  
      user: vagrant  
      password: vagrant

###Acknowledgements:

  + Commands for installing Java 8 have been taken from [Andrew Glover's](https://github.com/aglover) [github repository](https://github.com/aglover/ubuntu-equip).
  + Commands for installing Eclipse have been taken from [this blog](http://blog.versioneye.com/2015/05/05/setting-up-a-dev-environment-with-vagrant/).

