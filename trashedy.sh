#!/bin/bash
echo "Parrot Security tool Uninstalling script running....."
# read uninstallpkg
packages=("swaks" "socat" "seclists" "nmap" "recon-ng" "binwalk" "etherape" "p0f" "maltego" "yt-dlp" "zoph" "hackthebox-icon-theme" "hamster-sidejack" "hashcat-data" "hashcat" "netdiscover" "netcat-traditional" "ngrok" "nikto" "ow-tools" "ow-shell" "powercat" "powershell-empire" "powershell" "forensic-artifacts" "parrot-tools-forensics" "sleuthkit" "youtube-dl" "hamster-time-tracker" "ferret-sidejack" "gnome-shell-extension-hamster" "hamster-sidejack" "ettercap-common" "ettercap-graphical" "parrot-tools-sniff" "parrot-tools-wireless" "parrot-tools-web" "parrot-tools-vuln" "parrot-tools-reversing" "parrot-tools-reporting" "parrot-tools-pwn" "parrot-tools-postexploit" "parrot-tools-password" "parrot-tools-maintain" "parrot-tools-infogathering" "parrot-tools-full" "parrot-tools-cloud" "parrot-tools-automotive" "ike-scan" "ssldump" "sslscan" "rizin-cutter" "ghidra" "smali" "dex2jar" "gdb" "can-utils") 

for ((i=0;i<${#packages[*]};i++));do
    echo "Removing ${packages[$i]} started..."
    sudo apt remove --purge -y ${packages[$i]} && sudo apt autoremove -y
    echo "${packages[$i]} Removed..."
done
