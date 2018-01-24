#!/bin/bash

docker run --security-opt="label=disable" -it --name devenv-${1} -v ${HOME}/.config/nvim:/home/jdetiber/.config/nvim:ro -v ${HOME}/.zshrc:/home/jdetiber/.zshrc:ro -v ${HOME}/.zplug:${HOME}/.zplug:ro -v $SSH_AUTH_SOCK:/ssh-agent:ro -e SSH_AUTH_SOCK=/ssh-agent detiber/devenvs:${1}
