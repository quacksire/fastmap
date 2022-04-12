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

This is what it should look like:

![i](/docs/i.png)

This will cause the program to loop from 80-100 (20 times). This value can be changed according to your needs but DO NOT go above 100.
Every time you return a commnand, the value of "i" will increment hence causing the application to terminate after the limit is reached.

# All Commands and Usage

`>>> help`: Displays help list

`>>> ping`: Opens ping modue

To use this module, follow the exmaple given below:

![pingexample](/docs/ping_example.png)

`>>> fapi`: Opens Fing API calling module

To use this module you must configure your Fing API on your computer or any device on the network. Enter the Fing API url with key after the `?` as shown on the Fing app's local API page. Simple enter the Fing API url and follow the steps.

Next you will have an option to display all the raw `.json` data. ONLY enter `y` or `n` as the program does not have data verification in place at the moment.
If you do not wish to display the raw data enter `n` to the console and press enter. This will give you an option to parse the json data with jq.

jq is a command line json data parser. You can find the syntax manual/documentation for it [here](https://stedolan.github.io/jq/manual/)

`>>> netmap`: Opens netmap modue (extension of nmap tool)

Follow the steps: enter the IP you wish to scan and press enter. Then you will get an option to select the type of scan you wish to perform. 
There are multiple types of scans you can perform ranging from ARP scans to port scans.

Example:

![lpscan](/docs/lpscan.png)

The `lp` scan lists all the open ports with a count so that you don't need to go through all the salad of text that nmap throws into the terminal. 
Of course there is an option to do a normal port scan with triple verbosity as shown in the screenshot `port`. Simple type in the scan you wish to perform and the program will do the rest.

