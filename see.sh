#Write a shell script called see taking a filename name as argument which uses ls if the file's a directory and more if the file's otherwise.												
#!bin/bash
#check only one para
if [ $# -ne 1 ]; then
echo "Usage: $0 <see.sh>"
exit 1
fi
filename=$1
if [ ! -e "$filename" ]; then
echo "File $filename does not exist"
exit 1
fi
if [ -d "$filename"  ]; then
	ls "$filename"
else
	more "$filename"
fi
