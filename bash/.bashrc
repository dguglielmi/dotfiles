# asia bashrc

C_MAGENTA="\[\e[0;35m\]"
C_LBLUE="\[\e[1;34m\]"
C_GREEN="\[\e[0;32m\]"
C_WHITE="\[\e[0;37m\]"
C_NORMAL="\[\e[0m"

export PS1="${C_LBLUE}[${C_MAGENTA}\t${C_LBLUE}] ${C_GREEN}\u${C_WHITE}@${C_GREEN}\h${C_WHITE}: ${C_LBLUE}\w \$ ${C_NORMAL}"
export PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD/$HOME/~}\007"'

[ -f ~/.bash_aliases ] && . ~/.bash_aliases

export GPG_TTY=$(tty)

function pass-sol {
  PASSWORD_STORE_DIR="${HOME}/.pass-sol/" \pass $@
}
function pass-infra {
  PASSWORD_STORE_DIR="${HOME}/.pass-infra/" \pass $@
}
function pass-perso {
  PASSWORD_STORE_DIR="${HOME}/.pass-perso/" \pass $@
}

for compl in ~/.bash_completion.d/*
do
  . ${compl}
done
