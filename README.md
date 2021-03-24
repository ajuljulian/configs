# What is this?

It's a list of configuration files that I use all on all my machines.

## Neovim setup

Let's say you cloned this repo to `~/Development/configs`.
And let's say the neovim config file is under `~/.config/nvim`

1. Change `~/.config/nvim` to a symlink: `ln -s ~/Development/configs/nvim nvim`
1. Install neovim `brew install neovim` or `brew install neovim --HEAD` if you want to  install the nightly build.
1. Launch neovim: `nvim`
1. Install all the plugins: `:PlugInstall`
1. Install all coc extensions e.g. `CocInstall coc-tsserver`
1. Run `:checkhealth` to see if there are any issues.  You may have to install the neovim python module to get rid of the pyx warning: `pip install neovim`
