export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"

export EDITOR=vim
export PS1="\${debian_chroot:+(\$debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "

export PATH=$PATH:"/Users/oge/bin"


alias ea="$EDITOR ~/.bashrc && source ~/.bashrc"
alias ll="ls -l"
alias ls="ls --all --color"

function cl(){
  command cd $* && ls
}

alias vi=vim
alias cd=cl
alias g="git status"
alias ga="git add"
alias gd="git diff"
alias gca="git commit -am"
alias gc="git commit -m"
alias gpod="git push origin dev"
alias install="sudo apt-get install"
alias remove="sudo apt-get remove"
alias show="apt-cache show"
alias search="apt-cache search"

