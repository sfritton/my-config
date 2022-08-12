#################################
# VIM
#################################

# 1. Sym link vimrc
ln -s $HOME/.my-config/vim/vimrc $HOME/.vimrc

# 2. Install Vundle for bundle management
git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.my-config/vim/bundle/Vundle.vim

# 3. Use Vundle to install plugins
vim +PluginInstall +qall

#################################
# ZSH / OMZ
#################################
ln -s $HOME/.my-config/omz-custom/zshrc $HOME/.zshrc

#################################
# GIT
#################################
ln -s $HOME/.my-config/git/gitconfig $HOME/.gitconfig
