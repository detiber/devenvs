FROM detiber/devenvs:base

USER root

RUN dnf -y install golang-1.9.* && \
    dnf clean all

USER jdetiber

ENV GOPATH=/code
ENV PATH=$PATH:/code/bin
