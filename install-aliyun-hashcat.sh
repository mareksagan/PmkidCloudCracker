#!/bin/bash
sudo yum update
sudo yum upgrade
sudo yum install clinfo unzip p7zip
sudo yum install build-essential linux-headers-$(uname -r)
sudo yum install -yq python3-pip 
pip3 install psutil
wget https://hashcat.net/files/hashcat-6.0.0.7z --no-check-certificate
wget https://github.com/hashcat/hashcat-utils/releases/download/v1.9/hashcat-utils-1.9.7z
p7zip x hashcat-6.0.0.7z
p7zip x hashcat-utils-1.9.7z
mv hashcat-6.0.0 hashcat
rm hashcat-6.0.0.7z
mv hashcat-utils-1.9 hashcatutils
rm hashcat-utils-1.9.7z
screen -S hashcat ./hashcat/hashcat.bin -m 16800 pmkid.txt -a 3 -w 3 '?u?u?u?u?u?u?u?u'
