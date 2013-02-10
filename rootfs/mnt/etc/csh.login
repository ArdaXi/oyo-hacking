# /etc/csh.login

# System wide environment and startup programs, for login setup

if ($?PATH) then
	if ( "${path}" !~ */usr/X11R6/bin* ) then
		setenv PATH "${PATH}:/usr/X11R6/bin"
        endif
else
	if ( $uid == 0 ) then
		setenv PATH "/sbin:/usr/sbin:/usr/local/sbin:/bin:/usr/bin:/usr/local/bin:/usr/X11R6/bin"
	else
		setenv PATH "/bin:/usr/bin:/usr/local/bin:/usr/X11R6/bin"
	endif
endif

limit coredumpsize 0

setenv HOSTNAME `/bin/hostname`
set history=1000

if ( ! -f $HOME/.inputrc ) then
	setenv INPUTRC /etc/inputrc
endif
