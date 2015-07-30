#Image for irssi on Ubuntu
FROM pcompton/vivid:latest
MAINTAINER Phil Compton <me@philcompton.com>
ENV BUILD_DATE 2015.07.30

RUN echo "deb http://archive.ubuntu.com/ubuntu vivid universe" >> /etc/apt/sources.list && apt-get update && \
 apt-get install -y readline-common && apt-get install -y irssi irssi-plugin-otr irssi-scripts && apt-get clean

ENV HOME /home/irssi
RUN useradd --create-home --home-dir $HOME irssi \
      && mkdir -p $HOME/.irssi \
      && chown -R irssi:irssi $HOME

WORKDIR $HOME

VOLUME $HOME

USER irssi

CMD irssi
