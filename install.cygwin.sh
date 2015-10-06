source install.sh

link .bash_cygwin

WINDOWS_HOME="$(cygpath -u $USERPROFILE)"

function linkDirectory {
	DIRECTORY_NAME=$1
	DIRECTORY="$HOME/$DIRECTORY_NAME"
	[ -d "$DIRECTORY" ] && rm -ri $DIRECTORY
	ln -s "$WINDOWS_HOME/$DIRECTORY_NAME" $DIRECTORY
}

linkDirectory "Downloads"
linkDirectory "Desktop"
linkDirectory "Documents"
linkDirectory ".m2"
