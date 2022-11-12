# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.154.0/containers/ubuntu/.devcontainer/base.Dockerfile

# [Choice] Ubuntu version: bionic, focal
ARG VARIANT="focal"
FROM mcr.microsoft.com/vscode/devcontainers/base:0-${VARIANT}

# [Optional] Uncomment this section to install additional OS packages.
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
    build-essential wget

# athrill
WORKDIR /toppers
RUN wget https://www.toppers.jp/download.cgi/athrill-target-rh850f1x-20200820.tar.gz && \
    tar xf athrill-target-rh850f1x-20200820.tar.gz && \
    rm athrill-target-rh850f1x-20200820.tar.gz && \
    cp /toppers/hakoniwa/athrill-target-rh850f1x/build_linux/athrill2 /toppers/hakoniwa/athrill/bin/linux/
ENV PATH /toppers/hakoniwa/athrill/bin/linux/:${PATH}

# athrill-gcc
WORKDIR /toppers
RUN wget https://github.com/toppers/athrill-gcc-v850e2m/releases/download/v1.1/athrill-gcc-package.tar.gz && \
    tar xf athrill-gcc-package.tar.gz && \
    cd athrill-gcc-package && \
    tar xf athrill-gcc.tar.gz
ENV PATH /toppers/athrill-gcc-package/usr/local/athrill-gcc/bin/:${PATH}

# cfg
WORKDIR /toppers
RUN wget https://github.com/mitsut/cfg/releases/download/1.9.7/cfg-1.9.7-x86_64-unknown-linux-gnu.tar.gz && \
    wget https://www.autosar.org/fileadmin/user_upload/standards/classic/4-0/AUTOSAR_MMOD_XMLSchema.zip && \
	mkdir schema && \
	tar xvzf cfg-1.9.7-x86_64-unknown-linux-gnu.tar.gz && \
	mv cfg schema/ && \
	unzip AUTOSAR_MMOD_XMLSchema.zip -d schema
ENV PATH /toppers/schema/:${PATH}
