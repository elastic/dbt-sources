FROM --platform=linux/amd64 python:3.10.5-slim-bullseye as base

COPY ./ /usr/app/dbt

# System setup
RUN apt-get update \
  && apt-get dist-upgrade -y \
  && apt-get install -y --no-install-recommends \
    git \
    ssh-client \
    software-properties-common \
    make \
    build-essential \
    ca-certificates \
    libpq-dev \
  && apt-get clean \
  && rm -rf \
    /var/lib/apt/lists/* \
    /tmp/* \
    /var/tmp/*

# Env vars
ENV PYTHONIOENCODING=utf-8
ENV LANG=C.UTF-8

# Update python
RUN python -m pip install --upgrade \
  pip setuptools wheel --no-cache-dir

# Set docker basics
WORKDIR /usr/app/dbt/
VOLUME /usr/app

# Update python && install dbt from requirements
RUN python -m pip install --no-cache-dir -r requirements.txt
