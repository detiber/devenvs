FROM golang:1.9

RUN apt-get update && \
    apt-get install -y xz-utils lbzip2 bsdtar && \
    rm -rf /var/lib/apt/lists/* && \
    curl -fsSL https://raw.githubusercontent.com/digitalrebar/provision/master/tools/build.sh | bash

WORKDIR /go/src/github.com/digitalrebar/provision

RUN git remote set-url origin git@github.com:detiber/provision.git && \
    git remote add upstream git@github.com:digitalrebar/provision.git
