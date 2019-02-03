export PS1="KC's Macbook$ "
export PS2="$"

# Ensure user-installed binaries take precedence
export PATH=/usr/local/bin:$PATH
# Load .bashrc if it exists
test -f ~/.bashrc && source ~/.bashrc

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    source $(brew --prefix)/etc/bash_completion
fi

#   Change Prompt
#   ------------------------------------------------------------
source ~/.git-completion.bash
source ~/.git-prompt.sh

GIT_PS1_SHOWDIRTYSTATE='y'
GIT_PS1_SHOWUPSTREAM="auto"

function color_my_prompt {
    local __user_and_host="\[\033[01;32m\]\u@\h"
    local __cur_location="\[\033[01;34m\]\w"
    local __git_branch_color="\[\033[93m\]"
    local __git_branch='$(__git_ps1 "[%s]")'
    local __prompt_tail="\[\033[35m\]$"
    local __last_color="\[\033[00m\]"
    export PS1="$__cur_location$__git_branch_color$__git_branch$__prompt_tail$__last_color "
}
color_my_prompt