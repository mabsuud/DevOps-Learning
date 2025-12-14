# 🧮 Basic Arithmetic Script — `arithmetic.sh`

This script is a small Bash exercise that practices user input, variables, arithmetic operations, and basic error handling.

The script:

- Prompts the user for **two numbers**
- Performs **addition, subtraction, multiplication, and division**
- Displays all results in a clear format
- Safely handles **division by zero**

---

## 📂 Script File

- `arithmetic.sh`

---

## 📝 What the Script Does

1. Asks the user for two numbers:
   ```bash
   read -p "Enter first number: " num1
   read -p "Enter second number: " num2

2. It uses Bash arithmetic expansion to calculate:

Sum → num1 + num2

Difference → num1 - num2

Product → num1 * num2

Before dividing, it checks if the second number is zero:

If num2 is 0, it prints a friendly message instead of crashing

Otherwise, it performs integer division with num1 / num2

Prints all four results in a readable format.

3. You run it with:
  chmod +x arithmetic.sh
  ./arithmetic.sh

💻 Example Run
Enter first number: 10
Enter second number: 5

Results:
10 + 5 = 15
10 - 5 = 5
10 × 5 = 50
10 ÷ 5 = 2


Division by zero example:

Enter first number: 10
Enter second number: 0

Results:
10 + 0 = 10
10 - 0 = 10
10 × 0 = 0
10 ÷ 0 = undefined (cannot divide by zero)

🌱 Key Learnings from This Exercise

Reading user input using read -p

Arithmetic expansion with $(( … ))

Conditional logic for safe division

Clear output formatting

Getting comfortable with variables in Bash

💡 Challenge I Overcame

A major challenge was understanding when to reference a variable using $ and how arithmetic expressions work.

This exercise helped reinforce:

How Bash stores values

When you need $

How integer operations behave

Why error handling (like division by zero) matters

⚙️ Why This Matters in DevOps

Even simple Bash scripts strengthen core automation skills:

Taking user input

Processing logic

Handling errors safely

Producing clear output

Bash is essential in DevOps for tasks like backups, monitoring, deployment scripts, and system automation.
Mastering small scripts lays the foundation for bigger DevOps workflows later.
