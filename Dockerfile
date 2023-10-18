FROM ruby:3.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /WHATSAPP_API
WORKDIR /WHATSAPP_API
ADD Gemfile /WHATSAPP_API/Gemfile
ADD Gemfile.lock /WHATSAPP_API/Gemfile.lock

RUN bundle install
ADD . /WHATSAPP_API
