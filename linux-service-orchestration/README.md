+------------------------------------------------------+
|                Linux System (CentOS 9)               |
+------------------------------------------------------+
|                                                      |
|  systemd (PID 1)                                     |
|      │                                               |
|      ├── multi-user.target                           |
|      │       ├── sshd.service                        |
|      │       ├── httpd.service                       |
|      │       ├── journald.service                    |
|      │       └── network.target                      |
|      │                                               |
|      ├── graphical.target                            |
|      │                                               |
|      ├── rescue.target                               |
|      └── emergency.target                            |
|                                                      |
+------------------------------------------------------+
                │
                ▼
+------------------------------------------------------+
|                Operational Tooling                   |
+------------------------------------------------------+
|                                                      |
|  systemctl        → Service lifecycle management     |
|  journalctl       → Centralized logging              |
|  systemd-analyze  → Boot performance diagnostics     |
|  curl             → HTTP endpoint validation         |
|  ss               → Network socket verification      |
|                                                      |
+------------------------------------------------------+
                │
                ▼
+------------------------------------------------------+
|              Web Service Validation                  |
+------------------------------------------------------+
|                                                      |
|  Apache HTTP Server (httpd)                          |
|      ├── Port 80 listener                            |
|      ├── Custom HTML deployment                      |
|      ├── Runtime monitoring                          |
|      └── Failure recovery validation                 |
|                                                      |
+------------------------------------------------------+
