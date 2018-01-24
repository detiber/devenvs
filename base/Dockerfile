FROM fedora:27

RUN dnf update && \
    dnf install git zsh nvim && \
    dnf clean all && \
    useradd -ms /bin/bash jdetiber

USER jdetiber

CMD /usr/bin/zsh
