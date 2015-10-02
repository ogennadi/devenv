export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"

export EDITOR=vim
export PS1="\n\${debian_chroot:+(\$debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\] @ \d - \t\n$ "

export PATH=$PATH:"/usr/local/share/idea-IU-141.2735.5/bin:/usr/local/share/IGV_2.3.60"


alias ea="$EDITOR ~/.bashrc && source ~/.bashrc"
alias ll="ls -lh"
alias ls="ls --all --color"

function cl(){
  command cd "$@" && ls
}

alias ack="ack-grep"
alias vi=vim
alias cd=cl
alias g="git status"
alias ga="git add"
alias gd="git diff"
alias gdc="git diff --cached"
alias gca="git commit -a"
alias gc="git commit"
alias gpod="git push origin dev"
alias gpom="git push origin master"
alias gap="git add -p"
alias gua="git update-index --assume-unchanged" #just for memorizing's sake
alias install="sudo apt-get install"
alias remove="sudo apt-get remove"
alias show="apt-cache show"
alias search="apt-cache search"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"

alias rs="bin/rails server"
alias rc="bin/rails console"
alias pacs="aptitude search -F '%p' '~i!~M' > ~/packages.txt"

function f(){
  find . -name "*$**"
}

source ~/export.sh
