# What is this?
It's a list of configuration files that I use all on all my machines.
I usually clone this repo to ~/Development and have each config file either source the corresponding 'real' config file here or create a symlink to it.
For example, my `~/vimrc` file has just one line in it: `source ~/Development/configs/vimrc.conf`
And my neovim config file at ~/.config/nvim/init.vim is created with `ln -s ~/Development/configs/nvimrc.conf init.vim`
