# Alias all git shortcuts

fancy_echo() {
    local fmt="$1"; shift
    printf "\n$fmt\n" "$@"
}

fancy_echo "Git Config Setup 'g'..."

source /usr/share/bash-completion/completions/git
source ~/.git_completion.sh

if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion                                                                                                                                                                
fi

function_exists() {
    declare -f -F $1 > /dev/null
    return $?
}

for al in `__git_aliases`; do
    alias g$al="git $al"
    
    complete_func=_git_$(__git_aliased_command $al)
    function_exists $complete_fnc && __git_complete g$al $complete_func
done

fancy_echo "Git Config Setup 'g' - Done"
fancy_echo "Now you can use 'g' instead of 'git' for all git commands"
