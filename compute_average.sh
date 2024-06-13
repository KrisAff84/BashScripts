#!/usr/local/bin/bash

read N
# C style loop (initialization; condition;)
for (( i = 1; i <= N; i++))
do
    read num
    sum=$((sum + num))
done

printf "%.3f\n" $(echo $sum/$N | bc -l)