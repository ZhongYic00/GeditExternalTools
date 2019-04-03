#!/bin/sh
fullname=$GEDIT_CURRENT_DOCUMENT_NAME
name=`echo $fullname | cut -d. -f1`
dot -T png $fullname -o $name.png
deepin-image-viewer $name.png

#Ctrl+F5