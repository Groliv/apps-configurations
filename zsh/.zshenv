#!/bin/sh
## .zshenv
##
## Made by Jocelyn GIRARD
## Login   <jocelyn@erioxyde.com>
##
## Started on  Sat Nov  3 20:55:49 2007 Jocelyn GIRARD
## Last update Thu Dec 25 09:54:34 2014 Jocelyn GIRARD
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
export ANDROID_SDK="/opt/android-sdk"
export ANDROID_NDK_HOME="/opt/android-ndk"
export ANDROID_NDK="/opt/android-ndk"
export NDK="/opt/android-ndk"

# Path to Maven
export M2_HOME="/opt/apache-maven"

# Path to ANT
export ANT_HOME="/opt/apache-ant"

# Path to Gradle
export GRADLE_HOME="/opt/gradle"

# Path to Groovy
export GROOVY_HOME="/opt/groovy"

# Path to Groovy
export SCALA_HOME="/opt/scala"

# Path to Arduino
export ARDUINO_HOME="/Applications/Arduino.app/Contents/MacOS"

# Add dev tools to PATH
export PATH="$PATH:\
$ANDROID_HOME/build-tools/19.0.1:\
$ANDROID_HOME/tools:\
$ANDROID_HOME/platform-tools:\
$ANDROID_NDK_HOME:\
$ANT_HOME/bin:\
$M2_HOME/bin:\
$GRADLE_HOME/bin:\
$GROOVY_HOME/bin:\
$SCALA_HOME/bin:\
$ARDUINO_HOME"

# Increase the heap space
export GRADLE_OPTS=-Xmx2048m

# Editor (Crontab, CVS,...)
export VISUAL=emacs
export EDITOR=emacs

# Arduino PATH
export ARDUINO_DIR="/Applications/Adafruit Arduino 1.0.5.app"

# Permissions rw-r--r-- file rwxr-xr-x dir
umask 022
