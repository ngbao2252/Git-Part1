#Read in two numbers from the keyboard and print their sum.												
#!/bin/bash
echo "Enter first numbers: "
read num1
#check condition
if [[ ! "$num1" =~ ^-?[0-9]+$ ]];then
	echo "Invalid number integer"
exit 1
fi
echo "Enter second numbers: "
read num2
#check condition 2
if [[ ! "$num2" =~ ^-?[0-9]+$ ]];then
	echo "Invalid number integer"
exit 1
fi
sum=$((num1+num2))
echo "The sum is: $sum"

