# /home/jake/.bashrc

if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

for file in /home/jake/programming/shell/aliases/*
do
	source "$file"
done
