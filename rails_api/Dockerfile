FROM ruby:3.0.1-alpine3.13
ENV BUNDLER_VERSION=2.2.17
ENV RAILS_ENV=production

RUN apk add --update --no-cache \
      binutils-gold \
      build-base \
      g++ \
      gcc \
      libstdc++ \
      libffi-dev \
      libc-dev \
      linux-headers \
      libxml2-dev \
      libxslt-dev \
      libgcrypt-dev \
      make \
      netcat-openbsd \
      sqlite-dev \
      postgresql-dev \
      openssl \
      pkgconfig \
      tzdata

RUN gem install bundler -v 2.2.17

WORKDIR /app
COPY Gemfile Gemfile.lock ./
RUN bundle config build.nokogiri --use-system-libraries
RUN bundle check || bundle install

COPY . ./

ENTRYPOINT ["./entrypoints/docker-entrypoint.sh"]