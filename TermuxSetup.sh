#!/bin/bash
# Author.......: Riccardo Papa
# Version......: 2.6
# Usage........: bash TermuxSetup.sh

clear
echo """
			 ____________________________________________
			|			                     |
			|        The Code By :- Riccardo Papa        |
			|	 Telegram :- @PaposinDT              |
			|        Facebook :- https://cutt.us/kfNBv   |
			|        Youtube :-  https://cutt.us/fp49D   |
			|        Git Hub :- github.com/PaposinDT     |
            		|        Instagram:- https://cutt.us/2ZDRu   |
			|___________________________________________ |
"""

sleep 2
echo "					Version 2.6
                    	 	 Coded By Riccardo Papa
           	 	Want to support me?  paypal.me/ricky2006"
sleep 1

echo "This is a little installation for Termux.
You can find the full project here:
▶ https://github.com/PaposinDT/KaliSetup"
sleep 2

echo "⚠️  This tool is created for educational purposes only!"
sleep 1

echo "📡 Installation speed depends on your internet signal"
sleep 1
echo "⏳ This process might take up to 3 minutes"
sleep 1
echo -e "\n🔧 Installing...\n"
sleep 1

# Funzione per clonare solo se esiste
clone_if_exists() {
  local url="$1"
  local name="$2"
  local bar="$3"

  echo "Cloning $name: $bar"
  if curl --head --silent --fail "${url%.git}" > /dev/null; then
    git clone "$url" --quiet
  else
    echo "❌ Repo $name non trovata o rimossa, salto."
  fi
}

# Esegui script hacking
mkdir -p ./Tools
./Hacking.sh
cd ./Tools

echo
echo "🛠️  INSTALLING GENERIC TOOLS"
sleep 2
echo "Cloning 5 repositories"
sleep 2

clone_if_exists "https://github.com/rajkumardusad/Tool-X.git"           "Tool-X"           "|-|-|-|-|-|"
clone_if_exists "https://github.com/TheSpeedX/TBomb.git"               "TBomb"            "|-|-|-|-|"
clone_if_exists "git://github.com/htr-tech/unfollow-plus.git"          "unfollow-plus"    "|-|-|-|"
clone_if_exists "https://github.com/Nikait/ni_bomber"                  "ni_bomber"        "|-|-|"
clone_if_exists "https://github.com/htr-tech/bash2mp4"                 "bash2mp4"         "|-|"

sleep 2
echo
echo "✅ INSTALLATION COMPLETED."
echo "Removing unnecessary files."
rm -rf Hacking.sh
rm -rf LICENSE
rm -rf README.md
rm -rf TermuxSetup.sh
rm -rf Phishing.sh
rm -rf Information-Gathering.sh
rm -rf DDoS.sh
echo "Renaming Folder."
cd ..
mv TermuxSetup Ethical-Hacking
echo "🌟 If you like the script, please leave a star on the GitHub repo!"

