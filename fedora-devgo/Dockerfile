#Dockerfile to generate image on top of fedora Base for Go development
FROM pcompton/fedora-devbase
MAINTAINER Phil Compton <me@philcompton.com>
ENV BUILD_DATE 2014.12.27
USER root
RUN mkdir /goroot && curl https://storage.googleapis.com/golang/go1.4.linux-amd64.tar.gz | tar xvzf - -C /goroot --strip-components=1
RUN mkdir /gopath


ENV GOROOT /goroot
ENV GOPATH /gopath
ENV PATH $PATH:$GOROOT/bin:$GOPATH/bin

RUN go get -u github.com/nsf/gocode

RUN cd $HOME/.vim/bundle && git clone https://github.com/fatih/vim-go.git

RUN chown -R dev:dev $HOME/
RUN chown -R dev:dev $GOPATH/
USER dev
CMD [ "/bin/bash" ]
