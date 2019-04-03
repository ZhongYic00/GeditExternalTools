#!/bin/sh
fullname=$GEDIT_CURRENT_DOCUMENT_NAME  
dir=$GEDIT_CURRENT_DOCUMENT_DIR

name=`echo $fullname | cut -d. -f1`
if [ -f "$dir/$name.run" ]; then
rm $dir/$name.run;
fi

#Ctrl+F8