WD=${PWD}

mkdir ~/.dotfile-backups/
BACKUP=~/.dotfile-backups/

# bash
cp -rp ~/.bashrc $BACKUP
ln -s "${WD}"/config/bash.conf ~/.bashrc

# i3wm
cp -rp ~/.config/i3/config $BACKUP
ln -s "${WD}"/config/i3.conf ~/.config/i3/config

# nvim
cp -rp ~/.config/nvim/init.vim $BACKUP
cp -rp ~/.config/nvim/conf $BACKUP
ln -s "${WD}"/config/nvim.conf ~/.config/nvim/init.vim
ln -s "${WD}"/config/conf/ ~/.config/nvim/

# tmux
cp -rp ~/.tmux.conf $BACKUP
ln -s "${WD}"/config/tmux.conf ~/.tmux.conf

# vim
cp -rp ~/.vimrc $BACKUP
cp -rp ~/.vim/conf $BACKUP
ln -s "${WD}"/config/vim.conf ~/.vimrc
ln -s "${WD}"/config/conf/ ~/.vim/

