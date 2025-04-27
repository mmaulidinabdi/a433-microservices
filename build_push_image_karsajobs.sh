#!/bin/bash

# build image di direktori saat ini
docker build -t ghcr.io/mmaulidinabdi/karsajobs:latest .

#login ke github packages
echo $GITHUB_TOKEN | docker login ghcr.io -u mmaulidinabdi --password-stdin

#push image ke github packages
docker push ghcr.io/mmaulidinabdi/karsajobs:latest
