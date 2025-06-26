#"Write a shell script called args that takes arguments (options) from the command line and print out as the example below.
#Ex:
#When typing the input: args 1st_arg 2nd_arg
#Output:
#This args command has 2 arguments.
#They are 1st_arg 2nd_arg"												

#!/bin/bash
num_args=$#  #count number of parame
#print, use $num_args for show value
echo "This args command had $num_args arguments"
#print
if [ $num_args -gt  0 ]; then
echo "They are $@"
fi
