# 🐧 Linux Cheatsheet



A quick reference for common Linux commands I’ve used during the Bandit game and Linux module.



---



## 🔑 File & Directory Navigation

- `pwd` → print current working directory  

- `ls -la` → list files (including hidden) with details  

- `cd <dir>` → change directory  

- `mkdir <dir>` → create new directory  

- `rmdir <dir>` → remove empty directory  



---



## 📂 File Operations

- `cat <file>` → view file contents  

- `cp <src> <dest>` → copy file  

- `mv <src> <dest>` → move/rename file  

- `rm <file>` → delete file  



---



## 🔍 Search & Find

- `find <path> -name <filename>` → find a file by name  

- `find <path> -size 1033c` → find file of exact size (1033 bytes)  

- `grep <word> <file>` → search for a word in a file  

- `sort <file> | uniq -u` → find unique lines  



---



## ⚙️ Permissions

- `ls -l` → show file permissions  

- `chmod +x <file>` → make a file executable  

- `chown <user>:<group> <file>` → change file owner  



---



## 🔒 SSH & Networking

- `ssh user@host -p <port>` → connect to a server via SSH  

- `scp <file> user@host:/path` → copy file to remote server  



---



## 🛠️ Useful Tools

- `file <file>` → detect file type  

- `strings <file>` → extract human-readable text from binary files  

- `base64 -d <file>` → decode base64  

- `xxd -r -p <file>` → convert hex dump back to binary  



---



✨ I’ll keep updating this cheatsheet as I learn more Linux commands.
