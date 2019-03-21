#!/bin/bash

set -e

helm upgrade $1 chart \
    --install \
    --recreate-pods \
    --namespace=$1 \
    --set version=$2
