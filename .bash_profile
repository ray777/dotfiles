export PYTHONPATH="/usr/local/lib/python3.7/site-packages/"
export ANDROID_HOME=$HOME/Library/Android/sdk
#export JAVA_HOME="$(/usr/libexec/java_home)"
export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/opt/fzf/bin:/Applications/kitty.app/Contents/MacOS:$JAVA_HOME:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$HOME/.fastlane/bin
export PATH=$PATH:~/go/src/github.com/docker/docker-credential-helpers/bin
export PATH=$PATH:~/Downloads/project/flutter/bin
source "$HOME/.bashrc"
