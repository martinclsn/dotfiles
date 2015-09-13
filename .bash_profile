export PATH="$HOME/bin:$PATH"

for file in ~/.{exports,aliases,functions,bash_mac,bash_windows,extra}; do
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
