#!/bin/bash
#sort input file based on the first column data
sort -n -k 1 $1 > temp.txt 
echo "save sorted data to file temp.txt" #display result filename
