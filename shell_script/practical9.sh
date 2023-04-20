#!/bin/bash

echo "Enter the value of n: "
read n
count=0
num=2

while [ $count -lt $n ]; do
    prime=1
    for ((j=2; j<num; j++)); do
        if ((num % j == 0)); then
            prime=0
            break
        fi
    done
    if [ $prime -eq 1 ]; then
        echo $num
        count=$((count+1))
    fi
    num=$((num+1))
done
