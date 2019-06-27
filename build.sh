#!/bin/sh

if [ $# -ne 1 ]
then
    echo "./build.sh <dist_url>"
    exit 1
fi

docker build -t lherman/bazel-aarch64 --build-arg URL="$1" . 
