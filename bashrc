# Minimal prompt with output from the last command run
PS1="\$? \$(if [[ \$? == 0 ]]; then echo \"\[\033[0;32m\]:)\"; else echo \"\[\033[0;31m\]:(\"; fi)\[\033[00m\] \u@\h:\w\n>> "

export SVN_EDITOR=vim
export PATH=$PATH:~/bin

alias svndiff="svn diff --summarize"
