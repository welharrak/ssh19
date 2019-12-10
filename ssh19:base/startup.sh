! /bin/bash
# walid ASIX M06 2019-2020
# startup.sh
# -------------------------------------

/opt/docker/install.sh

# Configuració ldap
/sbin/nscd
/sbin/nslcd

# Deixar-lo en foreground
/usr/bin/ssh-keygen -A
/sbin/sshd -D

