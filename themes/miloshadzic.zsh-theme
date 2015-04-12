# Yay! High voltage and arrows!

ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}⚡%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

PROMPT='%n@%m %{$fg[cyan]%}%1~%{$reset_color%}%{$fg[red]%}|%{$reset_color%}$(git_prompt_info)%{$fg[cyan]%}⇒%{$reset_color%} '

function virtualenv_info {
      [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
}

case `uname` in
  Darwin)
  RPROMPT='%{$fg[green]%}$(virtualenv_info)%{$reset_color%}%'
  ;;
esac
