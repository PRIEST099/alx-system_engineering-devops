# File Transfer Using SFTP

## Overview

This guide explains how I performed file transfers using Secure File Transfer Protocol (SFTP) for the following files in the local current directory:

1. 0-first_9_tasks.jpg
2. 0-first_9_tasks.png
3. 1-next_9_tasks.jpg
4. 1-next_9_tasks.png
5. 2-next_9_tasks.jpg
6. 2-next_9_tasks.png

## Steps

### Step 1: Open Terminal

Opend My terminal on My local machine.

### Step 2: Connect to the Remote Server

Used the following command to connect to the remote server via SFTP:

```bash
sftp 246f90b634db@246f90b634db.8ccf1b37.alx-cod.online
```

Entered my password when prompted.

### Step 3: Navigate to the Target Directory

Navigated to the target directory on the remote server where to upload the files:

```bash
cd /root/alx-system_engineering-devops/command_line_for_the_win/
```

### Step 4: Upload Files

I used the `put` command to upload each file individually. Since the files are in the current local directory, I used the following commands:

```bash
put 0-first_9_tasks.jpg
put 0-first_9_tasks.png
put 1-next_9_tasks.jpg
put 1-next_9_tasks.png
put 2-next_9_tasks.jpg
put 2-next_9_tasks.png
```

### Step 5: Verify Upload

After uploading all files, I used the `ls` command to verify that the files are present in the remote directory:

```bash
ls
```

### Step 6: Disconnect

To exit the remote server:

```bash
bye
```

