#Dockerfile to generate a hub for command line tools for other images on top of CentOS 7
FROM pcompton/centos-jdk:latest
MAINTAINER Phil Compton <me@philcompton.com>
ENV BUILD_DATE 2015.07.20
ENV ZOOKEEPER_VERSION 3.4.6
ENV ZK_HOME /opt/zookeeper
ENV KAFKA_VERSION 0.8.2.1
ENV KAFKA_HOME /opt/kafka
ENV SCALA_VERSION 2.11

ADD MariaDB.repo /etc/yum.repos.d/MariaDB.repo
RUN yum install -y MariaDB-client git vim-enhanced wget the_silver_searcher bzip2 unzip zip 

RUN curl -fL -o /zookeeper.tar.gz http://mirror.symnds.com/software/Apache/zookeeper/zookeeper-${ZOOKEEPER_VERSION}/zookeeper-${ZOOKEEPER_VERSION}.tar.gz \
  && tar xzf zookeeper.tar.gz \
  && mv /zookeeper-${ZOOKEEPER_VERSION} /opt/zookeeper \
  && rm zookeeper.tar.gz

RUN curl -fl -o /kafka_${SCALA_VERSION}-${KAFKA_VERSION}.tgz http://mirrors.advancedhosters.com/apache/kafka/${KAFKA_VERSION}/kafka_${SCALA_VERSION}-${KAFKA_VERSION}.tgz \
  && tar xzf kafka_${SCALA_VERSION}-${KAFKA_VERSION}.tgz \
  && mv kafka_${SCALA_VERSION}-${KAFKA_VERSION} /opt/kafka \
  && rm kafka_${SCALA_VERSION}-${KAFKA_VERSION}.tgz

ENV PATH ${ZK_HOME}/bin:${KAFKA_HOME}/bin:${PATH}

ENV HOME /home/control
RUN useradd --create-home --home-dir $HOME control
ADD .vimrc $HOME/.vimrc
ADD .aliases $HOME/.aliases
ADD .bash_prompt $HOME/.bash_prompt
ADD .bash_profile $HOME/.bash_profile
ADD .bashrc $HOME/.bashrc
RUN mkdir -p $HOME/.vim/autoload \
  && mkdir -p $HOME/.vim/bundle \
  && mkdir -p $HOME/.ssh \
  && mkdir -p $HOME/mount \
  && curl -LSso $HOME/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim \
  && git clone https://github.com/godlygeek/csapprox.git $HOME/.vim/bundle/csapprox \
  && git clone https://github.com/mattn/gist-vim.git $HOME/.vim/bundle/gist-vim \
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
  && git clone https://github.com/guns/vim-clojure-static.git $HOME/.vim/bundle/vim-clojure-static \
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
  && chown -R control:control $HOME

WORKDIR $HOME

VOLUME $HOME/.ssh $HOME/mount

USER control


CMD /bin/bash
