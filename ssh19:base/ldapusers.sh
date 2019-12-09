#!/bin/bash
for user in user{01..09}
do
  line=$(getent passwd $user)
  uid=$(echo $line | cut -d: -f3)
  gid=$(echo $line | cut -d: -f4)
  homedir=$(echo $line | cut -d: -f6)
  if [ ! -d $homedir ]; then
    mkdir -p $homedir
    cp -ra /etc/skel/. $homedir
    chown -R $uid.$gid $homedir
  fi
done

