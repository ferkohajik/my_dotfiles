# .bashrc

PATH="$PATH:$HOME/bin:$HOME/.fluxbox/bin:/usr/lib64/libreoffice/program:/usr/local/bin"

umask 022

### Colors aliases
# BLACK="\[\033[0;30m\]"
# BLUE="\[\033[0;34m\]"
# GREEN="\[\033[0;32m\]"
# CYAN="\[\033[0;36m\]"
# RED="\[\033[0;31m\]"
# PURPLE="\[\033[0;35m\]"
# BROWN="\[\033[0;33m\]"
# GRAY="\[\033[0;37m\]"
### Light colors aliases
# LBLACK="\[\033[1;30m\]"
# LBLUE="\[\033[1;34m\]"
# LGREEN="\[\033[1;32m\]"
# LCYAN="\[\033[1;36m\]"
# LRED="\[\033[1;31m\]"
# LPURPLE="\[\033[1;35m\]"
# LBROWN="\[\033[1;33m\]"
# LGRAY="\[\033[1;37m\]"

## PS1 root / other users
if [ $(id -u) -eq 0 ]; then
    PS1='\[\033[01;31m\]\h\[\033[01;34m\] \W \$\[\033[00m\] '
else
#   PS1='\[\033[01;32m\]\h \[\033[01;30m\]\u \[\033[01;34m\]\w \$\[\033[00m\] '
#   PS1='\[\033[01;32m\]\h \[\033[01;34m\]\u \[\033[01;34m\]\w \$\[\033[00m\] '
    PS1='\[\033[01;34m\]\w \$\[\033[00m\] '
fi

## PS2 - Continuation interactive prompt
 export PS2="continue-> "
## PS3 - Prompt used by select inside shell script
## PS4 - Used by set -x to prefix tracing output
##
#export LANG=sk_SK
#history
 shopt -s histappend
 export HISTTIMEFORMAT='%F %T '
 export HISTCONTROL=ignoredups
#export HISTCONTROL=ignoreboth
#export HISTCONTROL= erasedups
 export HISTFILESIZE=2000
 export HISTSIZE=5000
#export HISTIGNORE=ls:ll:lll:mx:
 export EDITOR=/usr/bin/vim
 export sendmail=/usr/bin/msmtp
 export BROWSER=firefox
 export BROWSERCLI=elinks
#export BROWSERCLI=lynx
 export IMAGEVIEWER=feh
 export PLAYER=mplayer
 export LYNX_LSS=$HOME/.lynx.lss
 export INTEL_BATCH=1

# Automatically log out a user in seconds
 export TMOUT=900

# Set 256 color to xterm
if [[ ${TERM} == xterm ]]; then
   export TERM='xterm-256color'
fi

# zmena farebnej schemy
alias l='xrdb -DSOLARIZED_LIGHT -merge ~/.Xresources'
alias d='xrdb -DSOLARIZED_DARK -merge ~/.Xresources'


## chmod commands
alias 000='chmod 000'
alias 600='chmod 600'
alias 640='chmod 640'
alias 644='chmod 644'
alias 660='chmod 660'
alias 664='chmod 664'
alias 666='chmod 666'
alias 700='chmod 700'
alias 750='chmod 750'
alias 755='chmod 755'
alias 770='chmod 770'
alias 775='chmod 775'
alias 777='chmod 777'

alias chf='chown -Rf ferko.ferko *'

alias c='clear'
alias cp='cp -v'
alias df='df -m'
alias gd='google-drive-ocamlfuse ~/gdrive'
alias grep='grep --color=auto'
alias h='history'
alias hist='history |grep $1' # vyzaduje 1 premennu
# ls
alias ls='ls --color=auto'
alias l1='ls -1'
alias la='ls -a'
alias lal='ls -al'
alias lh='la |less'
alias ll='ls -la'
alias lll='ll'
#alias lsd.='find . -maxdepth 1 -name ".*" -type d |sort'
alias lsd='ls -d */ | cut -f1 -d'/''
alias lsf='find . -maxdepth 1 -name "*" -type f |sort'
alias lsf.='find . -maxdepth 1 -name ".*" -type f |sort'
#alias lsf='ls -la | grep -E "^[^f]"'
#
alias mpg123='mpg123 -C'
alias mutt='neomutt'
alias mc='. /usr/libexec/mc/mc-wrapper.sh'
alias mx='mc'
alias nb='newsboat'
alias nm='neomutt'
alias pa='ps aux'
alias rs='mpg123 http://83.217.203.197/stream/2/'
alias rsm='mpg123 https://radiovolna.net/5727-slavyanskiy-mir.html'
alias sync='cp -r -u -v'
alias t='trans'
alias vi='vim'
alias wed='mcedit -s'

alias xb1='xbacklight -set 1'
alias xb2='xbacklight -set 2'
alias xb3='xbacklight -set 3'
alias xb4='xbacklight -set 4'
alias xb5='xbacklight -set 5'
alias xb7='xbacklight -set 7'
alias xb9='xbacklight -set 9'

## feh
alias feh='feh -d -F -G -V -Z'
#alias feh='feh --quiet --verbose --action8 "nrm '\'%f\'\"
alias fehf='feh -Tfs'
alias fehfr='feh -Tfs --recursive'
alias fehi='feh .fehindex.jpg'
alias fehj='feh -Trfs'
alias fehjr='feh -Trfs --recursive'
alias fehjx='feh -Trfs --slideshow-delay'
alias fehfx='feh -Tfs --slideshow-delay'
alias fehjrx='feh -Trfs --recursive --slideshow-delay'
alias fehfrx='feh -Tfs --recursive --slideshow-delay'
alias feht='feh -t'
alias fehtr='feh -t --recursive'
alias fehtn='feh -t -s -n -t'
alias fehtnr='feh -t -s -n -t --recursive'

alias dc="cd"
alias ..="cd .."
alias ..2="cd ../.."
alias ..3="cd ../../.."
alias ..4="cd ../../../.."
alias ..5="cd ../../../../.."

## storage - cdrom/dvdrom
alias cdm="mount /mnt/cdrom"
alias cdu="umount /mnt/cdrom"

## storage - sdcards
alias sdp1='mount /mnt/sd/p1'
alias sdp2='mount /mnt/sd/p2'
alias sdp3='mount /mnt/sd/p3'
alias sdp4='mount /mnt/sd/p4'
alias sdu='umount /mnt/sd/p*'

## storage - teac
alias teac1='mount /mnt/teac/p1'
alias teac2='mount /mnt/teac/p2'
alias teac3='mount /mnt/teac/p3'
alias teac4='mount /mnt/teac/p4'
alias teacm='mount /mnt/teac/p*'
alias teacu='umount /mnt/teac/p*'

## storage - usbkey
alias usbm='mount /mnt/usbkey'
alias usbu='umount /mnt/usbkey'

## vnc
alias x11vnc='x11vnc -usepw'

## unicode
if [ $TERM = "linux" ]; then
        unicode_start
fi

## global settings
if [ -f /etc/bashrc ]; then
      . /etc/bashrc
fi

if [ -f "$HOME/.vim/bundle/gruvbox/gruvbox_256palette.sh" ]; then
 source "$HOME/.vim/bundle/gruvbox/gruvbox_256palette.sh"
fi

## EOF
