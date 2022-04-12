![FASTMAP](/docs/fastmap_icon.png)

Fastmap is an efficient networking tool for linux. It combines the power of nmap, fing's api and much more.

# Installation

```bash
git clone https://github.com/FluffySnowman/fastmap.git

cd fastmap

chmod +x main.sh
```

# Prerequisites

You must have these libraries installed.

```
figlet
curl
jq
lolcat
nmap
sudo
```

Install these with your prefered package manager for your linux distribution (apt, pacman, yum, dnf etc.).

Example- for debian distributions, the installation would look like this: 
```
sudo apt-get install figlet curl jq lolcat nmap sudo
```

# Usage

This command line application is very versatile and can run `x` amount of times depending on your requirements.
The first variable you will have to enter to start the program will be "i". This is the value of a number below 100 to which the program will loop and the value of "i" will increment till it reaches 100 after which the program will terminate.
