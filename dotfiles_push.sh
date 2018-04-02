#!/bin/sh

GIT_BASH_DIR="bash"
GIT_BASH_COMPLETION_DIR="${GIT_BASH_DIR}/.bash_completion.d"
GIT_VIM_DIR="vim"

[ -d ${GIT_BASH_DIR} ] || mkdir ${GIT_BASH_DIR}
[ -d ${GIT_BASH_COMPLETION_DIR} ] || mkdir ${GIT_BASH_COMPLETION_DIR}
[ -d ${GIT_VIM_DIR} ] || mkdir ${GIT_VIM_DIR}
[ -d ${GIT_VIM_DIR}/colors ] || mkdir ${GIT_VIM_DIR}/colors

cp -f ${HOME}/.bash_profile \
  ${HOME}/.bashrc \
  ${HOME}/.bash_aliases \
  ${HOME}/.bash_logout \
  ${GIT_BASH_DIR}/

cp -f ${HOME}/.bash_completion.d/* ${GIT_BASH_COMPLETION_DIR}/

cp -f ${HOME}/.vimrc ${GIT_VIM_DIR}/
cp -f ${HOME}/.vim/colors/* ${GIT_VIM_DIR}/colors/

git add .
