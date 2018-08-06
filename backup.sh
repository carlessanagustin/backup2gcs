#!/usr/bin/env bash
# usage: ./backup.sh $(date +'%Y-%M-%d-%H%M%S') ~/Downloads ~/Desktop

DESTINATION=.
EXTENSION=tar.gz
FILENAME=backup
#SOURCES="/tmp /etc"
#DATE=$(date +'%Y-%M-%d-%H%M%S')
#echo ${@:2}

tar -czf $DESTINATION/$FILENAME-$1.$EXTENSION ${@:2}
#tar -czf $DESTINATION/$FILENAME-$DATE.$EXTENSION $SOURCES
