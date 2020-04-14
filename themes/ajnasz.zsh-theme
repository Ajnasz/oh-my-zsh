aws-profile-ps1() {
	local AWS_PROFILE_COLOR=""

	if [ ! -z "$AWS_PROFILE" ] && [ "$AWS_PROFILE" != "default" ];then
		AWS_PROFILE_COLOR="[%{$fg[green]%}$AWS_PROFILE%{$reset_color%}]"
	fi

	echo "$AWS_PROFILE_COLOR"
}

# PROMPT='$(aws-profile-ps1)%{$fg[cyan]%}%T %{$fg[blue]%}%n%{$fg[yellow]%}@%{$fg[red]%}%M%{$reset_color%}:%{$fg[magenta]%}%~%{$reset_color%}$(git_prompt_info)%(?..[%?]) %(!.#.$) '
PROMPT='$(aws-profile-ps1)%{$fg[cyan]%}%T %{$fg[magenta]%}%~%{$reset_color%}$(git_prompt_info)%(?..[%?]) %(!.#.$) '

if which kube_ps1 > /dev/null;then
	PROMPT='$(kube_ps1)'$PROMPT
fi


ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[cyan]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
