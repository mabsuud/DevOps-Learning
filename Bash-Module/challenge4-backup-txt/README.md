# 📁 Challenge 4 — Backup Script for Text Files (`backup_txt.sh`)

This script automates the process of backing up all `.txt` files from a specified source directory into a timestamped backup folder.

This is a practical DevOps-style task that demonstrates directory validation, file globbing, backups, timestamps, and file counting.

---

## 🧾 What the Script Does

1. **Prompts the user for a source directory**
   ```bash
   read -p "Enter source directory: " source_dir
Checks if the directory exists

bash
Copy code
[[ -d "$source_dir" ]]
Creates a backup directory with a timestamp

bash
Copy code
timestamp=$(date +"%Y-%m-%d_%H-%M")
backup_dir="backup_${timestamp}"
mkdir -p "$backup_dir"
Copies all .txt files into the backup folder

bash
Copy code
cp "$source_dir"/*.txt "$backup_dir/"
Counts how many files were backed up

bash
Copy code
file_count=$((file_count + 1))
Displays summary output

yaml
Copy code
Backup complete!
Files backed up: X
▶️ How to Run the Script
bash
Copy code
chmod +x backup_txt.sh
./backup_txt.sh
When prompted, enter a directory path containing .txt files, for example:

arduino
Copy code
/home/user/documents
💻 Example Output
yaml
Copy code
Enter source directory: /home/user/documents
Backup directory created: backup_2024-11-29_14-30
Copying .txt files...

Backup complete!
Files backed up: 5
🌱 Key Learnings
Directory validation using -d

Using timestamps to make unique backup folders

Globbing patterns (*.txt) to filter file types

Looping through files and counting them

Copying files programmatically using cp

💡 Challenge I Overcame
One challenge was correctly looping through .txt files when none existed.
By checking:

bash
Copy code
[[ -f "$file" ]]
I learned how to avoid errors when patterns match zero files — a common issue when automating backups and file scans.

This improved my understanding of safe, defensive scripting.

⚙️ Why This Matters in DevOps
Backup scripts are a core part of DevOps automation.
Tasks like config archiving, log rotation, artifact storage, and snapshot creation all rely on:

Directory structure management

Detecting file types

Handling timestamps

Automating system-level operations

This challenge builds real-world skills needed for DevOps automation tasks.

yaml
Copy code

---

# 🎯 Next Step

Upload:

- `backup_txt.sh`  
- `README.md`  

to a new folder:
