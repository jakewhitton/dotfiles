# ~/.bashrc

export EDITOR=vim

if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

export PROFILE_D_PATH=~/.d/shell/profile.d
for file in ${PROFILE_D_PATH}/*
do
	. "$file"
done

# Edit specific alias file
function valias()
{
    if [ $# -eq 1 ]
    then
        $EDITOR "${PROFILE_D_PATH}/${1}"
    else
        echo "Usage: ${FUNCNAME} <file>" 2>&1
        return 1
    fi
}

# Autocompletion for valias
function _valias_complete()
{
    local cmd=$1 cur=$2 pre=$3
    case $COMP_CWORD in
        1)
            COMPREPLY=( $(cd "$PROFILE_D_PATH" && compgen -f -- "$cur") )
            ;;
        *)
            COMPREPLY=()
            ;;
    esac
}
complete -F _valias_complete valias
