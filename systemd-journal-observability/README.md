# Systemd Journal Observability

## Overview

This project demonstrates enterprise Linux log management, observability, troubleshooting, and monitoring using systemd-journald and journalctl on CentOS Stream 9.

## Key Capabilities

- Journal navigation and filtering
- Time-based log analysis
- Service-specific troubleshooting
- Error and warning investigation
- Persistent log storage configuration
- Journal retention management
- Log rotation policies
- Boot diagnostics
- Authentication investigation
- JSON log analysis
- Automated system health reporting
- Scheduled monitoring

## Components

### Health Check Script

system-health-check.sh

Provides:

- Journal disk usage reporting
- Critical error review
- Failed service detection
- Boot analysis
- Authentication investigation
- Resource warning review

### Journal Configuration Example

journald.conf.example

Demonstrates:

- Persistent storage
- Compression
- Retention controls
- Storage limits
- Rotation policies

## Technologies

- CentOS Stream 9
- systemd
- systemd-journald
- journalctl
- cron
- Bash

## Skills Demonstrated

- Linux Administration
- System Troubleshooting
- Log Analysis
- Incident Investigation
- Observability
- Monitoring
- Operational Diagnostics
- Systemd Administration

## Example Commands

```bash
journalctl -u sshd

journalctl -p err

journalctl --since "1 hour ago"

journalctl -k

journalctl --disk-usage
