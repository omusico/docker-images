#Dockerfile to generate base image for development on top of Fedora
FROM fedora:21
MAINTAINER Phil Compton <me@philcompton.com>
ENV BUILD_DATE 2014.12.27
RUN yum clean all && yum update -y && yum install -y wget git git-extras vim-enhanced bash-completion man-pages
RUN useradd dev
WORKDIR /home/dev
ENV HOME /home/dev
RUN mkdir -p $HOME/.vim/colors && mkdir -p $HOME/.vim/bundles  && mkdir -p $HOME/.vim/backups && mkdir -p $HOME/.vim/swaps && mkdir -p $HOME/.vim/syntax && mkdir -p $HOME/.vim/undo
ADD .vim/colors/solarized.vim $HOME/.vim/colors/solarized.vim
ADD .vimrc $HOME/.vimrc
ADD .bash_prompt $HOME/.bash_prompt
ADD .gitconfig $HOME/.gitconfig
RUN echo source $HOME/.bash_prompt >> $HOME/.bashrc

RUN chown -R dev:dev $HOME/
USER dev
CMD [ "/bin/bash" ]
