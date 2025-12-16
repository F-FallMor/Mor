#! /bin/bash

#-p displays a prompt and read waits for it
read -p "Enter first number: " Number_1
read -p "Enter second number: " Number_2
# arithmetical operations
echo "Number1+Number2: $(($Number_1+$Number_2))"
echo "Number1-Number2: $(($Number_1-$Number_2))"
echo "Number1*Number2: $(($Number_1*$Number_2))"
#What if $2=0
if [ $Number_2 -eq 0 ];then
echo "It's not possible to divide by 0"
exit 1
else
echo "Number1/Number2: $(($Number_1/$Number_2))"
fi



