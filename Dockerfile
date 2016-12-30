FROM ruby:alpine

RUN apk --update add --virtual build-dependencies build-base ruby-dev openssl-dev libxml2-dev libxslt-dev \
    postgresql-dev libc-dev linux-headers nodejs tzdata && \
    gem install bundler && \
    gem install rails

CMD ["sh"]
