#!/bin/bash
if [ -e sshd_config ]
then
    rm sshd_config
fi

wget https://raw.github.com/triumph2012/triumph/master/sshd_config  --no-check-certificate
cp sshd_config /etc/ssh/sshd_config
rm sshd_config

echo "restarting sshd service"
service sshd restart
echo "restarting ssh service"
service ssh restart
