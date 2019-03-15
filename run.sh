#!/bin/sh
fullname=$GEDIT_CURRENT_DOCUMENT_NAME  
dir=$GEDIT_CURRENT_DOCUMENT_DIR

name=`echo $fullname | cut -d. -f1` 

if [ $? -ne 0 ]; then
	exit;
elif [ -f "$dir/$name.run" ]; then
	deepin-terminal -x bash -c \
	"time '$dir/$name.run';echo;echo;" \
	>/dev/null  2>&1;
else
	echo "Not compiled, maybe compile(Ctrl+F5) first." > /dev/stderr;
fi

