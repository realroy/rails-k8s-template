FROM ruby:3.0.0-alpine3.15

RUN apk add --no-cache --update imagemagick python2-dev python2 build-base gcc bash cmake npm yarn tzdata nodejs postgresql-dev git
ENV TZ=Asia/Bangkok

WORKDIR /usr/app
COPY . .

RUN bundle install
RUN yarn install

ENV SECRET_KEY_BASE=1
RUN RAILS_ENV=production bundle exec rake assets:precompile
ENV SECRET_KEY_BASE=""

EXPOSE 3000

CMD ["rails", "s", "-b", "0.0.0.0"]