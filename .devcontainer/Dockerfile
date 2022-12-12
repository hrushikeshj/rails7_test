FROM ruby:3.0.5

RUN apt-get update && apt-get -y upgrade && \
    curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
    apt install -y nodejs && \
    npm install --global yarn

RUN gem install rails --version 7.0.4 \
    gem install bundler --version 2.2.33
