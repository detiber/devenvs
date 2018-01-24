FROM detiber/devenvs:golang-1.9

USER root

#RUN dnf -y install xz lbzip2 bsdtar && \
#    dnf clean all

USER jdetiber

RUN go get -d github.com/openshift/origin

WORKDIR /code/src/github.com/openshift/origin

RUN git remote set-url origin git@github.com:detiber/origin.git && \
    git remote add upstream git@github.com:openshift/origin.git
