source /etc/profile.d/bash_completion.sh
source /usr/share/bash-completion/completions/lxd-client
export IOCAGE_COLOR=TRUE

git_branch(){
                git branch --show-current 2>/dev/null
        }

PS1="\[\e[30;1m\](\[\e[31;1m\]\u\[\e[30;1m\])-(\[\e[33;1m\]\h\[\e[30;1m\])-(\[\e[35;1m\]\w\[\e[30;1m\])-(\[\[\e[37;1m\]\e[32;1m\]\e[5m\]\$(git_branch)\e[0m\]\[\e[30;1m\])\e[34;1m\]\n-> \[\e[0m\]"


export LESS_TERMCAP_mb=$'\e[0;33m'
export LESS_TERMCAP_md=$'\e[1;30m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[1;30;34m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[0;34m'
