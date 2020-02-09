# ruby
#
# VERSION               0.0.1

FROM gendosu/ruby-node:ruby-2.6.4-node-12.3.0-alpine

ENV PATH $PATH:./bin

RUN apk add --update \
  fontconfig \
  imagemagick \
  &&  rm -rf /var/cache/apk/*

# Install ja-font
COPY fonts.conf /root/.config/fontconfig/
COPY ipag.ttc /root/.local/share/fonts/
RUN fc-cache -fv
