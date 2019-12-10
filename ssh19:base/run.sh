#!/bin/bash
# walid asix-m06 19/20

docker run --rm --name ldapserver -h ldapserver --net ldapnet -d welharrak/ldapserver19:latest
docker run --rm --name ssh -h ssh --net ldapnet --privileged -p 2022:22 -v homes:/tmp/home -d welharrak/ssh19:base
