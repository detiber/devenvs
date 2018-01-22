#!/bin/bash

docker run --security-opt="label=disable" -it --name devenv-${1} -v $SSH_AUTH_SOCK:/ssh-agent:ro -e SSH_AUTH_SOCK=/ssh-agent detiber/devenvs:${1} /bin/bash
