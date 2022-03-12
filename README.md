# Home Media Server Setup
This script helps you with installing the latest version of Docker and Docker Compose in Ubuntu and some essential applications for setting up your home media library.

## Prerequisites
 1. You need to have an ubuntu/debian based machine.
 
 2. Your instance should have the updated version of 'git' installed. You can check if you have git installed or not by running the command `git version` and have a look at the output.
 
       ![git version](https://user-images.githubusercontent.com/101336634/158008355-768918e3-7ced-462f-9a9f-e52e539c875b.png)
    
    If you do not have git installed, you can use the command `sudo apt install git` to install the latest version of git in your system.
    
 3. You need to know the PUID and PGID values for the current user. You can get that by running `id` and looking at the first two values. It will most likely be 1000,1000 or 1001,1001 unless you have some special purpose distros.
 
       ![id](https://user-images.githubusercontent.com/101336634/158009775-76741587-43c9-4180-88fb-8484224045cb.png)


## Installation

Open Putty or any ssh tool that you use to connect to your instance. Clone this repository to any directory.

`https://github.com/Jayavel-S/Media-Server` and cd into the parent directory `cd Media-Server`.

---

Here, you'll have three files
- **.env** (Most likely hidden by the system, used to declare the environment variables and the volume mappings)

- **docker-compose.yml** (the compose stack to install Portainer, Sonarr, Radarr, Sabnzbd, Deluge, Overseerr, Jackett, Tautulli, Plex, and Watchtower)

- **install.sh** (the script to install the docker engine and to setup the dependencies)

---

Before proceeding further, we need to update the environment variables (PUID, PGID, and the Time Zone) and the volume mappings as per your preference. This example uses the 'nano' editor but you can use any text editor of your choice.

`nano .env`

The script is named as **install.sh**. Run the script with elevated privileages.

**`sudo sh install.sh`**

This will pull the latest version of docker according to the platform that you are using (x86/x64/ARM) and also install the docker-compose relevant to that binary using python.

Reboot the system and check if the installation was successful.

`sudo reboot now` and once the machine is back up, run `docker version` or `docker-compose version`.

If they return the respective version values, the system has successfully processed the docker installation.
