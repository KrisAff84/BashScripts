#!/usr/local/bin/bash
read MATH_EXPRESSION

# display result of the expression rounded to 3 decimal places
printf "%.3f\n" $(echo $MATH_EXPRESSION | bc -l)

