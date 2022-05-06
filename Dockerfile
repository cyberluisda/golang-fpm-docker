FROM golang:1.14

LABEL maintainer = 'Luisda <cyberluisda@gmail.com>'

# Install required software and fpm
RUN set -eux; \
  apt-get update; \
  apt-get install -y --no-install-recommends \
# ruby
    ruby \
    ruby-dev \
    rubygems \
    build-essential \
# rpm
    rpm \
# optional fpm deps
		squashfs-tools \
  ; \
# fpm
  gem install fpm \
  ; \
# go tools
  go get \
    github.com/boumenot/gocover-cobertura \
    gotest.tools/gotestsum \
	; \
	rm -rf /var/lib/apt/lists/*
