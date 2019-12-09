! /bin/bash
# walid ASIX M06 2019-2020
# startup.sh
# -------------------------------------

/opt/docker/install.sh && echo "Install Ok"

# Configuració ldap
/sbin/nscd && echo "nscd Ok"
/sbin/nslcd  && echo "nslcd OK"

# Deixar-lo en foreground
/usr/bin/ssh-keygen -A
/sbin/sshd -d

