FROM ruby:2.7
WORKDIR /pipes/
COPY ./ /pipes/
RUN gem install bundler
RUN bundle install
EXPOSE 9292
ENTRYPOINT ["bundle", "exec", "puma", "-e", "development"]
