# ruby
#
# VERSION               0.0.1

FROM      gendosu/ruby:latest

MAINTAINER Gen Takahashi "gendosu@gmail.com"

RUN apt-get update \
&&  apt-get upgrade -y --force-yes \
&&  apt-get install -y --force-yes \
    fonts-hanazono \
    imagemagick \
    fonts-migmix \
    sqlite3 \
    libsqlite3-dev \
    libpq-dev \
    psmisc \
    sudo \
    python \
&&  apt-get clean \
&&  rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*


