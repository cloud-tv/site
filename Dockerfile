FROM ruby:2.4.1
ENV LANG C.UTF-8

# Install gems
RUN ["gem", "install", "bundler"]
WORKDIR /tmp
COPY Gemfile* /tmp/
RUN ["bundle"]

# Copy code
COPY . /app
WORKDIR /app
RUN ["bundle", "exec", "rake"]

EXPOSE 4000
CMD ["jekyll", "serve"]
