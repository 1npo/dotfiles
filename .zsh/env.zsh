autoload -Uz vcs_info
autoload -Uz compinit && compinit

setopt prompt_subst
setopt APPEND_HISTORY
setopt SHARE_HISTORY

export PYTHONDONTWRITEBYTECODE=1
export TERM=st-256color
export HISTFILE=$HOME/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000

case $TERM in
    st-256color*)
        precmd () {print -Pn "\e]0;$USER@`hostname`:$PWD\a"}
        ;;
esac

# not sure where to put this
zstyle ':vcs_info:git:*' formats '%b'
zstyle ":completion:*:commands" rehash 1
plugins=(git ssh-agent)