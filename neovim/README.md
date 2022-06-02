# Neovim setup
       - Install neovim from snap  >= v0.7

## Terminator

 - [dracula](https://draculatheme.com/terminator)

## Install neovim

```bash
sudo apt install vim

sudo snap install neovim

sudo apt install neovim

sudo apt install python-neovim

sudo apt install python3-neovim

sudo apt install xclip

sudo apt install silversearcher-ag

sudo apt install lua5.1

sudo apt install luajit
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


## [Vimspector](https://github.com/puremourning/vimspector)

       - :VimspectorInstall --all --force-all

       - :VimspectorUpdate

### Utils

<C-w> + direction ---> Tab moves

NERDETree -> o -> open the first file
             i -> open horizontal second file
             s -> open vertical second file

#### Terminator

Ctrl-Shift-E: Split the view vertically.
Ctrl-Shift-O: Split the view horizontally.
Ctrl-Shift-P: Focus be active on the previous view.
Ctrl-Shift-N: Focus be active on the next view.
Ctrl-Shift-W: Close the view where the focus is on.
Ctrl-Shift-Q: Exit terminator.
Ctrl-Shift-X: Enlarge active window
Ctrl-Alt-W: Edit window title

#### Fugitive

- :Git diff
- :Git blame
- 
