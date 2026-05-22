#!/bin/bash

VAULT_PASSWORD_FILE=".vault_password"

case "$1" in
    "encrypt")
        ansible-vault encrypt "$2" --vault-password-file "$VAULT_PASSWORD_FILE"
        ;;
    "decrypt")
        ansible-vault decrypt "$2" --vault-password-file "$VAULT_PASSWORD_FILE"
        ;;
    "view")
        ansible-vault view "$2" --vault-password-file "$VAULT_PASSWORD_FILE"
        ;;
    "status")
        echo "=== Vault File Status ==="
        find . -name "*.yml" -type f | while read file; do
            if head -1 "$file" 2>/dev/null | grep -q "ANSIBLE_VAULT"; then
                echo "✓ $file (encrypted)"
            else
                echo "○ $file (plain text)"
            fi
        done
        ;;
    *)
        echo "Usage: $0 {encrypt|decrypt|view|status} [file]"
        ;;
esac
