**STEPS:**

1. Open command prompt and create a new directory.

2. Install the [vagrant-reload](https://github.com/aidanns/vagrant-reload) plugin. This is required to do a restart of the VM after the provisioning has completed. Use `vagrant plugin install vagrant-reload` to install. If the plugin is not installed, and `vagrant up` is used, the process will abort with an error saying the plugin is missing. 


3. Go to that directory and type in 'vagrant init datacastle/windows7'. This will create a Vagrantfile.

4. Add the InstallChocolatey.bat, InstallJava.bat and InstallToolandFiles.bat files in the directory where you have the    
   vagrantfile.

5. Replace the contents of the existing Vagrantfile in the directory with the contents of the Vagrantfile given here.

6. Open command prompt and type the command 'vagrant up --provider virtualbox'.

7. Following can be observed:
    Base box image is downloaded and added in Vagrant.
    
    Virtual machine is created and loaded using this VirtualBox.
    
    VM is launched in GUI mode.
    
    Java 1.7 is installed using Chocolatey.
    
    Eclipse and all the required text files are installed.
  
    You are asked for login credentials. Username is vagrant and Password is vagrant.
    
    You will be asked to actiavte windows online ( Do it and the OS will be active for 90 days).

8. Open Eclipse  after you log in and it has the tool YODA configured in it. You can right click and see the YODA plugin

9. For steps to see the tool in action, refer to Readme.txt on the desktop.

**NOTE:**
1. After vagrant up command, it takes quite a lot of time for all the software and files to be installed.

2. Please wait for the vagrant up command to be finished and then you can log in to the VM.


**References:**
  1. Vagrant box can be found at [datacastle/windows7](https://atlas.hashicorp.com/datacastle/boxes/windows7)

  2. Chocolatey script [github](https://github.com/chocolatey/choco/wiki/Installation#command-line)
  
  3. 

