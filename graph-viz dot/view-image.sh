#!/bin/sh
fullname=$GEDIT_CURRENT_DOCUMENT_NAME
name=`echo $fullname | cut -d. -f1`
deepin-image-viewer $name.png

#Shift+Ctrl+F5