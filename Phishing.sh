#!/bin/bash
# Author.......: Riccardo Papa

mkdir -p ./Phishing
./Information-Gathering.sh
cd ./Phishing

echo
echo "INSTALLING PHISHING TOOLS"
sleep 2
echo "Cloning 4 repositories"
echo
sleep 2

clone_if_exists() {
  local url="$1"
  local name="$2"

  echo "Cloning $name: $3"

  # Verifica che la repo esista
  if curl --head --silent --fail "${url%.git}" > /dev/null; then
    git clone "$url" --quiet
  else
    echo "❌ Repo $name non trovata o rimossa, salto."
  fi
}

clone_if_exists "git://github.com/htr-tech/zphisher.git" "zphisher" "               |-|-|-|-|"
clone_if_exists "git://github.com/htr-tech/nexphisher.git" "nexphisher" "           |-|-|-|"
clone_if_exists "https://github.com/jaykali/maskphish" "maskphish" "                |-|-|"
clone_if_exists "https://github.com/noob-hackers/mrphish" "mrphish" "               |-|"

sleep 2
