cuda
====

A Dockerfile and shell scripts for installing and testing cuda in an Ubuntu environment.


Source inspiration
==================

Lifted from this weblog:

http://www.quantstart.com/articles/Installing-Nvidia-CUDA-on-Ubuntu-14-04-for-Linux-GPU-Computing

Status
======

Does not work (as in run), but it does produce a 2GB docker image.

Running the docker container
============================

First build it:

    % docker/docker-build.sh

Then run it:

    % docker/docker-run.sh

The tests described in the original blog article can be found in the tests/ directory.

