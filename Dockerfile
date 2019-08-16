FROM ruby:latest

RUN apt-get update -qq && apt-get install -y build-essential nodejs

WORKDIR /usr/app

COPY ./Awesome-Blog/Gemfile  ./
COPY ./Awesome-Blog/Gemfile.lock ./
COPY ./Awesome-Blog-Gem/ ../Awesome-Blog-Gem/

RUN bundle install

COPY ./entrypoint.sh /usr/bin
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

CMD ["rails", "server", "-b", "0.0.0.0"]