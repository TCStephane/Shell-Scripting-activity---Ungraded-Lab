#!/usr/bin/bash

VAULT="$HOME/secure_vault"

if [[ ! -d "$VAULT" ]]; then
    echo "Error: secure_vault does not exist."
    exit 1
fi

update_permission() {
    file="$1"
    default_perm="$2"

    echo
    echo "Current permissions for $file:"
    ls -l "$VAULT/$file"

    read -p "Do you want to update permissions? (y/n): " choice

    if [[ "$choice" == "y" ]]; then
        read -p "Enter new permission (e.g., 600): " perm
        chmod "$perm" "$VAULT/$file"
    elif [[ -z "$choice" ]]; then
        chmod "$default_perm" "$VAULT/$file"
        echo "Default permission $default_perm applied."
    else
        echo "Permissions unchanged."
    fi
}

update_permission "keys.txt" 600
update_permission "secrets.txt" 640
update_permission "logs.txt" 644

echo
echo "🔍 Final file permissions:"
ls -l "$VAULT"

