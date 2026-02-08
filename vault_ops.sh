#!/bin/bash

VAULT="$HOME/secure_vault"

while true; do
    echo
    echo "===== Secure Vault Menu ====="
    echo "1) Add Secret"
    echo "2) Update Secret"
    echo "3) Add Log Entry"
    echo "4) Access Keys"
    echo "5) Exit"
    read -p "Choose an option: " choice

    case "$choice" in
        1)
            read -p "Enter new secret: " secret
            echo "$secret" >> "$VAULT/secrets.txt"
            echo "Secret added."
            ;;
        2)
            read -p "Enter text to replace: " old
            read -p "Enter new text: " new

            if grep -q "$old" "$VAULT/secrets.txt"; then
                sed -i "s/$old/$new/g" "$VAULT/secrets.txt"
                echo "Secret updated."
            else
                echo "No match found."
            fi
            ;;
        3)
            echo "$(date '+%Y-%m-%d %H:%M:%S') - Log entry added" >> "$VAULT/logs.txt"
            echo "Log entry saved."
            ;;
        4)
            echo "ACCESS DENIED 🚫"
            ;;
        5)
            echo "Exiting Secure Vault."
            break
            ;;
        *)
            echo "Invalid option."
            ;;
    esac
done

