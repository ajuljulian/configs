# What is this?

It's a list of configuration files that I use on all my machines. I try to aggregate as much of my Dotfiles in one location and create symlinks to them from their expected locations.

## Neovim

https://neovim.io

Let's say you cloned this repo to `~/Development/configs`.
And let's say the neovim config file is under `~/.config/nvim`

1. Change `~/.config/nvim` to a symlink: `ln -s ~/Development/configs/nvim nvim`
1. Install neovim `brew install neovim` or `brew install neovim --HEAD` if you want to  install the nightly build.
1. Launch neovim: `nvim`
1. Install all the plugins: `:PlugInstall`
1. Install all coc extensions e.g. `CocInstall coc-tsserver`
1. Run `:checkhealth` to see if there are any issues.  You may have to install the neovim python module to get rid of the pyx warning: `pip install neovim`

### External dependencies

1. ranger: `brew install ranger`
1. ripgrep: `brew install ripgrep`

## Nerd Fonts

https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts

Install using homebrew:
```
$ brew tap homebrew/cask-fonts
$ brew install --cask font-hack-nerd-font
```

Note: make sure your terminal is set to this font.  For example, in the alacritty.yml config file, I've set the font explicitly to Hack Nerd Font Mono.

## Alacritty (terminal emulator)

https://github.com/alacritty/alacritty

Create a symlink from `~/.alacritty.yml` to `<project dir>/configs/alacritty.yml`:
```
ln -s ~/.alacritty.yml ~/Development/configs/alacritty.yml
```

## Powerlevel10k

https://github.com/romkatv/powerlevel10k#oh-my-zsh

Install for Oh My Zsh:
```
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

Create a symlink from `~/.p10k.zsh` to `<project dir>/configs/zsh/p10k.zsh`
```
ln -s ~/Development/configs/zsh/p10k.zsh ~/.p10k.zsh
```

Configure it:
```
$ p10k configure
```

## Colorls

https://github.com/athityakumar/colorls#uninstallatio

Install:
```
$ gem install colorls
```

## LSD

https://github.com/Peltoche/lsd

Install:
```
$ brew install lsd
```

## Tmuxinator

https://github.com/tmuxinator/tmuxinator

Install:
```
$ gem install tmuxinator
```

Update:
```
$ gem update tmuxinator
```

List commands
```
$ tmuxinator commands
```

List projects:
```
$ tmuxinator [list|ls]
```

Copy existing project:
```
$ tmuxinator [copy|cp|c] {existing} {new}
```

Remove a project
```
$ tmuxinator [delete|rm] {project}
```

Edit project
```
$ tmuxinator open {project}
```

