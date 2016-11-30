# ruby
#
# VERSION               0.0.1

FROM      gendosu/ruby:2

MAINTAINER Gen Takahashi "gendosu@gmail.com"

RUN apt-get update \
&&  apt-get install -y --force-yes \
    build-essential \
    fonts-hanazono \
    imagemagick \
    fonts-migmix \
    sqlite3 \
    libsqlite3-dev \
    libpq-dev \
    psmisc \
    sudo \
    python \
    curl \
    vim \
    procps \
    apt-transport-https \
&&  apt-get clean \
&&  rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

