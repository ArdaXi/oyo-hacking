# /etc/cshrc
#
# csh configuration for all shell invocations.

# by default, we want this to get set.
# Even for non-interactive, non-login shells.
if ( "$group" == "$user" && $uid > 99 ) then
	umask 002
else	
	umask 022
endif

if ($?prompt) then
  if ($?tcsh) then
    set promptchars='$#'
    set prompt=\[$user'@%m %c]%# ' 
  else
    set prompt=\[$user@`hostname -s`\]\$\ 
  endif
endif

if ( $?tcsh ) then
	bindkey "^[[3~" delete-char
endif

setenv MAIL "/var/spool/mail/$USER"

if ( -d /etc/profile.d ) then
	set nonomatch
        foreach i ( /etc/profile.d/*.csh )
		if ( -r $i ) then
               		source $i
		endif
        end
	unset i nonomatch
endif

