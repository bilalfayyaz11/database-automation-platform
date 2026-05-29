# Service Troubleshooting Operations

## Overview

This project demonstrates enterprise Linux service troubleshooting, log analysis, network diagnostics, and automated health validation using systemd, journalctl, NetworkManager, and Bash scripting on CentOS Stream 9.

## Objectives

- Diagnose service failures
- Analyze logs with journalctl
- Investigate systemd services
- Troubleshoot network connectivity
- Validate DNS resolution
- Monitor critical services
- Automate operational health checks

## Components

### Failing Service Investigation

A custom systemd service was intentionally configured to fail and then repaired through structured troubleshooting.

### Journal Analysis

Service failures were investigated using:

- journalctl
- systemctl status
- service metadata inspection

### Network Diagnostics

Validation included:

- IP configuration review
- Routing verification
- DNS troubleshooting
- NetworkManager inspection

### Health Check Automation

service-health-check.sh performs:

- Critical service validation
- Failed service detection
- Connectivity verification
- DNS validation
- Disk usage reporting
- Error log review

## Technologies

- CentOS Stream 9
- systemd
- journalctl
- NetworkManager
- Bash
- DNS Utilities
- Linux Networking

## Skills Demonstrated

- Linux Administration
- Service Troubleshooting
- Root Cause Analysis
- Log Investigation
- Operational Diagnostics
- Network Troubleshooting
- DNS Validation
- Health Monitoring
- Automation

## Example Commands

systemctl status service-name

journalctl -u service-name

journalctl -p err

nmcli device status

ip route show

nslookup google.com

## Real World Use Cases

- Production incident response
- Service outage investigation
- Linux platform support
- Infrastructure operations
- Site reliability engineering
- Enterprise system administration

## Key Takeaways

- Always validate service status first.
- Logs provide the fastest path to root cause identification.
- Network problems should be analyzed systematically.
- Automated health checks reduce operational risk.
- Structured troubleshooting improves incident resolution speed.
