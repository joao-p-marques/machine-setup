set PATH /home/jota/.local/bin/ /snap/bin/ /var/lib/snapd/snap/bin $PATH
set -x EDITOR 'vim'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/jota/Downloads/google-cloud-sdk-282.0.0-linux-x86_64/google-cloud-sdk/path.fish.inc' ]; . '/home/jota/Downloads/google-cloud-sdk-282.0.0-linux-x86_64/google-cloud-sdk/path.fish.inc'; end
