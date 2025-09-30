🐚 Bash Cheatsheet



A quick reference for Bash scripting basics and useful one-liners.



📝 Script Basics

• #!/bin/bash → shebang line (defines interpreter)

• echo "Hello World" → print text

• # → comment



📦 Variables



name=“Mabsuud”

echo “Hello, $name”

• $VAR → access variable

• export VAR=value → make variable available to child processes



📂 File Handling

• cat file.txt → print file contents

• > file.txt → overwrite file

• >> file.txt → append to file

• wc -l file.txt → count lines



🛠️ Useful Tricks

• $(command) → command substitution

Example:

files=$(ls)

echo $files

• $? → exit status of last command

• && and || → run commands conditionally

