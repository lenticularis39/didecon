#!/bin/bash
useradd $USER -u $UID -g 0 -s /bin/bash
cp -r /.ssh /home/tglozar/.ssh
chown -R tglozar /home/tglozar/.ssh
echo "root:ainsisoitje" | chpasswd
export PATH=$PATH:/scripts
exec su $USER
