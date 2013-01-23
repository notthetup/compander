#!/bin/bash

filename=${1%%.*}
extension=${1##*.}
outputname="$filename"_levelled.$extension

sox $1 $outputname highpass 80 lowpass 8000 compand 0.01,1 -80,-80,-55,-20,-20,-15,0,0 0 -40 0.1 norm -0.5