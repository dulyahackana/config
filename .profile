# $FreeBSD: src/share/skel/dot.profile,v 1.21 2002/07/07 00:00:54 mp Exp $
#
# .profile - Bourne Shell startup script for login shells
#
# see also sh(1), environ(7).
#

# remove /usr/games and /usr/X11R6/bin if you want
PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/games:/usr/local/sbin:/usr/local/bin:/usr/X11R6/bin:$HOME/bin; export PATH

# Setting TERM is normally done through /etc/ttys.  Do only override
# if you're sure that you'll never log in via telnet or xterm or a
# serial line.
# Use cons25l1 for iso-* fonts
# TERM=cons25; 	export TERM

BLOCKSIZE=K;	export BLOCKSIZE
EDITOR=vim;   	export EDITOR
PAGER=more;  	export PAGER

# set ENV to a file invoked each time sh is started for interactive use.
ENV=$HOME/.shrc; export ENV

##[ -x /usr/games/fortune ] && /usr/games/fortune freebsd-tips

export PAGER=less
##export PS1='\u@\h:\w\$ '

LANG=ru_RU.UTF-8
LC_CTYPE="C"
LC_COLLATE="C"
LC_TIME=C
LC_NUMERIC="C"
LC_MONETARY="C"
LC_MESSAGES="C"

export LANG

if [ -e /usr/local/share/git-core/contrib/completion/git-completion.bash ]; then
    . /usr/local/share/git-core/contrib/completion/git-completion.bash
fi
source ~/git_complete.bash
