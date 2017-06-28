FROM ruby:2.4

RUN apt-get update

ENV APP_DIR=/app
WORKDIR $APP_DIR
ADD Gemfile* ./
RUN bundle install

ADD . $APP_DIR

EXPOSE 4567
CMD ["ruby", "docker-newbies.rb", "-o", "0.0.0.0"]