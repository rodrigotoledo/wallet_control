FROM ruby:3.2.1

WORKDIR /app

RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev

COPY Gemfile Gemfile.lock ./

RUN bundle install

COPY . .

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
