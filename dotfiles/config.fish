set PATH /home/jota/.local/bin/ /snap/bin/ /var/lib/snapd/snap/bin $PATH
set -x EDITOR 'vim'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/jota/Downloads/google-cloud-sdk/path.fish.inc' ]; . '/home/jota/Downloads/google-cloud-sdk/path.fish.inc'; end

alias ll='ls -la'
alias v='vim'

alias mvn='docker run -it --rm -v $PWD:/src -w /src maven mvn'
alias npm='docker run -it --rm -v $PWD:/src -w /src node npm'
alias yarn='docker run -it --rm -v $PWD:/src -w /src node yarn'

bind \cH backward-kill-word
bind "[3;5~" kill-word
