FROM ubuntu:14.04

MAINTAINER Andreas Hucks "andreas@inputrequired.org"

RUN \
    apt-get update && \
    apt-get install -y apt-cacher-ng

EXPOSE 3142
VOLUME /var/cache/apt-cacher-ng
VOLUME /var/log/apt-cacher-ng

ENTRYPOINT ["/usr/sbin/apt-cacher-ng"]

CMD ["ForeGround=1"]