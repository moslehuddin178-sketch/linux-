#!/bin/bash
 
# Basic if statement
num1=15
if [ "$num" -gt 10 ]; then
  echo "Number is greater than 10"
fi

num2=1000
if [ "$num2" -gt 999 ]; then 
   echo "1000 is greater than 999"
fi


user1=active
user2=loggedIn
user3=signedup

isActive=yes
isNotActive=no

if ["$user1" = yes ]; then
    echo " User 1 is active"

else 
    echo " User 1 is not active "
fi


##elif
# If...elif...else statement

num=9
if [ $num -gt 10 ]; then
  echo "Number is greater than 10"
elif [ $num -eq 10 ]; then
  echo "Number is exactly 10"
else
  echo "Number is less than 10"
fi


##nested if 
# Nested if statement
num=5
if [ $num -gt 0 ]; then
  if [ $num -lt 10 ]; then
    echo "Number is between 1 and 9"
  fi
fi



#check driving age 
age=18
if [ $age -lt 18 ]; then
   if [ $age -gt 60 ]; then 
   echo "you are eligeble to drive"
   fi
fi  