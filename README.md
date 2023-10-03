# CISC 225 Week 6 Exercises

Programming exercises for week 6.

## print-binary.asm

Print the 8-bit value in the AL register to the console in binary form.
The output should consist of eight bits represented in ASCII form.

## diff-abs-value.asm

Find the absolute value of *x - y* leaving the result in *abs*, where *x* are
*y* are initialized as quadwords, and *abs* is storage for the quadword result.

## print-hexadecimal.asm

Print the value of the quadword stored at *number* to the console in
hexadecimal form. The output should consist of sixteen hexdigits represented
in ASCII form.

## sum-positive.asm

Calculate the sum of the positive values in the quadword array at *array1*.
Leave the sum in the quadword at *sum*. The program should simply store the
sum and produce no output.

## tally-plus-minus.asm

Produce a count of the positive and negative values in the quadword array at
*array1*. Counts should be placed in memory at quadword locations
*count_positive* and *count_negative*. Include zero in the count of
positive values. The program should produce no output.