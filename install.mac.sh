source install.sh

link .bash_mac

BIN_DIR="$HOME/bin"

[ ! -d "$BIN_DIR" ] && mkdir $BIN_DIR

unlink "$BIN_DIR/ls" 2> /dev/null
ln -s $(which gls) "$BIN_DIR/ls"
