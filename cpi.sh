#In many versions of unix there is a -i argument for cp so that you will be prompted for confirmation if you are 
#about to overwrite a file. Write a script called cpi which will prompt if necessary without using the -i argument.
#!/bin/bash
#Check that are there only two parameter 
if [ $# -ne 2 ]; then 
echo "Usage: $0 <source> <destination>"
exit 1
fi

source="$1"
destination="$2"

#Source exists?
if [ ! -f "$source" ]; then echo "Error: Source file '$source' does not exist or is not a regular file."
exit 1
fi
#Destination
if [ -e "$destination" ]; then echo "File '$destination' already exists. OverWrite (Y/N)?"
read answer
if [ "$answer" != "Y" ] && [ "$answer" != "y" ]; then
echo "Copy aborted."
exit 0
fi
fi
cp "$source" "$destination"
if [ $? -eq 0 ]; then echo "File copied successfully"
else echo "Error: Fail to copy file."
exit 1
fi

