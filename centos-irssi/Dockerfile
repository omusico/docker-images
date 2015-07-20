#Image for irssi on Centos7
FROM pcompton/centos-base:latest
MAINTAINER Phil Compton <me@philcompton.com>
ENV BUILD_DATE 2015.07.20
ENV IRSSI_VERSION 0.8.17

RUN yum install -y gcc glib2-devel.x86_64 openssl-devel.x86_64 ncurses-devel.x86_64 autoconf automake make perl-devel.x86_64 perl-devel.i686 perl-libs.x86_64 perl-libs.i686 perl-core.x86_64 perl-core.i686
RUN curl -o /irssi-${IRSSI_VERSION}.tar.gz -fL http://www.irssi.org/files/irssi-${IRSSI_VERSION}.tar.gz \
  && tar xzf /irssi-${IRSSI_VERSION}.tar.gz \
  && cd /irssi-${IRSSI_VERSION} \
  && ./configure --with-bot --with-perl=yes --enable-true-color --with-proxy \
  && make && make install \
  && cd .. && rm -r /irssi-${IRSSI_VERSION}

ENV HOME /home/irssi
RUN useradd --create-home --home-dir $HOME irssi \
      && mkdir -p $HOME/.irssi \
      && chown -R irssi:irssi $HOME

WORKDIR $HOME

VOLUME $HOME

USER irssi

CMD irssi
