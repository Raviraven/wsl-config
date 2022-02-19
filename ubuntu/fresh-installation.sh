#!/bin/sh
#to run it - chmod 755 ./fresh-installation.sh
# simply call ./fresh-installation.sh
# some nerd font should be installed before.
# https://www.nerdfonts.com/

# 1. Update distro
sudo apt-get update
sudo apt-get upgrade -y

# 2. install node + npm
curl -fsSL https://deb.nodesource.com/setup_17.x | sudo -E bash -
sudo apt-get install -y nodejs

# 3. install zsh
sudo apt-get install -y zsh
chsh -s $(which zsh)

4. install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# 5. install powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# 6. install starship
sudo sh -c "$(curl -fsSL https://starship.rs/install.sh)" -- -y

# a. add configuration file
mkdir -p ~/.config && touch ~/.config/starship.toml

# b. export current configuration
export STARSHIP_CONFIG=~/.config/starship.toml

# 7. install dotnet 5 & 6
wget https://packages.microsoft.com/config/ubuntu/21.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb

sudo apt-get update; \
  sudo apt-get install -y apt-transport-https && \
  sudo apt-get update && \
  sudo apt-get install -y dotnet-sdk-6.0 


sudo apt-get update; \
    sudo apt-get install -y apt-transport-https && \
    sudo apt-get update && \
    sudo apt-get install -y dotnet-sdk-5.0

# 8. Install exa
#sudo apt install exa
wget -c http://old-releases.ubuntu.com/ubuntu/pool/universe/r/rust-exa/exa_0.9.0-4_amd64.deb
sudo apt-get install ./exa_0.9.0-4_amd64.deb

# 9. copy configurations
cp ./configurations/.zshrc ~/
cp ./configurations/.p10k.zsh ~/
cp ./configurations/starship.toml ~/.config/
cp ../gitconfig ~/
