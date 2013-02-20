#!/bin/sh
## link.sh for  in /Users/jocelyn/Dropbox/AppsConfiguration/Sublime Text 2
##
## Made by Jocelyn GIRARD
## Login   <jocelyn@smartnsoft.com>
##
## Started on  Wed Feb 13 11:18:03 2013 Jocelyn GIRARD
## Last update Wed Feb 13 11:23:38 2013 Jocelyn GIRARD
##

CONF=`pwd`

cd ~/Library/Application\ Support/Sublime\ Text\ 2/
mv Installed\ Packages Installed\ Packages.old
mv Packages Packages.old
mv Pristine\ Packages Pristine\ Packages.old

ln -s "$CONF/Installed Packages"
ln -s "$CONF/Packages"
ln -s "$CONF/Pristine Packages"

ls -lah

