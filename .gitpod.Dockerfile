FROM gitpod/workspace-full

USER gitpod

# Install custom tools, runtime, etc. using apt-get
# For example, the command below would install "bastet" - a command line tetris clone:
#
# RUN sudo apt-get -q update && \
#     sudo apt-get install -yq bastet && \
#     sudo rm -rf /var/lib/apt/lists/*
#
# More information: 

RUN sudo apt-get -q update \
    && sudo apt-get -y install curl \
    && sudo apt-get clean \
    && sudo rm -rf /var/lib/apt/lists/*

# athrill-gcc
# RUN curl -L https://github.com/tmori/athrill-gcc/releases/download/v1.0/athrill-gcc-package.tar.gz -O \
#     && tar xf athrill-gcc-package.tar.gz \
#     && cd athrill-gcc-package \
#     && tar xf athrill-gcc.tar.gz -C / \
#     && cd / \
#     && rm -rf athrill-gcc-package \
#     && rm athrill-gcc-package.tar.gz
