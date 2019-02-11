# Steps to get started with BurpSmartBuster(https://github.com/pathetiq/BurpSmartBuster) 
1. Download the vagrant setup file from : https://www.vagrantup.com/downloads.html
2. Make sure you also have VirtualBox installed on your local machine. Download from: https://www.virtualbox.org/wiki/Downloads
3. Next clone this git repository to your local machine.
4. Open a cmd prompt, navigate to the Vagrant-BurpSmartBuster directory on your local machine.
5. Type : vagrant up
6. You should see a bunch of commands being executed and VM being downloaded.
7. After the execution of the vagrant script, open virtualBox.
8. You will see a VM already running. Click on "show" button on this VM.
9. The VM launches in GUI mode, you might have to increase the scale factor to 150%.
10. Once you lunch the VM, open a terminal, type the below command:
java -jar /home/vagrant/burpsuite_free_v1.7.18.jar --user-config-file=/vagrant/burpConfig.json.
11. This should launch Burp suite with a config file that loads the BurpSmartBuster Extension.
12. Add a Site as in scope for the BurpSmartBuster to start content discovery.




