#Change the args script supplied earlier so that if no argument is provided, 
#"They are'' isn't printed, and if exactly 1 argument is provided, "... 1 argument'' rather than "... 1 arguments'' is printed.
#!/bin/bash
num_args=$#
if [ $num_args -eq 1 ]; then
	echo "This args command had $num_args argument."
else
	echo "This args command had $num_args arguments."
fi
if [ $num_args -gt 0 ];
then echo "They are $@"
fi
