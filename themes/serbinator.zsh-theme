HOST_PROMPT_="%{$fg_bold[blue]%}@$HOST[0,10]% "

PROMPT='%{$fg_bold[red]%}[%W %D{%T}] %{$fg_bold[yellow]%}$(collapse_pwd)
$HOST_PROMPT_ %{$fg_bold[cyan]%}♂%  %{$fg_bold[white]%}'

RPROMPT='%{$fg[blue]%}$(~/.rvm/bin/rvm-prompt)$(git_cwd_info)%{$fg_bold[white]%}'


# Use $(git_prompt_info) if you want to use the code down below to display Git data.

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[green]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[green]%} %{$fg_bold[red]%}✗%{$fg_bold[green]%}]"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%} ✔]"

function collapse_pwd {
    echo $(pwd | sed -e "s,^$HOME,~,")
}
