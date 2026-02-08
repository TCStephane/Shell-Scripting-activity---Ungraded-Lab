#!/bin/bash

VAULT="$HOME/secure_vault"
REPORT="$VAULT/vault_report.txt"

> "$REPORT"

for file in "$VAULT"/*; do
    name=$(basename "$file")
    size=$(stat -c %s "$file")
    modified=$(stat -c %y "$file")
    perm=$(stat -c %a "$file")

    echo "File: $name" >> "$REPORT"
    echo "Size: $size bytes" >> "$REPORT"
    echo "Last Modified: $modified" >> "$REPORT"
    echo "Permissions: $perm" >> "$REPORT"

    if [[ "$perm" -gt 644 ]]; then
        echo "⚠️ SECURITY RISK DETECTED" >> "$REPORT"
    fi

    echo "------------------------" >> "$REPORT"
done

echo "✅ Vault security report created at $REPORT"

