FROM alpine:latest
MAINTAINER Alberto Lamela <alberto.garcial@hotmail.com>

RUN apk --update add \
		bash \
		curl \
		build-base \
		ruby-dev \
		ruby \
		ruby-bundler

RUN mkdir /usr/app
WORKDIR /usr/app

COPY Gemfile /usr/app/
COPY Gemfile.lock /usr/app/

RUN bundle install
