# ruby
#
# VERSION               0.0.1

FROM gendosu/ruby-node:ruby-2.6.2-node-12.1.0

ENV PATH $PATH:./bin

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
  cmake \
  &&  apt-get clean \
  &&  rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*
