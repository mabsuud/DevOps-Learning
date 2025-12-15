# 📁 Challenge 2 — File Operations Script (`file_ops.sh`)

This script automates basic file and directory operations using Bash.  
It creates a folder, generates a file, writes a message containing the current date, and prints the file contents.  
This challenge reinforces essential Bash skills used frequently in DevOps workflows.

---

## 🧾 What the Script Does

1. **Creates a directory** named `bash_demo`  
   ```bash
   mkdir -p bash_demo
Navigates into the directory

bash
Copy code
cd bash_demo
Creates a file called demo.txt

bash
Copy code
touch demo.txt
Writes text + the current date into the file

bash
Copy code
current_date=$(date +"%Y-%m-%d")
echo "This file was created by a Bash script on $current_date" > demo.txt
Displays the file contents

bash
Copy code
cat demo.txt
▶️ How to Run the Script
From the folder where the script is stored:

bash
Copy code
chmod +x file_ops.sh
./file_ops.sh
💻 Example Output
csharp
Copy code
Directory 'bash_demo' created.
File 'demo.txt' created.

File contents:
This file was created by a Bash script on 2024-11-29
(Date will reflect the current system date.)

🌱 Key Learnings
Directory creation with mkdir

Navigating directories inside scripts (cd)

Creating and writing to files programmatically

Using the date command to include timestamps

Displaying file content using cat

💡 Challenge I Overcame
A key challenge in this task was understanding how Bash handles file redirection using >.

I learned that:

> overwrites the file

>> appends to the file

Practicing this helped solidify how scripts generate or modify files safely and predictably.

⚙️ Why This Matters in DevOps
File and directory automation is at the heart of DevOps.

These skills are used daily for:

Generating config files

Creating logs

Preparing deployment directories

Automating server setup

This challenge builds the foundation for more advanced automation tasks later on.
