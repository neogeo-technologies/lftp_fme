FROM debian:jessie

RUN apt update -y
RUN mkdir /src
WORKDIR /src
RUN apt-get -y install packaging-dev debian-keyring devscripts equivs
RUN dget -x http://http.debian.net/debian/pool/main/l/lftp/lftp_4.8.1-1.dsc
WORKDIR /src/lftp-4.8.1
RUN apt-get install -y gawk
ENV DEBIAN_FRONTEND noninteractive
RUN mk-build-deps --install --remove -t 'apt-get -y'
RUN dch --local ~sdr1+ --distribution jessie-backports "compilé pour jessie-backports."
RUN fakeroot debian/rules binary -j9
