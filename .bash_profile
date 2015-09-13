# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH"

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{exports,aliases,functions,os,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

YELLOW='\e[1;93m'
BLACK='\e[1;90m'   
RESET='\e[0m'   

export PS1="\[$YELLOW\]\w\[$BLACK\]$\[$RESET\] "
