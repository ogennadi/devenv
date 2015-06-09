alias ea="vim ~/.bashrc && source ~/.bashrc"

function cl() {
	command cd $* && ls
}

alias cd=cl
alias vi=vim
