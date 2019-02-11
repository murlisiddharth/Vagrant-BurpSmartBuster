#!/usr/bin/env bash

homeDir="/home/vagrant/"

#Install JRE
sudo apt-get install -y default-jre

#Get BurpSuite Jar from Portswigger
wget -c -O "burpsuite_free_v1.7.18.jar" --no-check-certificate --no-cookies "https://portswigger.net/Burp/Releases/Download?productId=100&version=1.7.18&type=Jar"

#Get Jython Jar
wget -c -O "jython-installer-2.7.0.jar" --no-check-certificate --no-cookies "http://search.maven.org/remotecontent?filepath=org/python/jython-installer/2.7.0/jython-installer-2.7.0.jar"

mkdir jython

#Install jython
java -jar jython-installer-2.7.0.jar -s -d /home/vagrant/jython

#install bs4 and tld
/home/vagrant/jython/bin/pip install bs4 tld

#Get requests 2.10
wget -c -O "requests-2.10.0-py2.py3-none-any.whl" --no-check-certificate --no-cookies https://pypi.python.org/packages/99/b4/63d99ba8e189c47d906b43bae18af4396e336f2b1bfec86af31efe2d2cb8/requests-2.10.0-py2.py3-none-any.whl#md5=abf5a77de3e8a5973c738cca884502a0

#Install Requests
/home/vagrant/jython/bin/pip install requests-2.10.0-py2.py3-none-any.whl 

#Install Git
sudo apt-get install -y git

#Clone Nltk repo form Git. Install sub-version 3.1
git clone https://github.com/nltk/nltk.git 
cd nltk
git checkout tags/3.1
/home/vagrant/jython/bin/jython setup.py install

#Clone TextBlob repo form Git. Install sub-version 0.11.0
cd ${homeDir}
git clone https://github.com/sloria/TextBlob.git 
cd TextBlob
git checkout tags/0.11.0
/home/vagrant/jython/bin/jython setup.py install

#Clone BurpSmartBuster repo form Git.
cd ${homeDir}
git clone https://github.com/pathetiq/BurpSmartBuster 

#Go to VirtualBox VM --> Launch the running VM --> Open termainal--> Paste the below cmd to launch burp with the user config file
#java -jar /home/vagrant/burpsuite_free_v1.7.18.jar --user-config-file=/vagrant/burpConfig.json