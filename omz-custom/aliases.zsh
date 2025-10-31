# TOOLS
alias reload="source ~/.zshrc" # read the Z shell file/ refreshes the terminal
alias rmdir="rm -rf"
alias cpdir="cp -r"
alias config="vim $HOME/.my-config" # open config folder
alias z="vim ~/.zshrc"
alias v="vim ~/.vimrc"
alias za="vim ~/.my-config/omz-custom/aliases.zsh"
alias afk="/System/Library/CoreServices/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine"
# Quickly push current changes
gpa() { git add . && git commit -m "${1:-wip}" && git push; }
