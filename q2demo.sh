#!/bin/bash

# Shell Script for awk, sed, and grep to perform various text processing tasks

echo "Create text files as kup.txt and awk2.txt"
echo
echo -e "Hello World ! \nHello World, I am from Knoldus\ncat\nmat\nsat\nfat" > kup.txt
echo -e "a,1,1\nb,3,2\nc,7,7\nd,8,7" > awk2.txt

echo "kup.txt"
cat kup.txt
echo
echo "awk2.txt"
cat awk2.txt
echo
echo "Demo 1: awk command use."
echo
echo "Print line by line of file with line numbers : kup.txt"
awk '{print NR,$0}' kup.txt
echo
echo "Display specific lines from file; along with line numbers - lines 3 to 6 of kup.txt"
awk 'NR==3, NR==6 {print NR,$0}' kup.txt
echo
echo "Distinguish between similar and different values of formatted value within awk2.txt file"

echo "Formatting is done using ','"
cat awk2.txt

awk -F ',' '{if($2==$3){print $1","$2","$3} else {print "No Duplicates"}}' awk2.txt
echo
echo "Print the lines which match the given pattern - Hello"
awk '/Hello/ {print}' kup.txt
echo
echo

echo "Demo 2: sed command use."
echo
echo "Find 'World' in kup.txt"
sed -n '/World/p' kup.txt
echo
echo "Replace 'at' with 'an' in kup.txt"
sed 's/at/an/g' kup.txt
echo
echo "Display specific lines from file; along with line numbers - lines 3 to 6 of kup.txt"
sed -n '3,6p' kup.txt 
echo
echo


echo "Demo 3: grep command use."
echo
echo "Find 'World' in kup.txt with -i for case in sensitive"
grep "Hello" kup.txt & grep -i "hello" kup.txt
echo
echo "print out the line number along with the line that contains 'your given word' in kup.txt"
read t
grep -n "$t" kup.txt
echo
echo "Display specific lines from file; along with line numbers - lines x to y of kup.txt - total lines 6"
echo "Enter Value of x"
read x
echo "Enter Value of y"
read y
cat -n kup.txt & echo & sed -n "${x},${y}p;" kup.txt
echo
echo

