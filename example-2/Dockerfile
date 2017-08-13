FROM            alpine
MAINTAINER      alexzamboli <alex.zamboli@gmail.com>

# environments variables
ENV BUILD_PACKAGES bash curl-dev ruby-dev build-base
ENV RUBY_PACKAGES ruby ruby-bundler

# Update and install all of the required packages.
# At the end, remove the apk cache
RUN apk update && \
    apk upgrade && \
    apk add $BUILD_PACKAGES && \
    apk add $RUBY_PACKAGES && \
    rm -rf /var/cache/apk/*

RUN             gem update --system --no-ri --no-rdoc
RUN             gem install json --no-ri --no-rdoc
RUN             gem install sinatra --no-ri --no-rdoc
RUN             gem install redis --no-ri --no-rdoc
ADD             counter.rb counter.rb
EXPOSE          4567
ENTRYPOINT      ["ruby", "counter.rb"]
