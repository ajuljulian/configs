# What is this?

I use these dotfiles on all my machines. I try to aggregate as much of my Dotfiles in one location and create symlinks to them from their expected locations.

## Neovim

https://neovim.io

Let's say you cloned this repo to `~/Development/configs`.
And let's say the neovim config file is under `~/.config/nvim`

1. Change `~/.config/nvim` to a symlink: `ln -s ~/Development/configs/nvim nvim`
1. Install neovim `brew install neovim` or `brew install neovim --HEAD` if you want to install the nightly build.
1. `$ pip install neovim`
1. `$ npm install -g neovim`
1. Launch neovim: `nvim`
1. Install all the plugins: `:PlugInstall`
1. Run `:checkhealth` to see if there are any issues.
1. Upgrade the nightly build with `$ brew reinstall neovim`

### External dependencies

1. ranger: `brew install ranger`
1. ripgrep: `brew install ripgrep`
1. LSP
   1. python: `$ npm i -g pyright`
   1. typescript: `$ npm install -g typescript typescript-language-server`
   1. bash: `$ npm i -g bash-language-server`

## Nerd Fonts

https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts

Install using homebrew:

```
$ brew tap homebrew/cask-fonts
$ brew install --cask font-hack-nerd-font
```

Note: make sure your terminal is set to this font. For example, in the alacritty.yml config file, I've set the font explicitly to Hack Nerd Font Mono.

## Alacritty (terminal emulator)

https://github.com/alacritty/alacritty

```
$ brew install alacritty
```

Create a symlink from `~/.alacritty.yml` to `<project dir>/configs/alacritty.yml`:

```
ln -s ~/Development/configs/alacritty.yml ~/.alacritty.yml
```

## Zsh

Install:

```
$ sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Link to my dotfiles:

```
$ ln -s ~/Development/configs/zsh/zlogin ~/.zlogin
$ ln -s ~/Development/configs/zsh/zprofile ~/.zprofile
$ ln -s ~/Development/configs/zsh/zshrc ~/.zshrc
$ ln -s ~/Development/configs/zsh/zshenv ~/.zshenv
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
