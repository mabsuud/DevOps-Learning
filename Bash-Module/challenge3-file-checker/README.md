# 📁 Challenge 3 — File Checker with Permissions (`file_checker.sh`)

This script prompts the user for a filename, checks whether the file exists, and displays its permissions (read, write, execute).  
It is a practical exercise in working with file tests, user input, and conditional logic in Bash.

---

## 🧾 What the Script Does

1. **Prompts the user for a filename**
   ```bash
   read -p "Enter filename to check: " filename
Checks if the file exists

bash
Copy code
[[ -e "$filename" ]]
If the file exists, it checks:

Readable? (-r)

Writable? (-w)

Executable? (-x)

Prints ✓ or ✗ depending on each permission.

▶️ How to Run
bash
Copy code
chmod +x file_checker.sh
./file_checker.sh
When prompted, enter the path to any file, such as:

bash
Copy code
/etc/passwd
/demo.txt
bash_demo/demo.txt
💻 Example Output
pgsql
Copy code
Enter filename to check: /etc/passwd

File '/etc/passwd' exists.
✓ File is readable
✗ File is not writable
✗ File is not executable
🌱 Key Learnings
File existence checks using -e

Permission testing:

-r → readable

-w → writable

-x → executable

Using nested conditional blocks for clean logic

User input handling with read -p

Producing user-friendly output with symbols and clear messages

💡 Challenge I Overcame
At first, understanding Bash’s file test operators (-r, -w, -x, -e) was confusing.
Through this challenge, I learned exactly how Bash evaluates permissions and how to build readable, structured permission checks.

This strengthened my understanding of Linux file security and user permissions.

⚙️ Why This Matters in DevOps
File permissions are crucial in DevOps because:

Scripts must only run when readable/executable

CI/CD pipelines manage config files, SSH keys, logs, and secrets

Deployment automation often checks file states before proceeding

Being able to verify file permissions programmatically is an essential DevOps automation skill.
