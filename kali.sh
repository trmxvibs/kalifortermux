#!/bin/bash

# Run termux-setup-storage to give Termux access to internal storage
termux-setup-storage

# Install wget if not already installed
pkg install wget -y

# Download the Kali Nethunter installation script
wget -O install-nethunter-termux https://offs.ec/2MceZWr

# Make the script executable
chmod +x install-nethunter-termux

# Execute the installation script
./install-nethunter-termux
