#!/bin/sh

echo num1:
read num1
echo num2
read num2

let re=num1+num2
echo "add:=$re"

echo "add:=$((num1+num2))"

expr $num1 + $num2


