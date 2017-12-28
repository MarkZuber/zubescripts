export M2_HOME=/usr/local/apache-maven/apache-maven-3.2.2
export M2=$M2_HOME/bin
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_11.jdk/Contents/Home/jre

PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH
export PATH=/usr/local/bin:$JAVA_HOME:$M2:$PATH:/Applications/CMake.app/Contents/bin

alias atom="open -a Atom"
eval $(/usr/libexec/path_helper -s)

export PATH="$HOME/.cargo/bin:$PATH"

LS_COLORS='ow=01;36;40'
export LS_COLORS
GIT_PROMPT_ONLY_IN_REPO=1
source ~/.bash-git-prompt/gitprompt.sh

source ~/.aliases

code () {
    if [[ $# = 0 ]]
    then
        open -a "Visual Studio Code"
    else
        [[ $1 = /* ]] && F="$1" || F="$PWD/${1#./}"
        open -a "Visual Studio Code" --args "$F"
    fi
}
