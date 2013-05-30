export PS1="%/: "
autoload -U compinit promptinit
compinit
promptinit
zstyle ':completion:*' menu select
setopt completealiases
# location of history
export HISTFILE=~/.histfile
# number of lines kept in history
export HISTSIZE=10000
# number of lines saved in the history after logout
export SAVEHIST=10000 

#Colored ls
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
alias ls="ls -G"

#la shortcut
alias la="ls -a"

#Maven heap augmentation
export MAVEN_OPTS="-Xmx1024M"

#Java Home
export JAVA_HOME=`/usr/libexec/java_home -v 1.6`

#virtualenv stuff
source /usr/local/bin/virtualenvwrapper.sh
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true

#node stuff
export NODE_PATH=/usr/local/lib/node_modules

#hadoop and hbase stuff
export HADOOP_HOME="/Users/ben.norton/hadoop/hadoop-0.20.2-cdh3u3"
export PATH="${PATH}:${HADOOP_HOME}/bin"
export HBASE_HOME="/Users/ben.norton/hbase/hbase-0.90.4-cdh3u3"

#shortcut functions
env () {
	source ~/virtualenvs/$1/bin/activate
}

gw () {
	cd /gitwork/$1
}


#This sets up and down to search history for lines beginning with current line
bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward

#Aesthetic launch stuff
clear
fortune | cowsay -f eyes
