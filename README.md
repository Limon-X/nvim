cd to .config directory, by default this is:
``
cd ~/.config
``

clone this repo:
``
git clone https://github.com/Limon-X/nvim ~/.config/
``


install Plug plugin manager:

```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

there will be errors, so install plugins:
``:PlugInstall``

restart neovim and everything working!
