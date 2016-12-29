FROM ruby:alpine

RUN apk --update add --virtual build-dependencies build-base ruby-dev openssl-dev libxml2-dev libxslt-dev \
    postgresql-dev libc-dev linux-headers nodejs tzdata && \
    gem install bundler

ADD . /app
WORKDIR /app

RUN bundle config build.nokogiri --use-system-libraries && \
    bundle install --without development test

ENV RAILS_ENV production

CMD ["bundle", "exec", "rails", "s", "-p", "8080"]
