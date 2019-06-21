#!/bin/bash

# Prerequisity is an existing docker image called 'diffkemp' built from
# the provided Dockerfile
docker run \
	-ti --security-opt seccomp=unconfined \
        -m 8g --rm --name didecon \
        --cpus 3 \
	-v $PWD:/diffkemp:Z \
	-w /diffkemp \
        -v $HOME/.ssh:/.ssh:Z \
	-e USER=$(id -un) -e UID=$(id -u) -e GUID=$(id -g) \
	lenticularis/diffkemp-debug \
	/start.sh
