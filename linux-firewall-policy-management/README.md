# Linux Firewall Policy Management with firewalld

## What This Does
This implementation configures and validates host-based firewall policies using firewalld on CentOS Stream 9. It manages services, ports, zones, interface assignments, source-based access controls, custom service definitions, denied-traffic logging, and rich rules. The setup demonstrates how Linux systems enforce network access policies in production environments. This is useful for securing servers, reducing attack surface, and validating firewall behavior before exposing services.

## Architecture

```text
+-----------------------------+
|        External Network     |
+--------------+--------------+
               |
               v
+-----------------------------+
|      ens5 Network Interface |
+--------------+--------------+
               |
               v
+-----------------------------+
|     firewalld Public Zone   |
|  - ssh                      |
|  - http                     |
|  - https                    |
|  - myapp                    |
|  - 8080/tcp                 |
|  - 53/udp                   |
+--------------+--------------+
               |
               v
+-----------------------------+
|     Local Linux Services    |
|  - SSH Administration       |
|  - Python HTTP Test Server  |
|  - Custom myapp Service     |
+-----------------------------+
