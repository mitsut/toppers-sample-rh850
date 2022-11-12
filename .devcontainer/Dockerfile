FROM ubuntu:bionic

ENV PACKAGES git make wget build-essential ruby vim gem 

RUN apt-get -q update \
    && apt-get install -y ${PACKAGES} \
    && apt-get clean
    # && rm -rf /var/lib/apt/lists/*

# Install athrill
# WORKDIR /root
# RUN wget https://www.toppers.jp/download.cgi/athrill-target-rh850f1x-20200820.tar.gz \
#     && tar xf athrill-target-rh850f1x-20200820.tar.gz \
#     && rm athrill-target-rh850f1x-20200820.tar.gz

# # Install athrill-gcc
# WORKDIR /root
# RUN wget https://github.com/toppers/athrill-gcc-v850e2m/releases/download/v1.1/athrill-gcc-package.tar.gz 
# RUN tar xf athrill-gcc-package.tar.gz && \
# 	rm -f athrill-gcc-package.tar.gz
# WORKDIR /root/athrill-gcc-package
# RUN	tar xzvf athrill-gcc.tar.gz && \ß
# 	rm -f athrill-gcc-package.tar.gz && \
# 	rm -f *.tar.gz
# ENV PATH /root/athrill-gcc-package/usr/local/athrill-gcc/bin/:${PATH}
# ENV PATH /root/athrill-target-rh850f1x/athrill/bin/linux:${PATH}

# # Install cfg
# WORKDIR /root
# RUN wget https://github.com/mitsut/cfg/releases/download/1.9.7/cfg-1.9.7-x86_64-unknown-linux-gnu.tar.gz && \
# 	wget https://www.autosar.org/fileadmin/user_upload/standards/classic/4-0/AUTOSAR_MMOD_XMLSchema.zip && \
# 	mkdir schema && \
# 	tar xf cfg-1.9.7-x86_64-unknown-linux-gnu.tar.gz && \
# 	mv cfg schema/ && \
# 	unzip AUTOSAR_MMOD_XMLSchema.zip -d schema
