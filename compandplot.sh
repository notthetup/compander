#!/bin/bash

input=`echo $1 | sed 's/^\([0-9.,-]*\)[ ]\([0-9,-]*\)[ ].*/ \2 /'`

input="-80,-80,-50,-20,-20,-15,0,0";
outputfile="compand.dat"
gnuplotfile="compand.plt"

printf "#\tX\tY\n" > $outputfile

IFS=',';
count=$((0));
for value in $input; do
    offset=$((count%2));
if [ $offset == 0 ]; then
    invalue=$value;
else
    printf "\t$invalue\t$value\n" >> $outputfile
fi
count=$(($count+1));
done

echo "call \"$gnuplotfile\" \"'.'\" \"'$outputfile'\"" | gnuplot

rm $outputfile


