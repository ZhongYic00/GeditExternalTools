#!/bin/sh
fullname=$GEDIT_CURRENT_DOCUMENT_NAME  
dir=$GEDIT_CURRENT_DOCUMENT_DIR

name=`echo $fullname | cut -d. -f1`
deepin-terminal --working-directory=$dir -x bash -c \
"sh $dir/$name.sh;echo;echo;"

#Shift+Ctrl+F5