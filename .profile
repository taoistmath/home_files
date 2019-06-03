ulimit -n 1048
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source $GITAWAREPROMPT/main.sh
export PS1="\u \W \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtred\] |-(o)-|\[$txtrst\] "
export SUDO_PS1="\[$bakred\]\u@\h\[$txtrst\] \w\$ "
#export PS1="\u@\h \W \[\$txtcyn\]\$git_branch\[\$txtpur\]\$git_dirty\[$txtwht\]$\[$txtrst\] "
source ~/.bash_aliases

export JAVA_HOME=$(/usr/libexec/java_home)

