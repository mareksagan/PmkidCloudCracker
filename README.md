# PmkidCloudCracker
WPA2 PMKID password cracking security toolset using Airgeddon, Alibaba Cloud ECS and Hashcat

# Instructions
* Download the newest ISO of the Kali Linux [here](https://cdimage.kali.org/kali-2020.2/kali-linux-2020.2-live-amd64.iso)
* Prepare an USB flashdrive (4+GB) or a virtual machine environment **(not recommended)**
* Install the ISO file on the flashdisk using [Rufus](https://github.com/pbatard/rufus/releases/download/v3.11/rufus-3.11p.exe) and rufus.ini file from the repo
* Remeber to create a *DATA partition* on your flashdisk using *Rufus* and the new experimental settings (typically ~800MB)
* Once the process is complete, format the *DATA partition* using the Disk Management tool if you're on Windows 10
* Navigate to the *DATA partition*
* `git clone https://github.com/mareksagan/PmkidCloudCracker.git`
* Reboot and connect your external WiFi card with **Atheros AR9721 chip** for best effects
* Connect to your WiFi network using your internal WiFi card
* `sudo su`
* `cd /media/kali/DATA/`
* `bash install-airgeddon-kali.sh`
* `airgeddon`
* Step through the first run wizard which will install the missing dependencies
* Exit airgeddon after the dependencies have been installed
* `airgeddon`
* Pick your external WiFi card and put it in the monitor mode **(2)**
* In the main menu select *PMKID capture* **(5)**
* Find a target **(4)**
* Play with different options to capture a PMKID (the results may vary)
* Once you've captured the PMKID, airgeddon should offer to save a TXT file containing a PMKID hash
* Save the mentioned PMKID hashfile on the *DATA partition* and exit *airgeddon*
* Create a cloud account e.g. [here](https://www.alibabacloud.com) and order a strong GPU instance e.g. *V100* with the GPU drivers already installed
* Once you have the [SSH client](https://download.mobatek.net/2022020030522248/MobaXterm_Portable_v20.2.zip) and the SSH connection set, connect to your GPU instance and perform the first run (drivers take some time to download and install)
* Upload the captured PMKID hashfile *pmkid.txt* and the *install-aliyun-hashcat.sh* script to your GPU instance
* `bash install-aliyun-hashcat.sh`
* Be patient and **wealthy** (works on most routers)
