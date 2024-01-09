# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

[ -f "/home/farkon/.ghcup/env" ] && source "/home/farkon/.ghcup/env" # ghcup-env

# My stuff

# Chages color and text of prefix
export PS1='\e[35;1m\u\e[0m:\e[34;1m\w \e[0m$ \e[36;1m'

# Windows access
export WIN="/run/media/farkon/Windows 10"

export PATH=$PATH:~/data/git_alias/

alias sqlite="/usr/bin/SQLiteStudio/sqlitestudio"
alias nvidia="__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia"
