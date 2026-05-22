# Secure Ansible Secret Management with Vault

## What This Does
This implementation demonstrates how to protect sensitive automation data using Ansible Vault. It encrypts database credentials, API keys, service passwords, and mixed variable files while still allowing playbooks to consume those secrets securely during deployment. The build also includes a small vault management script for checking encryption status and handling common vault operations.

## Architecture
```text
+-----------------------------+
|        Ansible Playbook     |
| secure_deployment.yml       |
+--------------+--------------+
               |
               v
+-----------------------------+
|       Encrypted Vault Vars  |
| database/user/api secrets   |
+--------------+--------------+
               |
               v
+-----------------------------+
|      Jinja2 Templates       |
| database.conf / api.conf    |
+--------------+--------------+
               |
               v
+-----------------------------+
| Secure Runtime Config Files |
| /tmp/app-config/*.conf      |
+-----------------------------+

+-----------------------------+
| Vault Management Script     |
| encrypt/view/status checks  |
+-----------------------------+
