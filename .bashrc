# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
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

PS1='\w|\[\e[38;5;232;48;5;255m\]\u\[\e[0;5m\]|\[\e[0m\]'

alias ..='echo "cd .."; cd ..'
alias l='lsd'
alias la='lsd -a'
alias suod='sudo'

. "$HOME/.cargo/env"

# >>> Added by Spyder >>>
alias spyder=/home/rox/.local/spyder-6/envs/spyder-runtime/bin/spyder
alias uninstall-spyder=/home/rox/.local/spyder-6/uninstall-spyder.sh
# <<< Added by Spyder <<<
