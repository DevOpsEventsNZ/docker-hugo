#
# Creates a foundation container for Hugo on Alpine Linux
#
FROM alpine:3.4
MAINTAINER Matt Stratton <matt.stratton@gmail.com>

COPY hugo_0.16_linux-64bit/hugo /usr/local/bin/hugo
