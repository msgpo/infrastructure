FROM debian:buster
MAINTAINER Lorenzo "Palinuro" Faletra (palinuro@linux.it)
ENV DEBIAN_FRONTEND noninteractive
ENV VERSION 0.1

# Update system
RUN apt-get update;apt-get -y dist-upgrade; rm -rf /var/lib/apt/lists/*

# Install dependencies
RUN apt-get update;apt-get -y install dnsdist geoip-database-extra; \
	rm -rf /var/lib/apt/lists/*

STOPSIGNAL SIGTERM
CMD /usr/bin/dnsdist --supervised
