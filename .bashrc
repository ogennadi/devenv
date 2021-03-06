export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"

export EDITOR=vim
export PS1="\n\${debian_chroot:+(\$debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\] @ \d - \t\n$ "

export PATH=$PATH:"/usr/local/share/idea/bin:/usr/local/share/IGV_2.3.60:$HOME/.gem/ruby/2.2.0/bin"


alias ea="$EDITOR ~/.bashrc && source ~/.bashrc"
alias ev="$EDITOR ~/.vimrc"
alias la="ls -alh"
alias ll="ls -lh"
alias ls="ls --color"

function cl(){
  command cd "$@" && ls
}

alias ack="ack-grep -i"
alias vi=vim
alias cd=cl
alias g="git status"
alias ga="git add"
alias gd="git diff"
alias gdc="git diff --cached"
alias gca="git commit -a"
alias gcam="git commit --amend"
alias gc="git commit"
alias gpod="git push origin dev"
alias gpom="git push origin master"
alias gap="git add -p"
alias gua="git update-index --assume-unchanged" #just for memorizing's sake
alias install="sudo apt-get install"
alias remove="sudo apt-get remove"
alias show="apt-cache show"
alias search="apt-cache search"
alias mkdir="command mkdir -p"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"

alias bi="bundle install"
alias rs="bin/rails server"
alias rc="bin/rails console"
alias pacs="aptitude search -F '%p' '~i!~M'"

alias msv="cd ~/code/MiSeqValPipeline"
alias mountsynberc="mkdir -p ~/mnt/synberc && sshfs oge@registry.synberc.org:/ ~/mnt/synberc"

function f(){
  find . -name "*$**"
}
