source install.sh

link .bash_cygwin

DOWNLOADS_DIR="$HOME/Downloads"
[ -d "$DOWNLOADS_DIR" ] && rm -ri $DOWNLOADS_DIR
ln -s $(cygpath -u $USERPROFILE)/Downloads $DOWNLOADS_DIR

DESKTOP_DIR="$HOME/Desktop"
[ -d "$DESKTOP_DIR" ] && rm -ri $DESKTOP_DIR
ln -s $(cygpath -u $USERPROFILE)/Desktop $DESKTOP_DIR
