#
# Creates a foundation container for Hugo on Alpine Linux
#
FROM alpine:3.4
MAINTAINER Randolph Kahle "randolph.kahle@databliss.net"

COPY hugo_0.15_linux_amd64/hugo_0.15_linux_amd64 /usr/local/bin/hugo
