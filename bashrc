# Minimal prompt with output from the last command run
PS1="\$? \$(if [[ \$? == 0 ]]; then echo \"\[\033[0;32m\]:)\"; else echo \"\[\033[0;31m\]:(\"; fi)\[\033[00m\] \u@\h:\w >  "

# Random fortune when logging in
[[ "$PS1" ]] && echo -e "$(/usr/bin/fortune)"
