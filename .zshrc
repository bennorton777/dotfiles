export PS1="%/: "
autoload -U compinit promptinit colors
colors
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

#ls aliases and color config
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
alias ls="ls -G"
alias ll="ls -l"
alias la="ls -a"
alias lla="ls -la"

export PATH="${PATH}:/gitwork/nexus"
export EC2_HOME="/usr/local/Cellar/ec2-api-tools/1.6.13.0/libexec"

#Maven heap augmentation
export MAVEN_OPTS="-Xmx1024M"

#Java Home
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.7.0_60.jdk/Contents/Home"

#RVM
export PATH=$PATH:"$HOME/.rvm/scripts/rvm"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

gw () {
	cd /gitwork/$1
}

#set last project
mlp () {
	echo $(pwd) > ~/last.project.directory
	echo $fg[red]"[shell] =====> saved $(pwd) as last project directory."
}
#change directory last project
cdlp () {
	cd $(cat ~/last.project.directory)
}

rs () {
	echo $(pwd) > ~/zshell.previous.directory;
	source ~/.zshrc;
	cd $(cat zshell.previous.directory);
}

alias erc="vim ~/.zshrc"

# Super fun keybindy stuff!
bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward

#Aesthetic launch stuff
clear
fortune | cowsay -f eyes
cd ~

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
