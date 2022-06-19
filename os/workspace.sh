sudo apt update -y && sudo apt upgrade -y

echo 'Installing curl...' 
sudo apt-get install curl -y
echo 'curl installed'

echo 'Installing wget...' 
sudo apt-get install wget gpg -y
echo 'wget installed'

echo 'Installing snap...'
sudo apt install snapd -y
echo 'snap installed'

echo 'Installing git...'
sudo apt install git -y
echo "git installed"

echo 'Configuration GIT user name, tap your user.name: '
read git_user_name
git config --global user.name "$git_user_name"

echo 'Configuration GIT user email, tap your user.email: '
read git_user_email
git config --global user.email $git_user_email
echo 'git successfully configured'
clear

echo 'Installing oh-my-zsh...'
sudo apt-get install zsh -y
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
echo 'oh-my-zsh installed'

echo 'Installing autosuggestions...' 
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
echo "source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc
echo 'autosuggestion isntalled'

echo 'Installing sytax highlighting...'
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
echo 'highlighting installed'  
clear

echo 'Installing Dracula theme...'
sudo apt-get install dconf-cli -y
git clone https://github.com/dracula/gnome-terminal
cd gnome-terminal && ./install.sh
echo 'Dracula theme installed'
clear

echo 'Installing asdf...'
git clone https://github.com/asdf-vm/asdf.git ~/.asdf
cd ~/.asdf
git checkout "$(git describe --abbrev=0 --tags)"
echo 'zsh installed'

echo 'Configuring zsh...'
cat <<EOF >  ~/.zshrc
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="spaceship"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

fpath=(${ASDF_DIR}/completions $fpath)
autoload -Uz compinit && compinit

. $HOME/.asdf/asdf.sh

. $HOME/.asdf/completions/asdf.bash

export JAVA_HOME=
export ANDROID_HOME=~/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
EOF
echo 'zsh configured'

echo 'Installing NodeJs LTS...'
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf install nodejs latest
asdf global nodejs latest
echo 'NodeJs installed'

echo 'Installing GoLang LTS...'
asdf plugin add golang https://github.com/kennyp/asdf-golang
asdf install golang latest
asdf global golang latest
echo 'GoLang installed'

echo 'Installing RustLang LTS...'
asdf plugin-add rust https://github.com/code-lever/asdf-rust.git
asdf install rust latest
asdf global rust latest
echo 'RustLang installed'
clear

echo 'Installing spacesihp theme...'
npm install -g spaceship-prompt
asdf reshin nodejs latest
echo 'spaceship tehem installed'
clear

echo 'Installing vscode'
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/ -y
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt install apt-transport-https -y
sudo apt-get update
sudo apt-get install code -y # or code-insiders
echo 'vscode installed'
clear

echo 'Installing Nerd Font'
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf
fc-cache -fv
# ...

echo 'Installing terminator...'
sudo add-apt-repository ppa:gnome-terminator
sudo apt-get update
sudo apt-get install terminator -y
echo 'terminator installed'

echo 'Configuring terminator...' 
cat <<EOF >  ~/.config/terminator/config
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
    font = DroidSansMono Nerd Font 10
    foreground_color = "#f8f8f2"
    palette = "#262626:#e356a7:#42e66c:#e4f34a:#9b6bdf:#e64747:#75d7ec:#efa554:#7a7a7a:#ff79c6:#50fa7b:#f1fa8c:#bd93f9:#ff5555:#8be9fd:#ffb86c"
    use_system_font = False
    background_image = /home/ralvescosta/Pictures/linux_terminal_wallpaper.png
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
echo 'terminator configured'
clear

echo 'Installing docker...'
sudo apt-get remove docker docker-engine docker.io
sudo apt install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker
docker --version
chmod 777 /var/run/docker.sock
docker run hello-world
echo 'docker installed'

echo 'Installing docker-compose...'
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
echo 'docker-compose installed'
claer

echo 'Installig minikube...'
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube
rm -rf minikube-linux-amd64
echo "minikube installed"

echo 'Installing kubectl...'
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl -y
rm -rf kubectl
echo "kubectl installed"

echo 'Installing vim...'
sudo apt install vim -y
echo 'vim installed'

echo 'Installing neovim...'
sudo snap install --edge nvim --classic -y
echo 'neovim installed'

echo 'Installing neovim plugins...'
sudo apt install python-neovim -y
sudo apt install python3-neovim -y
sudo apt install xclip -y
sudo apt install silversearcher-ag -y
sudo apt install lua5.1 -y
sudo apt install luajit -y
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
echo 'neovim plugin installed'

echo 'Installing dbeaver...'
wget -c https://dbeaver.io/files/6.0.0/dbeaver-ce_6.0.0_amd64.deb
sudo dpkg -i dbeaver-ce_6.0.0_amd64.deb
sudo apt-get install -f
clear

echo 'Installing spotify...' 
snap install spotify
clear

echo 'Installing chrome...'
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
clear

echo 'Installing discord...'

echo 'Installing slack...'

echo 'Installing onlyoffice'

echo 'Installing draw.io...'

echo 'Installing postman...'

echo 'Installing roboto3t...'