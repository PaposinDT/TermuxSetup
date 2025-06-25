#!/bin/bash
# Author.......: Riccardo Papa

mkdir -p ./Hacking
./Phishing.sh
cd ./Hacking

echo
echo "INSTALLING HACKING TOOLS"
sleep 2
echo "Cloning 10 repositories"
echo
sleep 2

clone_if_exists() {
  local url="$1"
  local name="$2"
  local bar="$3"

  echo "Cloning $name: $bar"
  
  # Rimuove .git se presente per il controllo
  check_url="${url%.git}"
  
  if curl --head --silent --fail "$check_url" > /dev/null; then
    git clone "$url" --quiet
  else
    echo "❌ Repo $name non trovata o rimossa, salto."
  fi
}

clone_if_exists "https://github.com/thehackingsage/hacktronian.git" "hacktronian"              "|-|-|-|-|-|-|-|-|-|-|-|-|"
clone_if_exists "https://github.com/noob-hackers/ighack"             "ighack"                   "|-|-|-|-|-|-|-|-|-|-|-|"
clone_if_exists "https://github.com/rajkumardusad/onex.git"         "onex"                     "|-|-|-|-|-|-|-|-|"
clone_if_exists "https://github.com/jaykali/hackerpro.git"          "hackerpro"                "|-|-|-|-|-|-|-|"
clone_if_exists "https://github.com/noob-hackers/infect"            "infect"                   "|-|-|-|-|-|-|"
clone_if_exists "https://github.com/samsesh/SocialBox-Termux.git"   "SocialBox-Termux"         "|-|-|-|-|-|"
clone_if_exists "https://github.com/noob-hackers/grabcam"           "grabcam"                  "|-|-|-|-|"
clone_if_exists "https://github.com/dark-player/igbrute"            "igbrute"                  "|-|-|-|"
clone_if_exists "https://github.com/thegeniesghost/ghost_brute.git" "ghost_brute"              "|-|-|"
clone_if_exists "https://github.com/th3unkn0n/facebash-termux.git"  "facebash-termux"          "|-|"

sleep 2
