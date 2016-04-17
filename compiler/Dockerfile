#
# Runs Hugo static site generator as a compiler
#
FROM databliss/hugo
MAINTAINER Randolph Kahle "randolph.kahle@databliss.net"

WORKDIR /site
ENV SITE_URL="http://docker.local:1313"
CMD hugo  --baseURL="${VIRTUAL_HOST}"
