FROM fedora:27

ENV TERM=xterm-256color \
    COLORTERM=truecolor

RUN dnf -y update && \
    dnf -y install rsync findutils which git zsh neovim tig && \
    dnf clean all && \
    useradd -ms /bin/bash jdetiber && \
    mkdir -p /code && \
    chmod 777 /code

USER jdetiber

WORKDIR /code

CMD /usr/bin/zsh
