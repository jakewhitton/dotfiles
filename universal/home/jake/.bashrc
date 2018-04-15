# /home/jake/.bashrc

# Test for interactive shell
if [[ $- != *i* ]] ; then
	return
fi

export TIME_FORMAT="%I:%M:%S%p"
export PATH=$PATH":/home/jake/programming/shell"

#eval "$(pandoc --bash-completion)"
