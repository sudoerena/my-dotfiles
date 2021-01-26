# My Config Files

Linux dotfiles for configuration.

## Installation
Run
```bash
git clone https://github.com/sudoerena/my-dotfiles.git
```

### Renaming & Relocation
Files are named with `*.conf` for easy management.
These will not be recognized or sourced by the system, so files must be renamed and relocated, or symlinked with `ln -s`.

Symlinking with absolute path is recommended and streamlines updates.

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
