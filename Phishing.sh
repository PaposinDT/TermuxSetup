#!/bin/bash
#Author.......: Riccardo Papa
mkdir ./Phishing
./Information-Gathering.sh
cd ./Phishing
echo
echo "INSTALLING PHISHING TOOLS"
sleep 2
echo "Cloning 4 repositories"
echo
sleep 2
echo "Cloning zphisher:                 |-|-|-|-|"
git clone git://github.com/htr-tech/zphisher.git --quiet
echo "Cloning nexphisher:               |-|-|-|"
git clone git://github.com/htr-tech/nexphisher.git --quiet
echo "Cloning maskphish:                |-|-|"
git clone https://github.com/jaykali/maskphish --quiet
echo "Cloning mrphish:                  |-|"
git clone https://github.com/noob-hackers/mrphish --quiet
sleep 2
