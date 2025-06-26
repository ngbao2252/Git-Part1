#"Write a shell script called args that takes arguments (options) from the command line and print out as the example below.
#Ex:
#When typing the input: args 1st_arg 2nd_arg
#Output:
#This args command has 2 arguments.
#They are 1st_arg 2nd_arg

#!/bin/bash
num_arg=$#
echo "This args command has $num_arg arguments."
echo "They are $@"
