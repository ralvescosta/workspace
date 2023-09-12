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
