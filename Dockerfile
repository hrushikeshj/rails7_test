FROM ruby:3.0.5
WORKDIR /iris_bootcamp

RUN apt-get update && apt-get -y upgrade && \
    curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
    apt install -y nodejs && \
    npm install --global yarn

COPY ./Gemfile ./Gemfile
RUN bundle install

VOLUME ["/usr/local/bundle", "/iris_bootcamp"]
EXPOSE 3000

CMD ["/bin/bash"]
