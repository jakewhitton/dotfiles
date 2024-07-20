# /home/jake/.bashrc

if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

export PATH="$PATH:/home/jake/programming/shell"
export PATH="$PATH:/home/jake/.d/bin"

export PROFILE_D_DIR=~/.config/profile.d
valias()
{
    vim "${PROFILE_D_DIR}/${1}"
}

_valias_complete()
{
    local cmd=$1 cur=$2
    COMPREPLY=( $( cd "$PROFILE_D_DIR" && compgen -f -- "$cur" ) )
}
complete -F _valias_complete valias

for file in ${PROFILE_D_DIR}/*
do
	source "$file"
done
