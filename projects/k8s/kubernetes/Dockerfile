FROM detiber/devenvs:golang-1.9

USER root

#RUN dnf -y install xz lbzip2 bsdtar && \
#    dnf clean all

USER jdetiber

RUN go get -d k8s.io/kubernetes || true

WORKDIR /code/src/k8s.io/kubernetes

RUN git remote set-url origin git@github.com:detiber/kubernetes.git && \
    git remote add upstream git@github.com:kubernetes/kubernetes.git
