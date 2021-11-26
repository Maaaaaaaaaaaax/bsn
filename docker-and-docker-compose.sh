#!/bin/bash
apt update -y && apt upgrade -y && apt dist-upgrade -y && apt autoremove -y && apt autoclean
apt install etckeeper -y
apt update -y && apt upgrade -y && apt dist-upgrade -y && apt autoremove -y && apt autoclean
apt-get install -y ca-certificates curl gnupg lsb-release htop
apt update -y && apt upgrade -y && apt dist-upgrade -y && apt autoremove -y && apt autoclean
curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian \
    $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null
apt update -y && apt upgrade -y && apt dist-upgrade -y && apt autoremove -y && apt autoclean
apt-get install docker-ce docker-ce-cli containerd.io -y
curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
sudo usermod -aG docker $USER
reboot now