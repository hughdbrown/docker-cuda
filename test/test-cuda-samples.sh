#!/bin/sh

mkdir -p /samples
cuda-install-samples-6.5.sh /samples
cd /samples/NVIDIA_CUDA-6.5_Samples
make
