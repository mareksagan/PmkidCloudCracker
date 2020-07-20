# PmkidCloudCracker
WPA2 PMKID password cracking security toolset (Kali Linux, Airgeddon, Alibaba Cloud ECS, Hashcat)

# Instructions
1. Download the newest ISO of the Kali Linux [here](https://cdimage.kali.org/kali-2020.2/kali-linux-2020.2-live-amd64.iso)
2. Prepare an USB flashdrive (4+GB) or a virtual machine environment **(not recommended)**
3. Install the ISO file on the flashdisk using [Rufus](https://github.com/pbatard/rufus/releases/download/v3.11/rufus-3.11p.exe) and rufus.ini file from the repo
4. Remember to create a *DATA partition* on your flashdisk using *Rufus* and the new experimental settings (typically ~800MB)
5. Once the process is complete, format the *DATA partition* using the Disk Management tool if you're on Windows 10
6. Navigate to the *DATA partition*
7. `git clone https://github.com/mareksagan/PmkidCloudCracker.git`
8. Reboot and connect your external WiFi card with **Ralink 3070L chip** and a directional panel antenna for best effects
9. Connect to your WiFi network using your internal WiFi card
10. `sudo su`
11. `cd /media/kali/DATA/`
12. `bash install-airgeddon-kali.sh`
13. `airgeddon`
14. Step through the first run wizard which will install the missing dependencies
15. Exit airgeddon after the dependencies have been installed
16. `airgeddon`
17. Pick your external WiFi card and put it in the monitor mode **(2)**
18. In the main menu select *Handshake tools menu* **(5)**
19. Find a target **(4)**
20. Play with different options to capture a PMKID (the results may vary)
21. Once you've captured the PMKID, *airgeddon* should offer to save a TXT file containing a PMKID hash
22. Save the mentioned PMKID hashfile on the *DATA partition* and exit *airgeddon*
23. Create a cloud account e.g. [here](https://www.alibabacloud.com) and order a strong GPU instance e.g. *V100* with the GPU drivers already installed
24. Once you have the [SSH client](https://download.mobatek.net/2022020030522248/MobaXterm_Portable_v20.2.zip) and the SSH connection set, connect to your GPU instance and perform the first run (drivers take some time to download and install)
25. Upload the captured PMKID hashfile *pmkid.txt* and the *install-aliyun-hashcat.sh* script to your GPU instance
26. `bash install-aliyun-hashcat.sh`
27. Be patient and **wealthy** (works on most routers)
