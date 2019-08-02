# /etc/skel/.bash_profile

# This file is sourced by bash for login shells.  The following line
# runs your .bashrc and is recommended by the bash info pages.
#[[ -f ~/.bashrc ]] && . ~/.bashrc


# if running bash
if [ -n "$BASH_VERSION" ]; then
# include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
# if running another shell
else
    if [ -f "$HOME/.shrc" ]; then
        . "$HOME/.shrc"
    fi
fi

#
if [[ -z "$DISPLAY" ]] && [[ $(tty) = /dev/tty1 ]]; then
       startx
       logout
fi
#
if test -t 1 -a -t 2 ; then
                echo -n -e '\033%G'
fi




