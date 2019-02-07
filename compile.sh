#!/bin/sh
fullname=$GEDIT_CURRENT_DOCUMENT_NAME  
dir=$GEDIT_CURRENT_DOCUMENT_DIR

name=`echo $fullname | cut -d. -f1`  
g++ $fullname -o $name.run -Wall

if [ $? -ne 0 ]; then
    exit;
fi

deepin-terminal --working-directory=$dir -x bash -c \
"$dir/$name.run;echo;echo;time" \
>/dev/null  2>&1

