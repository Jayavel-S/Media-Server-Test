# Script to install the latest version of docker and docker-compose along with media applications in Ubuntu.

# Caching sudo access for install completion
sudo true

# Official docker install script
wget -qO- https://get.docker.com/ | sh

# Adding User Permissions
sudo usermod -aG docker ${USER}

# Install the prerequisites for setting up docker-compose
sudo apt-get install -y libffi-dev libssl-dev
sudo apt-get install -y python3-dev
sudo apt-get install -y python3 python3-pip

# Installing docker-compose using pip3
sudo pip3 install -y docker-compose

# Enabling docker to start automatically on hardware reboot
sudo systemctl enable docker

# Install the stack
sudo docker-compose up -d
