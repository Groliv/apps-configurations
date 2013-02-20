#!/bin/sh

CONF=`pwd`

cd ~/Library/Application\ Support/Sublime\ Text\ 2/
mv Installed\ Packages Installed\ Packages.old
mv Packages Packages.old
mv Pristine\ Packages Pristine\ Packages.old

ln -s "$CONF/Installed Packages"
ln -s "$CONF/Packages"
ln -s "$CONF/Pristine Packages"

ls -lah

