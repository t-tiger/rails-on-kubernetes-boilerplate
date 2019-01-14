FROM ruby:2.6.0
ENV LANG C.UTF-8

# install required libraries
RUN apt-get update -qq && apt-get install -y build-essential mysql-client nodejs curl

# install bundler
RUN gem install bundler

WORKDIR /tmp
ADD Gemfile Gemfile
ADD Gemfile.lock Gemfile.lock
RUN bundle install

WORKDIR /usr/src/app/
COPY . /usr/src/app/
