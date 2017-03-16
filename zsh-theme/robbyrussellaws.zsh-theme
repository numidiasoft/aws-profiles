function current() {
  echo "$(cat ~/.aws/.current_aws_profile)"
}

function aws_profile() {
  if [ -f ~/.aws/.current_aws_profile ]; then
    echo "%{$fg_bold[blue]%}aws:%{$reset_color%}%{$fg_bold[magenta]%}($(current))%{$reset_color%}➜ "
  else
    echo "%{$fg_bold[blue]%}aws:%{$reset_color%}%{$fg_bold[magenta]%}(unknown)%{$reset_color%}➜"
  fi
}

function prompt() {
  echo "${ret_status} %{$fg[cyan]%}%c%{$reset_color%} $(aws_profile) $(git_prompt_info)"
}

function precmd() {
  PROMPT='$(prompt)'
}

local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
PROMPT='$(prompt)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
