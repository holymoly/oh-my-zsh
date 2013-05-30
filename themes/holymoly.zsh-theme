# ------------------------------------------------------------------------------
#          FILE:  holymoly.zsh-theme
#   DESCRIPTION:  oh-my-zsh theme file.
#        AUTHOR:  holymoly
#       VERSION:  0.0.1
# ------------------------------------------------------------------------------

if [ "$(whoami)" = "root" ]; then USERCOLOR="red"; else USERCOLOR="grey"; fi
if [ $SSH_CONNECTION ];
  then 
  PROMPT='%{$fg_bold[$USERCOLOR]%}%n%{$reset_color%} %{$fg_bold[green]%}%M% %{$fg_bold[yellow]%}%~%{$reset_color%} %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%}% %{$reset_color%}%{$fg[red]%}❯%{$reset_color%} '
  RPROMPT='[%*]';
  else 
  PROMPT='%{$fg_bold[$USERCOLOR]%}%n%{$reset_color%} %{$fg_bold[yellow]%}%~%{$reset_color%} %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%}% %{$reset_color%}%{$fg[red]%}❯%{$reset_color%} '
  RPROMPT='[%*]';
fi

ZSH_THEME_GIT_PROMPT_PREFIX="±(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}) "

if which rbenv &> /dev/null; then
  RPROMPT='%{$fg[red]%}$(rbenv version | sed -e "s/ (set.*$//")%{$reset_color%}'
else
  if which rvm-prompt &> /dev/null; then
    RPROMPT='%{$fg[red]%}$(rvm-prompt)%{$reset_color%}'
  fi
fi

alias ls="ls -lsa"
