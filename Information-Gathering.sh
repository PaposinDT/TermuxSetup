#!/bin/bash
#Author.......: Riccardo Papa
mkdir ./Information-Gathering
./DDoS.sh
cd ./Information-Gathering
echo
echo "INSTALLING INFORMATION GATHERING TOOLS"
sleep 2
echo "Cloning 4 repositories"
echo
sleep 2
echo "Cloning IP-Tracer:                |-|-|-|-|"
git clone https://github.com/rajkumardusad/IP-Tracer.git --quiet
echo "Cloning osi.ig:                   |-|-|-|"
git clone https://github.com/th3unkn0n/osi.ig.git --quiet
echo "Cloning TeleGram-Scraper:         |-|-|" 
git clone https://github.com/th3unkn0n/TeleGram-Scraper.git --quiet
echo "Cloning ipdrone:                  |-|"
git clone https://github.com/noob-hackers/ipdrone --quiet
sleep 2
