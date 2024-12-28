#!/bin/bash

# Professional installation script for Kali Nethunter in Termux
# Author: trmxvibs
# Date: 2024-12-28

# Color definitions
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
NC='\033[0m'  # No Color

# Function to display a loading bar
loading_bar() {
    echo -ne "${BLUE}[#####                     ] (10%)${NC}\r"
    sleep 0.5
    echo -ne "${BLUE}[##########                ] (30%)${NC}\r"
    sleep 0.5
    echo -ne "${BLUE}[###############           ] (50%)${NC}\r"
    sleep 0.5
    echo -ne "${BLUE}[####################      ] (70%)${NC}\r"
    sleep 0.5
    echo -ne "${BLUE}[##########################] (100%)${NC}\r"
    echo -ne '\n'
}

# Function to display a spinning loader
spinning_loader() {
    spinner='|/-\'
    for i in {1..10}; do
        printf "\r${CYAN}[${spinner:i%${#spinner}:1}]${NC} Loading..."
        sleep 0.2
    done
    printf "\r${CYAN}[✓]${NC} Done\n"
}

# Function to detect architecture
check_architecture() {
    ARCH=$(uname -m)
    if [ -z "$ARCH" ]; then
        echo -e "${RED}[X] No architecture detected. Exiting...${RED}"
        exit 1
    else
        echo -e "${GREEN}[~] Detected architecture: $ARCH${GREEN}"
        sleep 5
    fi
}

set -e  # Exit immediately if a command exits with a non-zero status

echo -e "${BLUE}[*]${GREEN} Starting the Kali Nethunter installation process..."
loading_bar

# Grant Termux access to internal storage
echo -e "${BLUE}[*]${GREEN} Configuring storage permissions for Termux..."
spinning_loader
termux-setup-storage

# Check architecture
echo -e "${BLUE}[*]${GREEN} Checking device architecture..."
loading_bar
check_architecture

# Install wget if not already installed
echo -e "${BLUE}[*]${CYAN} Ensuring wget is installed..."
spinning_loader
pkg install wget -y

# Download the Kali Nethunter installation script
echo -e "${BLUE}[*]${RED} Downloading the Kali Nethunter installation script..."
loading_bar
wget -O install-nethunter-termux https://offs.ec/2MceZWr
clear
# Make the script executable
echo -e "${BLUE}[*]${RED} Making the installation script executable..."
spinning_loader
chmod +x install-nethunter-termux

# Execute the installation script
echo -e "${BLUE}[*]${GREEN} Executing the installation script..."
loading_bar
./install-nethunter-termux

echo -e "${GREEN}[*]${BLUE} Kali Nethunter installation completed successfully!"
spinning_loader
#end








