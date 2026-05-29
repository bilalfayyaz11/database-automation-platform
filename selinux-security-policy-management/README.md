# SELinux Security Policy Management and Troubleshooting

## What This Does

This implementation demonstrates enterprise-grade SELinux administration on CentOS Stream 9. The work covers SELinux status analysis, mode management, security context inspection, audit log investigation, policy troubleshooting, context restoration, custom file labeling, boolean inspection, and application-specific SELinux policy management. The objective is to maintain a hardened Linux environment while ensuring applications function correctly under mandatory access control enforcement.

## Architecture

```text
+------------------------------------------------+
|                 Linux Host                     |
+------------------------+-----------------------+
                         |
                         v
+------------------------------------------------+
|                    SELinux                     |
|------------------------------------------------|
| Policy Type: targeted                          |
| Enforcement Mode: enforcing                    |
+------------------------+-----------------------+
                         |
         +---------------+---------------+
         |                               |
         v                               v
+-------------------+        +-------------------+
| File Contexts     |        | Process Contexts  |
|-------------------|        |-------------------|
| httpd_sys_content |        | httpd_t           |
| passwd_file_t     |        | sshd_t            |
| bin_t             |        | user domains      |
| var_t             |        | system domains    |
+-------------------+        +-------------------+
         |                               |
         +---------------+---------------+
                         |
                         v
+------------------------------------------------+
|            Audit & Troubleshooting             |
|------------------------------------------------|
| ausearch                                       |
| audit2allow                                    |
| restorecon                                     |
| semanage                                       |
| sealert                                        |
+------------------------------------------------+
