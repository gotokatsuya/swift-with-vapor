FROM ubuntu:16.04

RUN apt-get update;
RUN apt-get -y upgrade;

RUN apt-get -y install curl libmysqlclient-dev;

RUN curl -sL https://apt.vapor.sh | bash;

RUN apt-get -y install swift vapor;

WORKDIR /vapor

RUN ["vapor", "--help"]
