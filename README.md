![image](https://github.com/user-attachments/assets/b9f9cb33-697c-4923-9fec-156558006e17)

###  Installation  for Termux

This repository contains a simple bash script to automate the installation process of Kali Nethunter in Termux, an Android terminal emulator and Linux environment app.

## $${\color{red}Prerequisites}$$

Before running the script, ensure you have the following prerequisites:

- **Termux** [https://f-droid.org/repo/com.termux_1020.apk] app installed on your Android device.
- ***Internet connection***
- ***Sufficient storage space available on your device.*** `1GB to 8GB`

## $${\color{red}Installation}$$

1. Open Termux on your Android device.

2. Grant storage access to Termux using the following command.
```bash
termux-setup-storage
```
4. first install the `git` package.
```bash
pkg install git -y
```

6. Install the `wget` package if it's not already installed.
```bash
pkg install wget -y 
```
7. Download the Kali Nethunter installation script.
```bash
git clone https://github.com/trmxvibs/kalifortermux && cd kalifortermux 
```
8. Make the script executable.
```bash
chmod +x kali.sh setup
```
9. Execute the setup scrip.
```bash
./setup
```

Follow any prompts or instructions that appear during the installation process.

## Disclaimer

This script is provided as-is and without warranty. Use it at your own risk. Make sure to review and understand the commands in the script before executing it. Always download scripts from trusted sources..

## Contributing

Contributions to improve this script or the README file are welcome! If you have suggestions or find any issues, feel free to open an issue or create a pull request.

## License

**This script is licensed under the [MIT License](LICENSE).**
