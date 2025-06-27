#!/bin/bash
echo "Parrot Security tool Uninstalling script running....."

packages=(
    "swaks" "socat" "seclists" "nmap" "recon-ng" "binwalk" "etherape" "p0f"
    "maltego" "yt-dlp" "zoph" "hackthebox-icon-theme" "hamster-sidejack"
    "hashcat-data" "hashcat" "netdiscover" "netcat-traditional" "ngrok"
    "nikto" "ow-tools" "ow-shell" "powercat" "powershell-empire" "powershell"
    "forensic-artifacts" "parrot-tools-forensics" "sleuthkit" "youtube-dl"
    "hamster-time-tracker" "ferret-sidejack" "gnome-shell-extension-hamster"
    "ettercap-common" "ettercap-graphical" "parrot-tools-sniff" "parrot-tools-wireless"
    "parrot-tools-web" "parrot-tools-vuln" "parrot-tools-reversing"
    "parrot-tools-reporting" "parrot-tools-pwn" "parrot-tools-postexploit"
    "parrot-tools-password" "parrot-tools-maintain" "parrot-tools-infogathering"
    "parrot-tools-full" "parrot-tools-cloud" "parrot-tools-automotive"
    "ike-scan" "ssldump" "sslscan" "rizin-cutter" "ghidra" "smali" "dex2jar"
    "gdb" "can-utils")

#removed "hamster-sidejack" (appeared twice) and kept yt-dlp

echo "Starting removal of parrot sec tools"

for pkg in "${unique_packages[@]}"; do
    echo "Attempting to remove ${pkg}..."
    # Removed -y, so it is gonna ask for confirmation for each package (for better control)
    sudo apt remove --purge "$pkg"
    # Checks if the removal was successful before going to the next stage
    if [ $? -eq 0 ]; then
        echo "${pkg} removed successfully."
    else
        echo "Warning: Could not remove ${pkg} or it's not installed."
    fi
    echo "" # just a spacing
done

echo "Cleaning up parrot sec dependencies"
sudo apt autoremove

echo "Uninstalling parrot sec tools completed."

