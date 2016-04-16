# Runs Hugo static site generator
FROM ubuntu:14.04

ENV VIRTUAL_HOST docker.local

RUN apt-get update && \
    apt-get install -y -qq curl && \
    apt-get install -y -qq python-pip python-dev build-essential && \
    pip install --upgrade pip && \
    pip install --upgrade virtualenv

RUN curl -o hugo.tar.gz -L https://github.com/spf13/hugo/releases/download/v0.15/hugo_0.15_linux_amd64.tar.gz 
RUN tar -xvf hugo.tar.gz
RUN cp hugo_0.15_linux_amd64/hugo_0.15_linux_amd64 /usr/local/bin/hugo

WORKDIR /development

EXPOSE 1313

CMD hugo --renderToDisk=true --watch=true --bind="0.0.0.0" --baseURL="http://${VIRTUAL_HOST}:1313" server 