#Dockerfile to generate redis instance
FROM pcompton/oracle-server-jre:latest
MAINTAINER Phil Compton <me@philcompton.com>
ENV BUILD_DATE 2015.10.06
ENV REDIS_VERSION 3.0.4
ENV REDIS_DOWNLOAD_SHA1 cccc58b2b8643930840870f17280fcae57ed7675

# add our user and group first to make sure their IDs get assigned consistently, regardless of whatever dependencies get added
RUN groupadd -r redis && useradd -r -g redis redis

# grab gosu for easy step-down from root
RUN gpg2 --keyserver pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
RUN curl -o /usr/local/bin/gosu -SL "https://github.com/tianon/gosu/releases/download/1.5/gosu-amd64" \
	&& curl -o /usr/local/bin/gosu.asc -SL "https://github.com/tianon/gosu/releases/download/1.5/gosu-amd64.asc" \
	&& gpg2 --verify /usr/local/bin/gosu.asc \
	&& rm /usr/local/bin/gosu.asc \
	&& chmod +x /usr/local/bin/gosu

RUN dnf install -y make

# for redis-sentinel see: http://redis.io/topics/sentinel
RUN mkdir -p /usr/src/redis \
	&& curl -sSL "http://download.redis.io/releases/redis-${REDIS_VERSION}.tar.gz" -o redis.tar.gz \
	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - \
	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 \
	&& rm redis.tar.gz \
	&& make -C /usr/src/redis \
	&& make -C /usr/src/redis install \
	&& rm -r /usr/src/redis

RUN mkdir /data && chown redis:redis /data
VOLUME /data
WORKDIR /data

COPY docker-entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 6379
CMD [ "redis-server" ]
