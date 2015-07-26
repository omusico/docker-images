#Image for irssi on Ubuntu
FROM pcompton/vivid:latest
MAINTAINER Phil Compton <me@philcompton.com>
ENV BUILD_DATE 2015.07.25

RUN echo "deb http://archive.ubuntu.com/ubuntu vivid universe" >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y readline-common
RUN apt-get install -y irssi irssi-plugin-otr irssi-scripts
RUN apt-get clean

ENV HOME /home/irssi
RUN useradd --create-home --home-dir $HOME irssi \
      && mkdir -p $HOME/.irssi \
      && chown -R irssi:irssi $HOME

WORKDIR $HOME

VOLUME $HOME

USER irssi

CMD irssi
