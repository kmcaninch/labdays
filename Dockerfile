FROM ruby:2.2.5
MAINTAINER Daxko 'daxko@daxko.com'
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /usr/src/app
COPY ./ /usr/src/app
RUN cd /usr/src/app && bundle -j4
WORKDIR /usr/src/app
CMD rails s