FROM node:8

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y build-essential apt-utils apt-transport-https git-core \
    && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
    && apt-get update \
    && apt-get install -y yarn \
    && yarn global add otfcc-c2q \
    && yarn cache clean \

WORKDIR /tmp
RUN wget https://github.com/premake/premake-core/releases/download/v5.0.0-alpha11/premake-5.0.0-alpha11-linux.tar.gz -O premake5.tar.gz \
    && tar -xvf premake5.tar.gz \
    && chmod +x premake5 \
    && mv premake5 /usr/local/bin

WORKDIR /usr/local/src
RUN git clone https://github.com/caryll/otfcc.git \
    && cd otfcc \
    && premake5 gmake \
    && cd build/gmake \
    && make config=release_x64 \
    && cd ../.. \
    && ln -s "$(pwd)/bin/release-x64/otfccdump" /usr/local/bin \
    && ln -s "$(pwd)/bin/release-x64/otfccbuild" /usr/local/bin \
    && otfccdump --version

