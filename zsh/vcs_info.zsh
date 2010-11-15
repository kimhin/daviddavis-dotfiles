setopt prompt_subst
autoload -Uz vcs_info
zstyle ':vcs_info:*' actionformats \
    '%F{2}[%F{4}%s%F{2}:%F{6}%b%F{2}|%F{1}%a%F{2}]%f '
zstyle ':vcs_info:*' formats       \
    '%F{2}[%F{4}%s%F{2}:%F{6}%b%F{2}]%f '
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{2}:%F{7}%r'

zstyle ':vcs_info:*' enable git cvs svn

# or use pre_cmd, see man zshcontrib
vcs_info_wrapper() {
  vcs_info
  if [ -n "$vcs_info_msg_0_" ]; then
    echo "%{$fg[grey]%}${vcs_info_msg_0_}%{$reset_color%}$del"
  fi
}
RPROMPT=$'$(vcs_info_wrapper)'