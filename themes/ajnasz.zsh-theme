# PROMPT='%{$fg[cyan]%}%T %{$fg[blue]%}%n%{$fg[yellow]%}@%{$fg[red]%}%M%{$reset_color%}:%{$fg[magenta]%}%~%{$reset_color%}$(git_prompt_info)%(?..[%?]) %(!.#.$) '
if which kube_ps1 > /dev/null;then
	PROMPT='$(kube_ps1)%{$fg[blue]%}%n%{$fg[yellow]%}@%{$fg[red]%}%M%{$reset_color%}:%{$fg[magenta]%}%~%{$reset_color%}$(git_prompt_info)%(?..[%?]) %(!.#.$) '
else
	PROMPT='%{$fg[blue]%}%n%{$fg[yellow]%}@%{$fg[red]%}%M%{$reset_color%}:%{$fg[magenta]%}%~%{$reset_color%}$(git_prompt_info)%(?..[%?]) %(!.#.$) '
fi

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[cyan]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
