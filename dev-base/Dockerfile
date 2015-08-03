#Dockerfile to generate Ubuntu Vivid Vervet Base Image for Developement
FROM pcompton/vivid:latest
MAINTAINER Phil Compton <me@philcompton.com>
ENV BUILD_DATE 2015.08.03

RUN echo "deb http://archive.ubuntu.com/ubuntu vivid universe" >> /etc/apt/sources.list
RUN apt-get update && apt-get install -y manpages manpages-dev man-db vim vim-doc vim-scripts git git-extras git-flow wget num-utils silversearcher-ag jq gawk gawk-doc mlocate gnupg2 bzip2 unzip zip && apt-get clean

ENV HOME /home/pcompton
RUN useradd --create-home --home-dir $HOME pcompton

ADD .vimrc $HOME/.vimrc
ADD .aliases $HOME/.aliases
ADD .bash_prompt $HOME/.bash_prompt
ADD .bash_profile $HOME/.bash_profile
ADD .bashrc $HOME/.bashrc
ADD .gitconfig $HOME/.gitconfig
RUN mkdir -p $HOME/.vim/autoload
RUN mkdir -p $HOME/.vim/bundle
RUN mkdir -p $HOME/.ssh
RUN mkdir -p $HOME/mount
RUN curl -fLo $HOME/.vim/autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim
RUN git clone https://github.com/godlygeek/csapprox.git $HOME/.vim/bundle/csapprox \
  && git clone https://github.com/vim-scripts/Tabmerge.git $HOME/.vim/bundle/Tabmerge \
  && git clone https://github.com/vim-scripts/ZoomWin.git $HOME/.vim/bundle/ZoomWin \
  && git clone https://github.com/mileszs/ack.vim.git $HOME/.vim/bundle/ack.vim \
  && git clone https://github.com/bkad/CamelCaseMotion.git $HOME/.vim/bundle/CamelCaseMotion \
  && git clone https://github.com/kien/ctrlp.vim.git $HOME/.vim/bundle/ctrlp.vim \
  && git clone https://github.com/mattn/emmet-vim.git $HOME/.vim/bundle/emmet-vim \
  && git clone https://github.com/morhetz/gruvbox.git $HOME/.vim/bundle/gruvbox \
  && git clone https://github.com/othree/html5.vim.git $HOME/.vim/bundle/html5.vim \
  && git clone https://github.com/scrooloose/nerdtree.git $HOME/.vim/bundle/nerdtree \
  && git clone https://github.com/vim-scripts/paredit.vim.git $HOME/.vim/bundle/paredit.vim \
  && git clone https://github.com/kien/rainbow_parentheses.vim.git $HOME/.vim/bundle/rainbow_parentheses.vim \
  && git clone https://github.com/ervandew/supertab.git $HOME/.vim/bundle/supertab \
  && git clone https://github.com/scrooloose/syntastic.git $HOME/.vim/bundle/syntastic \
  && git clone https://github.com/godlygeek/tabular.git $HOME/.vim/bundle/tabular \
  && git clone https://github.com/wellle/targets.vim.git $HOME/.vim/bundle/targets.vim \
  && git clone https://github.com/vim-scripts/textutil.vim.git $HOME/.vim/bundle/textutil.vim \
  && git clone https://github.com/jlangston/tomorrow-night-vim.git $HOME/.vim/bundle/tomorrow-night-vim \
  && git clone https://github.com/bling/vim-airline $HOME/.vim/bundle/vim-airline \
  && git clone https://github.com/MattesGroeger/vim-bookmarks.git $HOME/.vim/bundle/vim-bookmarks \
  && git clone https://github.com/t9md/vim-choosewin.git $HOME/.vim/bundle/vim-choosewin \
  && git clone https://github.com/tpope/vim-classpath.git $HOME/.vim/bundle/vim-classpath \
  && git clone https://github.com/altercation/vim-colors-solarized.git $HOME/.vim/bundle/vim-colors-solarized \
  && git clone https://github.com/tpope/vim-commentary.git $HOME/.vim/bundle/vim-commentary \
  && git clone https://github.com/tpope/vim-dispatch.git $HOME/.vim/bundle/vim-dispatch \
  && git clone https://github.com/tpope/vim-endwise.git $HOME/.vim/bundle/vim-endwise \
  && git clone https://github.com/tpope/vim-fugitive.git $HOME/.vim/bundle/vim-fugitive \
  && git clone https://github.com/airblade/vim-gitgutter.git $HOME/.vim/bundle/vim-gitgutter \
  && git clone https://github.com/tpope/vim-haml.git $HOME/.vim/bundle/vim-haml \
  && git clone https://github.com/thinca/vim-localrc.git $HOME/.vim/bundle/vim-localrc \
  && git clone https://github.com/sheerun/vim-polyglot.git $HOME/.vim/bundle/vim-polyglot \
  && git clone https://github.com/tpope/vim-repeat.git $HOME/.vim/bundle/vim-repeat \
  && git clone https://github.com/tpope/vim-surround.git $HOME/.vim/bundle/vim-surround \
  && git clone https://github.com/tpope/vim-tbone.git $HOME/.vim/bundle/vim-tbone \
  && git clone https://github.com/mattn/webapi-vim.git $HOME/.vim/bundle/webapi-vim \
  && git clone https://github.com/gcmt/wildfire.vim.git $HOME/.vim/bundle/wildfire.vim \
  && git clone https://github.com/fatih/vim-go.git $HOME/.vim/bundle/vim-go \
  && git clone https://github.com/tomasr/molokai.git $HOME/.vim/bundle/molokai \
  && git clone https://github.com/Chiel92/vim-autoformat.git $HOME/.vim/bundle/vim-autoformat \
  && git clone https://github.com/janko-m/vim-test.git $HOME/.vim/bundle/vim-test.git \
  && git clone https://github.com/rking/ag.vim.git $HOME/.vim/bundle/ag.vim.git \
  && chown -R pcompton:pcompton $HOME

WORKDIR $HOME

VOLUME $HOME/bin $HOME/Docker $HOME/Downloads $Home/Dropbox $Home/OneDrive $HOME/repos $HOME/.boot2docker $HOME/.docker $HOME/.ssh

USER pcompton

CMD /bin/bash
