#Dockerfile to generate base image for development on top of Fedora
FROM fedora:21
MAINTAINER Phil Compton <me@philcompton.com>
ENV BUILD_DATE 2015.02.05
RUN yum clean all && yum update -y && yum install -y wget git git-extras vim-enhanced \
    bash-completion man-pages ngrep tar gzip subversion colordiff awk zsh curl
RUN useradd dev
WORKDIR /home/dev
ENV HOME /home/dev
USER dev
RUN git clone git://github.com/pcompton/oh-my-zsh.git $HOME/.oh-my-zsh
RUN git clone https://github.com/pcompton/dotfiles.git
RUN cp -r $HOME/dotfiles/.vim $HOME/.vim && mkdir -p $HOME/.vim/autoload && mkdir -p $HOME/.vim/bundle
RUN curl -LSso $HOME/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
RUN cp $HOME/dotfiles/.vimrc $HOME/.vimrc \
    && cp $HOME/dotfiles/.bash_prompt $HOME/.bash_prompt \
    && cp $HOME/dotfiles/.wgetrc $HOME/.wgetrc \
    && cp $HOME/dotfiles/.zshrc $HOME/.zshrc \
    && $HOME/dotfiles/vimbundles.sh \
    && echo source $HOME/.bash_prompt >> $HOME/.bashrc \
    && rm -rf $HOME/dotfiles

RUN chown -R dev:dev $HOME/
USER dev
CMD [ "/bin/zsh" ]
