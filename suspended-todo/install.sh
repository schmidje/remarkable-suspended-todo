#!/bin/bash

# Specify here your document UID
DUID=

# Specify here your page UID
IUID=

# check file existence
todo_img=/home/root/.local/share/remarkable/xochitl/$DUID.thumbnails/$IUID.jpg

if test -f "$todo_img"
then
  chmod u+x SUSPENDED_TODO.sh
  
  sed -i "s/DUID/$DUID/" SUSPENDED_TODO.path
  sed -i "s/IUID/$IUID/" SUSPENDED_TODO.path  
  sed -i "s/DUID/$DUID/" SUSPENDED_TODO.sh
  sed -i "s/IUID/$IUID/" SUSPENDED_TODO.sh    

  cp -f SUSPENDED_TODO.service /etc/systemd/system
  cp -f SUSPENDED_TODO.path /etc/systemd/system

  systemctl daemon-reload
  systemctl enable SUSPENDED_TODO.path
  # this is critical so that xochitl generates the missing files
  echo Installation successful reboot your rM!
else
  echo Check your DUID and IUID since file $todo_img does NOT exist! Aborting installation.
fi


