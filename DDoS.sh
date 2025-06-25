#!/bin/bash
# Author.......: Riccardo Papa

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

mkdir -p ./DDoS
cd ./DDoS

echo
echo "🚀 INSTALLING DDOS TOOLS"
sleep 2
echo "Cloning 4 repositories"
echo
sleep 2

clone_if_exists "https://github.com/LimerBoy/Impulse.git"             "Impulse"        "|-|-|-|-|"
clone_if_exists "https://github.com/XCHADXFAQ77X/XERXES.git"          "XERXES"         "|-|-|-|"
clone_if_exists "https://github.com/VaimpierOfficial/Vaim-sms.git"    "Vaim-sms"       "|-|-|"
clone_if_exists "https://github.com/Bhai4You/Ip-Attack.git"           "Ip-Attack"      "|-|"

sleep 2
