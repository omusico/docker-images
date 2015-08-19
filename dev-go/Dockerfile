#Dockerfile to generate Go Dev Environment
FROM pcompton/dev-base:latest
MAINTAINER Phil Compton <me@philcompton.com>
ENV BUILD_DATE 2015.08.19
ENV GO_VERSION 1.5
ENV GOROOT /opt/go
ENV GOPATH ${HOME}/go

USER root

RUN curl -fL https://storage.googleapis.com/golang/go${GO_VERSION}.linux-amd64.tar.gz | tar -xzC /opt

ENV PATH ${GOROOT}/bin:${PATH}:${GOPATH}/bin

USER pcompton

RUN mkdir -p $GOPATH/bin && mkdir -p $GOPATH/pkg
RUN mkdir -p $GOPATH/src/github.com/pcompton
RUN go get github.com/go-sql-driver/mysql
RUN go get github.com/denisenkom/go-mssqldb
RUN go get github.com/lib/pq
RUN go get github.com/gorilla/mux

CMD /bin/bash
