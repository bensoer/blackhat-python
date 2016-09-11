FROM debian:8
MAINTAINER bensoer <ben@soernet.ca>

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
    build-essential \
    libssl-dev \
    libffi-dev \
    python-dev \
    python \
    python-pip
RUN pip install -U pip
RUN pip install cryptography
RUN pip install paramiko