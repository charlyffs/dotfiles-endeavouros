set fish_greeting
fish_vi_key_bindings
alias venv="python -m venv venv"
alias activate="source */*/activate.fish"
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias wifi="nmtui"
alias ls="ls -lhN"
alias synctime="sudo timedatectl set-ntp false && sudo timedatectl set-ntp true"
alias pkghist="grep 'installed' /var/log/pacman.log | awk -F' ' '{print \$1 \" \" \$4 \$NF}'"
alias tf="tofu"
alias tfa="tofu apply"
alias tfp="tofu plan"
status --is-interactive; and neofetch --disable GPU;
