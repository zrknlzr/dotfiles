# ~/.bash_aliases is imported from ~/.bashrc
#
# If not already done include it like this
# if [ -f ~/.bash_aliases ]; then
#    . ~/.bash_aliases
# fi

# clean input and output
alias c='clear'

# ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# system watch
alias top='glances'
alias meminfo='free -m -l -t'
alias cpuinfo='lscpu'
alias temps='sensors'

# networking
alias ping='ping -c 5'
alias ports='netstat -tulanp'

# downloads
alias wget='wget -c'

# sudo helpers
if [ $UID -ne 0 ]; then
    alias poweroff='sudo /sbin/poweroff'
    alias reboot='sudo /sbin/reboot'
    alias update='sudo apt update'
fi

# safety nets
alias rm='rm -I --preserve-root'
alias mv='mv -i'
alias cp='cp -i'
alias df='df -h'
alias ln='ln -i'
alias chown='chown --preserve-root'
alias chown='chmod --preserve-root'
alias chown='chgrp --preserve-root'
