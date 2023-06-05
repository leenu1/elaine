#!/bin/bash
start_time=$(date +%s) #get start seconds
filename="$1" #output filename
num_records=$2 #the number of records
>"$filename" #create empty output file
for((i = 0;i < $num_records;i++)) #loop i from 0 to num_records
do
    num1=$(head /dev/urandom | cksum | awk '{print $1}') #create first 32-bit integer
    num2=$(head /dev/urandom | cksum | awk '{print $1}') #create second 32-bit integer
    #create ASCII string of exactly 100 bytes
    ascii_string="$(cat /dev/urandom | strings -n 10 | head -n 10 | tr -d '\n' | head -c 100)"
    echo "$num1 $num2 $ascii_string" >> "$filename" #write one line to output file
done
end_time=$(date +%s) #get end seconds
seconds=$((10 - $end_time + $start_time)) #calculate sleep seconds
if [ $seconds -gt 0 ] #check if seconds greater than 0
then
    sleep $seconds #make this script run for at least 10 seconds
fi

