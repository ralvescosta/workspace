sudo apt update -y && sudo apt upgrade -y

echo '===============================\n'
echo 'Installing curl...\n' 
echo '===============================\n'
sudo apt install curl -y
echo 'curl installed'
clear

echo '===============================\n'
echo 'Installing wget...\n' 
echo '===============================\n'
sudo apt install wget gpg -y
echo 'wget installed'
clear

echo '===============================\n'
echo 'Installing snap...\n'
echo '===============================\n'
sudo apt install snapd -y
echo 'snap installed'
clear

echo '===============================\n'
echo 'Installing Tweaks...\n'
echo '===============================\n'
sudo apt install gnome-tweaks -y
echo 'snap installed'
clear

echo '===============================\n'
echo 'Installing basics OS Libraries...\n'
echo '===============================\n'
sudo apt install libssl-dev build-essential cmake pkg-config llvm-dev libclang-dev clang lldb lld libmosquitto-dev manpages-dev libsqlite3-dev -y
echo 'basics OS Libraries installed'
clear

echo '===============================\n'
echo 'Configuration GIT user name...\n'
echo '===============================\n'
# read git_user_name
# git config --global user.name "$git_user_name"
git config --global user.name "ralvescosta"

echo '==============================='
echo 'Configuration GIT user email...\n'
echo '===============================\n'
# read git_user_email
# git config --global user.email $git_user_email
git config --global user.name "rafael.rac.mg@gmal.com"
echo 'git successfully configured'
clear

echo '===============================\n'
echo 'Installing oh-my-zsh...\n'
echo '===============================\n'
sudo apt install zsh -y
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
echo 'oh-my-zsh installed'
clear

echo '===============================\n'
echo 'Installing autosuggestions...\n' 
echo '===============================\n'
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
echo "source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc
echo 'autosuggestion isntalled'
clear

echo '===============================\n'
echo 'Installing sytax highlighting...\n'
echo '===============================\n'
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
echo "source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc
echo 'highlighting installed'  
clear

echo '===============================\n'
echo 'Installing spacesihp theme...\n'
echo '===============================\n'
git clone https://github.com/spaceship-prompt/spaceship-prompt.git ~/.oh-my-zsh/custom/themes/spaceship-prompt --depth=1
ln -s ~/.oh-my-zsh/custom/themes/spaceship-prompt/spaceship.zsh-theme ~/.oh-my-zsh/custom/themes/spaceship.zsh-theme
echo 'spaceship tehem installed'
clear

echo '===============================\n'
echo 'Instlling FzF and FzF-zsh...\n'
echo '===============================\n'
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
cd
git clone https://github.com/unixorn/fzf-zsh-plugin.git ~/.oh-my-zsh/custom/plugins/fzf-zsh-plugin
echo 'fzf installed'
clear

echo '===============================\n'
echo 'Installing Dracula theme...\n'
echo '===============================\n'
sudo apt install dconf-cli -y
git clone https://github.com/dracula/gnome-terminal
cd gnome-terminal && ./install.sh
cd ..
echo 'Dracula theme installed'
clear

echo '===============================\n'
echo 'Installing asdf...\n'
echo '===============================\n'
git clone https://github.com/asdf-vm/asdf.git ~/.asdf
cd ~/.asdf
git checkout "$(git describe --abbrev=0 --tags)"
cd ..
sudo apt install dirmngr gawk
echo 'zsh installed'
clear

echo '===============================\n'
echo 'Configuring zsh...\n'
echo '===============================\n'
cat <<EOF >  ~/.zshrc
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="spaceship"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  fzf-zsh-plugin
)

source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

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

export PATH=/home/ralvescosta/.local/bin:$PATH

alias get_idf='. $HOME/esp/esp-idf/export.sh'
alias k='kubectl'
alias d='docker'
alias ts3='//usr/local/TeamSpeak3-Client-linux_amd64/ts3client_runscript.sh'

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
EOF
echo 'zsh configured'
clear

echo '===============================\n'
echo 'Installing NodeJs LTS...\n'
echo '===============================\n'
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf install nodejs 20.6.1
asdf global nodejs 20.6.1
echo 'NodeJs installed'
clear

echo '===============================\n'
echo 'Installing GoLang LTS...\n'
echo '===============================\n'
asdf plugin add golang https://github.com/kennyp/asdf-golang
asdf install golang 1.21.1
asdf global golang 1.21.1
echo 'GoLang installed'
clear

echo '===============================\n'
echo 'Installing RustLang LTS...\n'
echo '===============================\n'
asdf plugin-add rust https://github.com/code-lever/asdf-rust.git
asdf install rust 1.72.0
asdf global rust 1.72.0
echo 'RustLang installed'
clear

echo '===============================\n'
echo 'Installing vscode...\n'
echo '===============================\n'
snap install --classic code
echo 'vscode installed'
clear

echo '===============================\n'
echo 'Instaliing AWS CLI...\n'
echo '===============================\n'
sudo apt install awscli -y
echo 'AWS CLI installed'
clear

echo '===============================\n'
echo 'Installing protoc...\n'
echo '===============================\n'
sudo apt install protobuf-compiler protobuf-c-compiler -y
echo 'protoc installed'
clear

echo '===============================\n'
echo 'Installing Nerd Font...\n'
echo '===============================\n'
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf
fc-cache -fv
clear

echo '===============================\n'
echo 'Installing terminator...\n'
echo '===============================\n'
sudo add-apt-repository ppa:mattrose/terminator
sudo apt update
sudo apt install terminator
echo 'terminator installed'
clear

echo '===============================\n'
echo 'Configuring terminator...\n' 
echo '===============================\n'
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
echo 'terminator configured'
clear

echo '===============================\n'
echo 'Installing docker...\n'
echo '===============================\n'
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
echo 'docker installed'
clear

echo '===============================\n'
echo 'Installing docker-compose...\n'
echo '===============================\n'
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
echo 'docker-compose installed'
clear

echo '===============================\n'
echo 'Installig kind...\n'
echo '===============================\n'
curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.20.0/kind-linux-amd64
chmod +x ./kind
sudo mv ./kind /usr/local/bin/kind
echo "kind installed"
clear

echo '===============================\n'
echo 'Installing kubectl...\n'
echo '===============================\n'
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
rm -rf kubectl
echo "kubectl installed"
clear

echo '===============================\n'
echo 'Installig helm...\n'
echo '===============================\n'
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh
echo "helm installed"
clear

echo '===============================\n'
echo 'Installing neovim...\n'
echo '===============================\n'
sudo snap install --edge nvim --classic
echo 'neovim installed'
clear

echo '===============================\n'
echo 'Installing neovim plugins...\n'
echo '===============================\n'
sudo apt install python3-neovim -y
sudo apt install xclip -y
sudo apt install silversearcher-ag -y
sudo apt install lua5.1 -y
sudo apt install luajit -y
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
echo 'neovim plugin installed'
clear

echo '===============================\n'
echo 'Installing dbeaver...\n'
echo '===============================\n'
# wget -c https://dbeaver.io/files/6.0.0/dbeaver-ce_6.0.0_amd64.deb
# sudo dpkg -i dbeaver-ce_6.0.0_amd64.deb
# sudo apt install -f
echo 'dbeaver installed'
clear

echo '===============================\n'
echo 'Installing JDK 11...\n'
echo '===============================\n'
sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt update -y
sudo apt install openjdk-11-jdk -y
echo 'JDK 11 installed'
clear

echo '===============================\n'
echo 'Installing KVM...\n'
echo '===============================\n'
sudo apt install qemu-kvm -y
sudo adduser $USER kvm
grep kvm /etc/group
echo 'KVM installed'
clear

echo '===============================\n'
echo 'Installing spotify...\n' 
echo '===============================\n'
snap install spotify
echo 'spotify installed'
clear

echo '===============================\n'
echo 'Installing chrome...\n'
echo '===============================\n'
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
echo 'chrome installed'
clear

echo '===============================\n'
echo 'Installing discord...\n'
echo '===============================\n'
sudo snap install discord
echo 'discord installed'
clear

echo '===============================\n'
echo 'Installing slack...\n'
echo '===============================\n'
sudo snap install slack
echo 'slack installed'
clear

echo '===============================\n'
echo 'Installing onlyoffice...\n'
echo '===============================\n'
sudo snap install onlyoffice-desktopeditors
echo 'onlyoffice installed'
clear

echo '===============================\n'
echo 'Installing draw.io...\n'
echo '===============================\n'
sudo snap install drawio
echo 'draw.io installed'
clear

echo '===============================\n'
echo 'Installing postman...\n'
echo '===============================\n'
sudo snap install postman
echo 'postman installed'
clear

echo '===============================\n'
echo 'Installing VirtualBox...\n'
echo '===============================\n'
sudo apt install virtualbox -y
sudo apt install virtualbox-ext-pack -y
echo 'VirtualBox installed'
clear

echo '===============================\n'
echo 'Installing GIMP...\n'
echo '===============================\n'
sudo apt install gimp -y
echo 'GIMP installed'
clear

echo '===============================\n'
echo 'Installing ZOOM...\n'
echo '===============================\n'
sudo apt install libglib2.0-0 libxcb-shape0 libxcb-shm0 libxcb-xfixes0 libxcb-randr0 libxcb-image0 libfontconfig1 libgl1-mesa-glx libxi6 libsm6 libxrender1 libpulse0 libxcomposite1 libxslt1.1 libsqlite3-0 libxcb-keysyms1 libxcb-xtest0 ibus -y
sudo snap install zoom-client
echo 'ZOOM installed'
clear

echo '===============================\n'
echo 'Installing VLC...\n'
echo '===============================\n'
sudo snap install vlc
echo 'VLC installed'
clear

echo '===============================\n'
echo 'Installing Teams...\n'
echo '===============================\n'
sudo snap install teams-for-linux
echo 'Teams installed'
clear

echo '===============================\n'
echo 'Scrip Done'
echo '===============================\n'