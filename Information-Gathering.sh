#!/bin/bash
# Author.......: Riccardo Papa

# Funzione per clonare solo se la repo esiste
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

mkdir -p ./Information-Gathering
./DDoS.sh
cd ./Information-Gathering

echo
echo "📡 INSTALLING INFORMATION GATHERING TOOLS"
sleep 2
echo "Cloning 4 repositories"
echo
sleep 2

clone_if_exists "https://github.com/rajkumardusad/IP-Tracer.git"           "IP-Tracer"           "|-|-|-|-|"
clone_if_exists "https://github.com/th3unkn0n/osi.ig.git"                  "osi.ig"              "|-|-|-|"
clone_if_exists "https://github.com/th3unkn0n/TeleGram-Scraper.git"       "TeleGram-Scraper"    "|-|-|"
clone_if_exists "https://github.com/noob-hackers/ipdrone"                 "ipdrone"             "|-|"

sleep 2
