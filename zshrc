# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' max-errors 3
zstyle :compinstall filename '/home/ape/.zshrc'
zstyle ':prezto:module:completion:*:hosts' etc-host-ignores  '0.0.0.0' '127.0.0.1' ###ignores static hosts from /etc/hosts
source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" 
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select ###menu like selection when using auto completion double tab for activation
setopt COMPLETE_ALIASES
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
#only past commands  matching current line up to current pos
autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

[[ -n "$key[Up]"   ]] && bindkey -- "$key[Up]"   up-line-or-beginning-search
[[ -n "$key[Down]" ]] && bindkey -- "$key[Down]" down-line-or-beginning-search
# End of lines configured by zsh-newuser-install
#
# +++++++++++++++++++++<<<<<<<<<ADDED BY BONREM>>>>>>>
#ALIASES
#
alias black-tools='sudo systemd-nspawn -bUD ~/.Machines/BlackArch'
alias git="hub"
alias mux="tmuxinator"
alias workflow="mux workflow"
alias projects="mux projects"
alias HBZ=' cvlc -q http://shoutcast.citrus3.com:8116/;stream.mp3 >/dev/null '
alias hbz=' nvlc  http://shoutcast.citrus3.com:8116/;stream.mp3 '
#function 
load () 
{
source ~/.zshrc
}

#+++++++++ autoload colored prompts 
#
#autoload -Uz promptinit
#promptinit
#prompt <name of  prompt eg walters> 
[ -n "st" ] && transset-df --id "$WINDOWID" > /dev/null
PROMPT='>> %F{green}%n%f  ( %F{yellow}%1~%f )$ '
RPROMPT='(%F{green}%m%f)[%F{yellow}%?%f]'
#++++++++++Paths
path+=~/.bin
path+=/home/ape/.gem/ruby/2.5.0/bin
WORKON_HOME+=~/.Envs ###python virtual env 
source /usr/bin/virtualenvwrapper.sh
