FROM detiber/devenvs:golang-1.9

USER root

RUN dnf -y install xz lbzip2 bsdtar && \
    dnf clean all

USER jdetiber

RUN curl -fsSL https://raw.githubusercontent.com/digitalrebar/provision/master/tools/build.sh | bash

WORKDIR /code/src/github.com/digitalrebar/provision

RUN git remote set-url origin git@github.com:detiber/provision.git && \
    git remote add upstream git@github.com:digitalrebar/provision.git
