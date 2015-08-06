#Dockerfile to generate Front End Dev Environment
FROM pcompton/dev-base:latest
MAINTAINER Phil Compton <me@philcompton.com>
ENV BUILD_DATE 2015.08.06
ENV NODE_VERSION 0.12.7
ENV NODE_HOME /opt/node

USER root

RUN curl -fL http://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}-linux-x64.tar.gz | tar xzC /opt \
  && mv /opt/node-v${NODE_VERSION}-linux-x64 /opt/node

ENV PATH ${NODE_HOME}/bin:${PATH}

RUN npm install -g grunt-cli grunt gulp bower typescript less js-beautify jasmine jshint babel

USER pcompton

RUN git clone https://github.com/leafgarland/typescript-vim.git $HOME/.vim/bundle/typescript-vim
RUN git clone git://github.com/mklabs/grunt.vim.git $HOME/.vim/bundle/grunt.vim
RUN git clone https://github.com/walm/jshint.vim.git $HOME/.vim/bundle/jshint.vim

CMD /bin/bash
