# Sistema Operacional

- [Ubuntu Desktop LTS Verssion](https://ubuntu.com/download/desktop)

## Installed Tools and Applications

The setup script installs the following tools and applications:

### Basic Tools
- curl
- wget
- gpg
- tar
- apt-transport-https
- gnupg
- snapd
- GNOME Tweaks
- Basic OS libraries (libssl-dev, build-essential, cmake, pkg-config, llvm-dev, libclang-dev, clang, lldb, lld, libmosquitto-dev, manpages-dev, libsqlite3-dev)

### Git Configuration
- Configures Git with user name and email.

### Zsh and Oh-My-Zsh
- Zsh
- Oh-My-Zsh
- Zsh autosuggestions
- Zsh syntax highlighting
- Spaceship theme
- Fzf and Fzf-zsh

### Terminal Customization
- Dracula theme for GNOME Terminal

### Language Management
- asdf (version manager for multiple languages)
  - Node.js LTS
  - Go LTS
  - Rust LTS
  - JDK 21

### Applications
- Visual Studio Code
- AWS CLI
- Protobuf
- Terminator
- Docker
- kubectl
- Helm
- Terraform
- Kind
- Neovim
- DBeaver
- Redis Insight
- Remmina
- Flameshot
- Insync
- GNOME extension manager


In this ubuntu project you will see **Dockerfile** and a **Makefile**. I have been using Docker to run an Ubuntu distribution to validate the script execution. As you can see in the Makefile, we can run the command below to validate and see the script execution:

```bash
    make validate-script
```

