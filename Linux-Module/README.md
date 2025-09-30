# Linux Moduke
This folder contains my notes, exercises and reflections from the **Linux moduke** of my DevOps learning journey.

---

## pin Contents
- Bandit challenge notes
- Linux commands
- Reflections on what I've learned

 ---

 ## key Bandit Notes

### Level 0-1

Log into the game using SSH (port 2220):

```bash
ssh bandit0@bandit.labs.overthewire.org -p 2220
-p is needed to specify a custom port for the ssh connection. By default SSH connects to port 22. Without -p 2220 the client would try port 22.

To read the contents of a file:

bash
Copy code
cat <filename>
### Level 1-2
To read a file named - (a single dash), prefix it with ./ so the shell treats it as a name, not an option:

bash
Copy code
cat ./-
### Level 2-3
To read a file with spaces in the filename, wrap the name in quotes:

bash
Copy code
cat "spaces in this filename"
### Level 3-4
To show hidden files (and all files) in a directory:

bash
Copy code
ls -la
### Level 4-5
To determine file types for many files (e.g., to find human-readable files):

bash
Copy code
file ./*
ASCII text in file output means it’s human readable.

### Level 5-6
Find a file in the current directory (and subdirectories) that meets all three conditions:

human readable

1033 bytes in size

not executable

bash
Copy code
find . -type f -size 1033c ! -executable -exec file {} \; | grep "ASCII text"
Explanation:

-type f — only regular files

-size 1033c — file size is 1033 bytes (c = bytes)

! -executable — file is not executable

-exec file {} \; — check file type

| grep "ASCII text" — filter for human-readable files

Hidden files start with a dot (.).

### Level 6-7
Find a file with specific ownership and size (run from home directory):

owned by user: bandit7

owned by group: bandit6

exactly 33 bytes

bash
Copy code
find / -type f -user bandit7 -group bandit6 -size 33c 2>/dev/null
Explanation:

find / — search whole filesystem

2>/dev/null — hide permission-denied errors

### Level 7-8
Find a word in a file. Example: find the word millionth in data.txt:

bash
Copy code
grep millionth data.txt
If the password is on the line after the match, show the match and the next line:

bash
Copy code
grep -A 1 millionth data.txt
-A 1 shows 1 line After the matching line.

### Level 8-9
Show lines that occur only once in a file (useful for isolating unique lines):

bash
Copy code
sort data.txt | uniq -u
sort puts identical lines next to each other.

uniq -u prints only the lines that are unique.

The | pipes output from one command into another.

### Level 9-10
Extract human-readable text from a binary-like file then search for lines containing =:

bash
Copy code
strings data.txt | grep '='
strings pulls out readable text from binary-like files.

grep '=' filters results to those that contain =.

### Level 10-11
Decode a file containing base64-encoded data:

bash
Copy code
base64 -d data.txt
# or
cat data.txt | base64 -d
Notes:

base64 without -d will encode; use -d to decode.

cat data.txt | base64 -d pipes the file contents into the decoder.

### Level 11-12
Decode ROT13-encoded text (letters rotated by 13 positions):

bash
Copy code
cat data.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m'
tr translates characters: 'A-Za-z' selects letters; 'N-ZA-Mn-za-m' shifts each letter by 13.

### Level 12-13
Level summary

File: data.txt

Contents: a hex dump of a file that has been repeatedly compressed.

You need to:

Convert hex back to binary

Decompress through several layers

Reveal the password

# Tools commonly used:

xxd — convert hex dump back to binary

file — detect file type

mv, cp — rename/copy

mkdir, mktemp -d — create a safe temporary directory

Decompression tools: gzip, bzip2, tar, etc.

Workflow hint: repeat file → rename → decompress until you extract the password.
