#Write a shell script that asks the user to type a word in, then tells the user how long that word is.
#!/bin/bash
echo "Enter something (including spaces): "; read text
length=${#text}
if [ $length -gt 1 ]; then
echo "The word $text had $length characters." 
else
echo "The word $text had $length character"
fi
