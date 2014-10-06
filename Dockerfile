# I am not the maintainer of this. Totally lifted from this blog post:
# http://www.quantstart.com/articles/Installing-Nvidia-CUDA-on-Ubuntu-14-04-for-Linux-GPU-Computing

FROM ubuntu:12.04

MAINTAINER hughdbrown@yahoo.com

RUN apt-get update && \
    apt-get install -y apt-utils && \
    apt-get install -y build-essential wget

RUN wget http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1404/x86_64/cuda-repo-ubuntu1404_6.5-14_amd64.deb && \
    dpkg -i cuda-repo-ubuntu1404_6.5-14_amd64.deb && \
    apt-get update && \
    apt-get install -y cuda && \
    rm cuda-repo-ubuntu1404_6.5-14_amd64.deb

ENV PATH /usr/local/cuda-6.5/bin:$PATH
ENV LD_LIBRARY_PATH /usr/local/cuda-6.5/lib64:$LD_LIBRARY_PATH

ADD test /

CMD ["/bin/sh"]