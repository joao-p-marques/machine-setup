set PATH /home/jota/.local/bin/ /snap/bin/ /var/lib/snapd/snap/bin $PATH
set -x EDITOR 'vim'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/jota/Downloads/google-cloud-sdk/path.fish.inc' ]; . '/home/jota/Downloads/google-cloud-sdk/path.fish.inc'; end

alias ll='ls -la'
alias v='vim'

alias mvn='docker run -it --rm -v $PWD:/src -w /src maven mvn'
alias npm='docker run -it --rm -v $PWD:/src -w /src node npm'
alias yarn='docker run -it --rm -v $PWD:/src -w /src node yarn'

alias vimconf='vim ~/.vimrc' 
alias fishconf='vim ~/.config/fish/config.fish' 
alias tmuxconf='vim ~/.tmux.conf' 

bind \cH backward-kill-word
bind "[3;5~" kill-word

# auto start tmux
if status is-interactive
and not set -q TMUX
    exec tmux
end
