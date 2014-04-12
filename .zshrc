# ZSH options
bindkey -e
zstyle :compinstall filename "$HOME/.zshrc"
autoload -Uz compinit && compinit
autoload colors && colors

setopt appendhistory autocd extendedglob completeinword
unsetopt sharehistory caseglob correct_all

# Environment
HISTFILE=~/.histfile
HISTSIZE=50000
SAVEHIST=50000

PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:~/bin:/opt/android-sdk/platform-tools

EDITOR=vim
BROWSER=firefox-nightly
PAGER=less

LANG="en_US.utf8"
LC_ALL=$LANG

PROMPT="%{$fg[green]%}%n %{$fg_bold[blue]%}%~ %{$reset_color%}${vcs_info_msg_0_} %{$fg_bold[yellow]%}⚡%{$reset_color%} "
DONTSETRPROMPT=1
RPROMPT="%(?..%{$fg[red]%}✘%{$reset_color%})"

PYTHONSTARTUP=~/.config/pythonrc

export PATH EDITOR BROWSER PAGER LANG PROMPT RPROMPT LC_ALL PYTHONSTARTUP

# Aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias gpgopsec='gpg --default-key 0x85D77543B3D624B63CEA9E6DBC17301B491B3F21'
alias qemu='qemu-system-x86_64 -smp 4 -m 1024 -k fr --enable-kvm -net nic -net vde --hda '
alias tabchecker="grep -HrP '\t' ."

# VirtualEnv shortcuts
function mkvenv() {
        mkdir -p ~/.virtualenvs/$1
            virtualenv2 ~/.virtualenvs/$1
                source ~/.virtualenvs/$1/bin/activate
}
function rmvenv() {
        rm -rf ~/.virtualenvs/$1
}
function lsvenvs() {
        ls ~/.virtualenvs
}
