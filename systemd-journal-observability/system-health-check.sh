#!/bin/bash

echo "=== System Health Report ==="
echo "Generated on: $(date)"
echo "Hostname: $(hostname)"
echo

echo "=== Journal Disk Usage ==="
journalctl --disk-usage
echo

echo "=== Recent Critical Errors ==="
journalctl -p crit --since "24 hours ago" --no-pager
echo

echo "=== Failed Services ==="
systemctl --failed
echo

echo "=== Recent Boot Information ==="
journalctl -b --no-pager | head -20
echo

echo "=== Authentication Failures ==="
journalctl --since "24 hours ago" | grep -i "authentication failure" | tail -10
echo

echo "=== Resource Warnings ==="
journalctl --since "24 hours ago" | grep -i "memory\\|disk\\|cpu" | grep -i "warning\\|error" | tail -10
echo

echo "=== Report Complete ==="
