#!/bin/bash
#Enter the range
echo "Enter the lower limit: "
read low

echo "Enter the upper limit: "
read high

echo "Prime numbers between $low and $high are: "

for (( num=$low; num<=$high; num++ ))
do
    flag=0
    for (( i=2; i<=$num/2; i++ ))
    do
        if [ $(($num%i)) -eq 0 ]
        then
            flag=1
            break
        fi
    done
    if [ $flag -eq 0 ] && [ $num -ne 1 ]
    then
        echo $num
    fi
done
