# ビルド環境を構築してビルド
#FROM debian:buster-slim as build-env
FROM ubuntu:18.04

RUN apt-get update \
    && apt-get -y install curl make \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# athrill-gcc
RUN curl -L https://github.com/toppers/athrill-gcc-v850e2m/releases/download/v1.1/athrill-gcc-package.tar.gz -O \
    && tar xf athrill-gcc-package.tar.gz \
    && cd athrill-gcc-package \
    && tar xf athrill-gcc.tar.gz -C / \
    && cd / \
    && rm -rf athrill-gcc-package \
    && rm athrill-gcc-package.tar.gz

# cfg
RUN curl -L -O https://github.com/mitsut/cfg/releases/download/1.9.7/cfg-1.9.7-x86_64-unknown-linux-gnu.tar.gz \
    && tar xf cfg-1.9.7-x86_64-unknown-linux-gnu.tar.gz \
    && mv cfg /usr/local/bin/cfg \
    && rm cfg-1.9.7-x86_64-unknown-linux-gnu.tar.gz

RUN curl -L -O https://github.com/mitsut/hakoniwa/releases/download/swest22-releases/athrill-target-rh850f1x-20200820.tar.gz \
    && tar xf athrill-target-rh850f1x-20200820.tar.gz \
    && mv hakoniwa/athrill-target-rh850f1x /usr/local/athrill-target-rh850f1x \
    && rm -rf hakoniwa

USER gitpod

ENV PATH="/usr/local/athrill-gcc/bin/:${PATH}" \
    LD_LIBRARY_PATH="/usr/local/athrill-gcc:/usr/local/athrill-gcc/lib:${LD_LIBRARY_PATH}"
