#
# Runs Hugo static site generator
#
FROM alpine:3.3
MAINTAINER Randolph Kahle "randolph.kahle@databliss.net"

RUN apk update && \
    apk add \
      curl \
      tar && \
    curl -o hugo.tar.gz -L https://github.com/spf13/hugo/releases/download/v0.15/hugo_0.15_linux_amd64.tar.gz && \
    tar -xvf hugo.tar.gz && \
    cp hugo_0.15_linux_amd64/hugo_0.15_linux_amd64 /usr/local/bin/hugo

WORKDIR /development

EXPOSE 1313

CMD hugo --renderToDisk=true --watch=true --bind="0.0.0.0" --baseURL="http://${VIRTUAL_HOST}:1313" server 