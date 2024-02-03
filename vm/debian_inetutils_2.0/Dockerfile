FROM debian:12.2

WORKDIR /ft_ping

RUN apt-get -y update \
&& apt-get -y upgrade

### ZSH ###
RUN apt-get -y install curl git zsh
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

### Man ###
RUN apt-get -y install man-db

### Makefile ###
RUN apt-get -y install build-essential make

### Ping : inetutils-2.0 ###
RUN apt-get -y install tar gzip
RUN curl https://ftp.gnu.org/gnu/inetutils/inetutils-2.0.tar.gz --output inetutils-2.0.tar.gz
RUN tar xf inetutils-2.0.tar.gz
RUN cd inetutils-2.0 && ./configure && make install
RUN rm -rfv inetutils-2.0*

### Run ###
COPY ./docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
RUN chmod +x /usr/local/bin/docker-entrypoint.sh
ENTRYPOINT ["docker-entrypoint.sh"]
