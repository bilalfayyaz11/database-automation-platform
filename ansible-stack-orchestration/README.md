# Ansible Multi-Tier Stack Orchestration

## What This Does
This build automates the deployment of a multi-tier application stack using Ansible orchestration. It provisions a MariaDB database layer, Apache/PHP application layer, HAProxy reverse proxy, and basic monitoring workflow through structured playbooks. The system demonstrates deployment sequencing, dependency handling, service validation, and real-world troubleshooting across CentOS Stream 9.

## Architecture
```text
+-----------------------------+
|        Client Request       |
+-------------+---------------+
              |
              v
+-----------------------------+
|      HAProxy Reverse Proxy  |
|      Frontend: 8080         |
|      Stats: 8081            |
+-------------+---------------+
              |
              v
+-----------------------------+
|      Apache + PHP App       |
|      /webapp endpoint       |
+-------------+---------------+
              |
              v
+-----------------------------+
|       MariaDB Database      |
|       webapp_db             |
+-----------------------------+

+-----------------------------+
| Monitoring Script + Cron    |
| system-status.sh            |
+-----------------------------+
