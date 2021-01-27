# My Config Files

Linux dotfiles for configuration.

## Download
Run
```bash
git clone https://github.com/sudoerena/my-dotfiles.git
```

## Installation
Install and uninstall scripts are included for efficiency.
Manual installation is also possible.

### Install Script
In project root directory, run
```bash
src/install.sh
```
To clean, run
```bash
src/uninstall.sh
```

### Manual Renaming & Relocation
Files are named with `*.conf` for easy management.
These will not be recognized or sourced by the system, so files must be renamed and relocated, or symlinked with `ln -s`.

Symlinking with absolute path is recommended and streamlines updates.

First, `cd config`.

#### Bash
```bash
mv bash.conf ~/.bashrc
```

#### i3wm
```bash
mv i3.conf ~/.config/i3/config
```

#### Neovim
```bash
mv nvim.conf ~/.config/nvim/init.vim
```
and
```bash
mv conf/ ~/.config/nvim/conf/
```
to source plug-in settings.

#### Vim
```bash
mv vim.conf ~/.vimrc
```
and
```bash
mv conf/ ~/.vim/conf/
```
to source plug-in settings.

#### Tmux
```bash
mv tmux.conf ~/.tmux.conf
```
