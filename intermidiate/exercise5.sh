#!/bin/bash
#using a for loop to print numbers from 0 to 10
for ((i=0; i<=10; i++))
do 
  echo "the expected output is: " $i
done  

#Initialising the counter
ctr=10
#using a while loop to count down from 10 to 1
while [ $ctr -gt 0 ]
do 
  echo $ctr
  ((ctr--))
done

#Printing "Bash script!" after the countdown
echo "Bash Script!"
