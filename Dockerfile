#
# Creates a foundation container for Hugo on Alpine Linux
#
FROM alpine:3.3
MAINTAINER Randolph Kahle "randolph.kahle@databliss.net"

RUN apk update  && \
    apk upgrade && \
    apk add \
      curl \
      tar && \
    curl -o hugo.tar.gz -L https://github.com/spf13/hugo/releases/download/v0.15/hugo_0.15_linux_amd64.tar.gz && \
    tar -xvf hugo.tar.gz && \
    cp hugo_0.15_linux_amd64/hugo_0.15_linux_amd64 /usr/local/bin/hugo && \
    rm hugo.tar.gz && \ 
    rm -fr hugo_0.15_linux_amd64
