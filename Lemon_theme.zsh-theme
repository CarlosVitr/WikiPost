local user='%{$fg[green]%}%n@%{$fg[green]%}%m%{$reset_color%}'
local current_dir='%{$fg[blue]%}%~%{$reset_color%}'
local return_code='%(?..%{$fg[red]%}%? ↵%{$reset_color%})'
local git_branch='$(git_prompt_status)%{$reset_color%}$(git_prompt_info)%{$reset_color%}'

ZSH_THEME_RVM_PROMPT_OPTIONS=""
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[magenta]%}branch:("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}ⓧ %{$fg[reset_color]%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}ⓥ %{$fg[reset_color]%}"

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%}➕ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[blue]%}✹ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%}✖ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%}➜ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%}═ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%}✭ %{$reset_color%}"

ZSH_THEME_RUBY_PROMPT_PREFIX="%{$fg[red]%}ruby:("
ZSH_THEME_RUBY_PROMPT_SUFFIX=")%{$reset_color%}"

PROMPT="${user}%{$fg[cyan]%}|%{$reset_color%}${current_dir}%{$fg[cyan]%}|%{$reset_color%}${git_branch}%{$fg[white]%}»%{$reset_color%} "
RPROMPT="$(ruby_prompt_info)$%(?.%{$fg[green]%}✓%f.%{$fg[red]%}✘%f)"
