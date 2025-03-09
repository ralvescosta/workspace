#!/bin/bash

set -e  # Exit on any error

# Function to print section headers
print_section() {
    echo "==============================="
    echo "$1"
    echo "==============================="
}

# Update and upgrade system
print_section "Updating system..."
sudo apt update -y && sudo apt upgrade -y

# Install basic tools
print_section "Installing curl..."
sudo apt install curl -y

print_section "Installing wget and gpg..."
sudo apt install wget gpg tar apt-transport-https gnupg -y

print_section "Installing snapd..."
sudo apt install snapd -y

print_section "Installing GNOME Tweaks..."
sudo apt install gnome-tweaks -y

print_section "Installing basic OS libraries..."
sudo apt install libssl-dev build-essential cmake pkg-config llvm-dev libclang-dev clang lldb lld libmosquitto-dev manpages-dev libsqlite3-dev -y

# Configure Git
print_section "Configuring Git user name..."
git config --global user.name "ralvescosta"

print_section "Configuring Git user email..."
git config --global user.email "rafael.rac.mg@gmail.com"

# Install and configure Zsh and Oh-My-Zsh
print_section "Installing Zsh and Oh-My-Zsh..."
sudo apt install zsh -y
sh -c "$(wget -qO- https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" "" --unattended

print_section "Installing Zsh autosuggestions..."
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
echo "source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc

print_section "Installing Zsh syntax highlighting..."
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
echo "source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc

print_section "Installing Spaceship theme..."
git clone --depth=1 https://github.com/spaceship-prompt/spaceship-prompt.git ~/.oh-my-zsh/custom/themes/spaceship-prompt
ln -s ~/.oh-my-zsh/custom/themes/spaceship-prompt/spaceship.zsh-theme ~/.oh-my-zsh/custom/themes/spaceship.zsh-theme

print_section "Installing Fzf and Fzf-zsh..."
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --all --no-update-rc
git clone https://github.com/unixorn/fzf-zsh-plugin.git ~/.oh-my-zsh/custom/plugins/fzf-zsh-plugin

print_section "Installing Dracula theme for GNOME Terminal..."
sudo apt install dconf-cli -y
git clone https://github.com/dracula/gnome-terminal
cd gnome-terminal && ./install.sh --install --scheme=Dracula --profile=Dracula && cd ..

print_section "Installing asdf..."
curl -LO https://github.com/asdf-vm/asdf/releases/download/v0.16.5/asdf-v0.16.5-linux-amd64.tar.gz
tar -xzf asdf-v0.16.5-linux-amd64.tar.gz 
mv asdf /usr/bin
chmod +x /usr/bin/asdf
rm -rf asdf-v0.16.5-linux-amd64.tar.gz
mkdir $HOME/.asdf
mkdir -p "${ASDF_DATA_DIR:-$HOME/.asdf}/completions"
asdf completion zsh > "${ASDF_DATA_DIR:-$HOME/.asdf}/completions/_asdf"
asdf --version

# Configure Zsh
print_section "Configuring Zsh..."
cat <<EOF > ~/.zshrc
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="spaceship"

plugins=(
  git 
  zsh-autosuggestions 
  zsh-syntax-highlighting 
  fzf-zsh-plugin
)

source \$ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"
fpath=(${ASDF_DATA_DIR:-$HOME/.asdf}/completions $fpath)
autoload -Uz compinit && compinit

export JAVA_HOME=
export ANDROID_HOME=~/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH="$PATH:/opt/nvim-linux64/bin"
export PATH=/home/ralvescosta/.local/bin:$PATH
export NVIM_DIR=$HOME/.config/nvim
export GOPRIVATE='bitbucket.org/'
export GIT_USERNAME="ralvescosta"
export GIT_PASSWORD=""

alias get_idf='. $HOME/esp/esp-idf/export.sh'
alias k='kubectl'
alias d='docker'
alias ts3='//usr/local/TeamSpeak3-Client-linux_amd64/ts3client_runscript.sh'
alias dvt='make -C /home/ralvescosta/Documents/Asap/Repositories/shared-dvt'
alias tef-client='java -Dfile.encoding=ISO-8859-1 -Xmx512m -jar $HOME/Documents/Asap/Simulators/TEF-CLIENT-SIMULATOR-V3.jar'

export OPENAI_API_KEY=

export SDKMAN_DIR="\$HOME/.sdkman"
[[ -s "\$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "\$HOME/.sdkman/bin/sdkman-init.sh"
EOF

# Install languages via asdf
print_section "Installing Node.js LTS..."
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf install nodejs 22.14.0
asdf set -u nodejs 22.14.0

print_section "Installing Go LTS..."
asdf plugin add golang https://github.com/kennyp/asdf-golang
asdf install golang 1.24.0
asdf set -u golang 1.24.0

print_section "Installing Rust LTS..."
asdf plugin add rust https://github.com/code-lever/asdf-rust.git
asdf install rust 1.85.0
asdf set -u rust 1.85.0

print_section "Installing JDK 21..."
sudo apt install openjdk-21-jdk -y

# Install applications
print_section "Installing Visual Studio Code..."
sudo snap install code --classic
sudo snap install code-insiders --classic

print_section "Installing AWS CLI..."
sudo snap install aws-cli --classic

print_section "Installing Protobuf..."
sudo apt install protobuf-compiler protobuf-c-compiler -y

print_section "Installing Terminator..."
sudo add-apt-repository -y ppa:mattrose/terminator
sudo apt update -y
sudo apt install terminator -y
mkdir -p ~/.config/terminator
cat <<EOF > ~/.config/terminator/config
[global_config]
  title_hide_sizetext = True
  inactive_color_offset = 0.61
  suppress_multiple_term_dialog = True
[keybindings]
[profiles]
  [[default]]
    background_color = "#282a36"
    background_darkness = 0.94
    background_type = image
    cursor_color = "#f8f8f2"
    foreground_color = "#f7f8f1"
    palette = "#262626:#e356a7:#42e66c:#e4f34a:#9b6bdf:#e64747:#75d7ec:#efa554:#7a7a7a:#ff79c6:#50fa7b:#f1fa8c:#bd93f9:#ff5555:#8be9fd:#ffb86c"
    use_system_font = False
    background_image = 
[layouts]
  [[default]]
    [[[child1]]]
      parent = window0
      type = Terminal
    [[[window0]]]
      parent = ""
      type = Window
[plugins]
EOF

print_section "Installing Docker..."
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker

print_section "Installing kubectl..."
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
rm -rf kubectl

print_section "Installing Helm..."
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh

print_section "Installing Terraform..."
sudo apt-get install -y gnupg software-properties-common
wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update -y
sudo apt-get install terraform -y

print_section "Installing Neovim..."
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"

print_section "Neovim post install..."
sudo apt install xclip
sudo apt install ripgrep
go install github.com/jesseduffield/lazygit@latest
go install github.com/google/yamlfmt/cmd/yamlfmt@latest
go install github.com/jessfraz/dockfmt@latest
go install golang.org/x/tools/cmd/goimports@latest
go install github.com/jesseduffield/lazydocker@latest
asdf reshim golang
npm install -g cspell
npm install -g prettier
asdf reshim nodejs
cargo install taplo-cli
git clone git@github.com:ralvescosta/nvim-nvchad.git ~/.config/nvim

print_section "Installing DBeaver..."
sudo snap install dbeaver-ce

print_section "Installing Redis Insigth..."
sudo snap install redisinsight

print_section "Installing Remmina..."
sudo snap install remmina

print_section "Installing Flameshot..."
sudo snap install flameshot

print_section "Installing Insync..."
sudo apt install insync-nautilus

print_section "Installing GNOME extension..."
sudo apt install gnome-shell-extension-manager
sudo apt install chrome-gnome-shell
sudo apt install gnome-browser-connector

print_section "Installing Ulauncher..."
sudo add-apt-repository universe -y && sudo add-apt-repository ppa:agornostal/ulauncher -y && sudo apt update && sudo apt install ulauncher

print_section "Installing MQTT Explorer..."
snap install mqtt-explorer

print_section "Installing Lens..."
sudo snap install kontena-lens --classic

print_section "Installing KVM..."
sudo apt install qemu-kvm -y
sudo adduser $USER kvm

print_section "Installing Spotify..."
sudo snap install spotify

print_section "Installing Google Chrome..."
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb || sudo apt-get install -f -y
rm google-chrome-stable_current_amd64.deb

print_section "Installing Discord..."
sudo snap install discord

print_section "Installing Draw.io..."
sudo snap install drawio

print_section "Installing Postman..."
sudo snap install postman

print_section "Installing VirtualBox..."
sudo apt install virtualbox virtualbox-ext-pack -y

print_section "Installing GIMP..."
sudo apt install gimp -y

print_section "Installing VLC..."
sudo snap install vlc

print_section "Installing Teams..."
sudo snap install teams-for-linux

print_section "Script Completed!"
