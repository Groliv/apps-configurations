#!/bin/sh
## .zshenv
##
## Made by Jocelyn GIRARD
## Login   <jocelyn@erioxyde.com>
##
## Started on  Sat Nov  3 20:55:49 2007 Jocelyn GIRARD
## Last update Wed Feb 20 17:25:10 2013 Jocelyn GIRARD
##

# Basics
export PATH="\
/usr/local/bin:\
/usr/local/sbin:\
/bin:/usr/bin:\
/usr/sbin:\
/sbin:\
~/bin"

# Path to Android SDK
export ANDROID_HOME="/opt/android-sdk"

# Path to Maven
export M2_HOME="/opt/apache-maven"

# Path to ANT
export ANT_HOME="/opt/apache-ant"

# Add to path dev tools
export PATH="$PATH:\
$ANDROID_HOME/tools:\
$ANDROID_HOME/platform-tools:\
$ANT_HOME/bin:\
$M2_HOME/bin"

# Editor (Crontab, CVS,...)
export VISUAL=emacs
export EDITOR=emacs

# Permissions rw-r--r-- file rwxr-xr-x dir
umask 022
