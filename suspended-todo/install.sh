#!/bin/bash

chmod u+x SUSPENDED_TODO.sh

cp -f SUSPENDED_TODO.service /etc/systemd/system
cp -f SUSPENDED_TODO.path /etc/systemd/system

systemctl daemon-reload
systemctl enable SUSPENDED_TODO.path

# this is critical so that xochitl generates the missing files
echo Do not forget to reboot your rM!
