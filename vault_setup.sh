#!/bin/bash

VAULT="$HOME/secure_vault"

mkdir -p "$VAULT"

echo "Welcome to the Secure Vault - Keys File" > "$VAULT/keys.txt"
echo "Welcome to the Secure Vault - Secrets File" > "$VAULT/secrets.txt"
echo "Welcome to the Secure Vault - Logs File" > "$VAULT/logs.txt"

echo "✅ Secure Vault setup completed successfully!"
ls -l "$VAULT"
