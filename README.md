# CyberSec Ops: Secure Vault Challenge

## Project Description
This project is a Linux shell scripting lab that simulates a secure vault system.
The vault stores sensitive files, controls access using permissions, allows secure updates,
and monitors files for security risks.

The project is divided into four steps, each implemented using a Bash script.

---

## Step 1: Vault Setup (vault_setup.sh)
This script:
- Creates a directory called secure_vault in the user's home directory
- Creates three files inside the vault:
  - keys.txt
  - secrets.txt
  - logs.txt
- Adds a welcome message to each file using I/O redirection
- Displays a success message and lists the files with their details

---

## Step 2: Vault Permissions (vault_permissions.sh)
This script:
- Checks if the secure_vault directory exists
- Displays current file permissions
- Allows the user to update permissions or apply default secure permissions
- Uses a function to manage permission changes
- Displays final permissions for all files

---

## Step 3: Vault Operations (vault_ops.sh)
This script provides a menu-driven interface that allows the user to:
- Add secrets securely
- Update existing secrets
- Add timestamped log entries
- Prevent access to encryption keys
- Exit the program safely

---

## Step 4: Vault Monitoring (vault_monitor.sh)
This script:
- Scans all files in the secure vault
- Displays file name, size, last modified date, and permissions
- Detects insecure permissions
- Saves the results into vault_report.txt

---

## How to Run the Project

Make the scripts executable:
```bash
chmod +x *.sh

