#!/bin/bash

# Prompt the user for two numbers
read -p "Enter first number: " num1
read -p "Enter second number: " num2

echo

# Perform addition
sum=$((num1 + num2))

# Perform subtraction
difference=$((num1 - num2))

# Perform multiplication
product=$((num1 * num2))

# Perform division with zero check
if [[ "$num2" -eq 0 ]]; then
    division="undefined (cannot divide by zero)"
else
    division=$((num1 / num2))
fi

# Display results
echo "Results:"
echo "$num1 + $num2 = $sum"
echo "$num1 - $num2 = $difference"
echo "$num1 × $num2 = $product"
echo "$num1 ÷ $num2 = $division"
