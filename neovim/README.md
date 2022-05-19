# Neovim setup


## Terminator

 - [dracula](https://draculatheme.com/terminator)

## Install neovim

```bash
sudo apt install vim

sudo apt install neovim

sudo apt install neovim

sudo apt install python-neovim

sudo apt install python3-neovim
```

## Vim-Plug

```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

## Nerd Font

```bash
mkdir -p ~/.local/share/fonts

cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf

fc-cache -fv
```

And set the Droid Sans Mono Ner Font four the terminal font.

## [Coc](https://github.com/neoclide/coc.nvim)

 - [Extensions](https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions)

       - :CocInstall coc-json

       - :CocInstall coc-go
       
       - :CocInstall coc-yaml
       
       - :CocInstall coc-rust-analyzer

### Utils

<C-w> + direction ---> Tab moves