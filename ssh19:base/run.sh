#!/bin/bash
# walid asix-m06 19/20

docker run --rm --name ldapserver -h ldapserver --net ldapnet -d welharrak/ldapserver19:latest

