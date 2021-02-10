FROM ubuntu:20.04

COPY . .

RUN apt-get -y update && \
    DEBIAN_FRONTEND=noninteractive apt-get -y install npm && \
    npm install --global xo-cli@0.11.1 && \
    apt-get clean autoclean && \
    apt-get autoremove --yes && \
    rm -rf /var/lib/{apt,dpkg,cache,log}/ && \
    chmod +x script.sh

ENV XOA_HOST = null
ENV XOA_USER = null
ENV XOA_PASS = null

CMD ./script.sh $XOA_HOST $XOA_USER $XOA_PASS
